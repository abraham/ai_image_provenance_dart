import 'dart:async';
import 'dart:typed_data';

import 'package:ai_image_provenance/src/c2pa/ai_use_assessor.dart';
import 'package:ai_image_provenance/src/c2pa/c2pa_dart_validator.dart';
import 'package:ai_image_provenance/src/c2pa/c2pa_validator.dart';
import 'package:ai_image_provenance/src/containers/image_format_sniffer.dart';
import 'package:ai_image_provenance/src/exceptions/empty_image_exception.dart';
import 'package:ai_image_provenance/src/exceptions/image_too_large_exception.dart';
import 'package:ai_image_provenance/src/exceptions/unsupported_image_format_exception.dart';
import 'package:ai_image_provenance/src/metadata/provenance_metadata_reader.dart';
import 'package:ai_image_provenance/src/models/image_format.dart';
import 'package:ai_image_provenance/src/models/image_provenance_report.dart';
import 'package:ai_image_provenance/src/models/inspection_options.dart';
import 'package:ai_image_provenance/src/models/inspection_warning.dart';
import 'package:ai_image_provenance/src/models/inspection_warning_code.dart';
import 'package:ai_image_provenance/src/models/provenance_metadata.dart';
import 'package:ai_image_provenance/src/models/watermark_detection.dart';
import 'package:ai_image_provenance/src/models/watermark_finding.dart';
import 'package:ai_image_provenance/src/watermarks/ai_watermark_detector.dart';
import 'package:ai_image_provenance/src/watermarks/watermark_detection_context.dart';
import 'package:ai_image_provenance/src/watermarks/watermark_status_aggregator.dart';

/// Inspects encoded image bytes for AI-generation and AI-editing evidence.
final class AiImageProvenanceInspector {
  /// Creates an inspector.
  ///
  /// Defaults to [C2paDartValidator] for C2PA validation. No watermark
  /// detectors or metadata readers are configured by default; the package
  /// does not ship concrete implementations of either extension point.
  AiImageProvenanceInspector({
    C2paValidator? c2paValidator,
    this.watermarkDetectors = const [],
    this.metadataReaders = const [],
  }) : c2paValidator = c2paValidator ?? C2paDartValidator();

  /// Validates C2PA Content Credentials.
  final C2paValidator c2paValidator;

  /// Detectors consulted for watermark evidence.
  final List<AiWatermarkDetector> watermarkDetectors;

  /// Readers consulted for additional provenance metadata.
  final List<ProvenanceMetadataReader> metadataReaders;

  /// Inspects [bytes] and returns a structured provenance report.
  ///
  /// [declaredMediaType] is a hint; it never overrides the sniffed
  /// container format.
  Future<ImageProvenanceReport> inspect(
    Uint8List bytes, {
    String? declaredMediaType,
    InspectionOptions? options,
  }) async {
    options ??= InspectionOptions();
    if (bytes.isEmpty) throw const EmptyImageException();
    if (bytes.length > options.maxBytes) {
      throw ImageTooLargeException(
        byteLength: bytes.length,
        maxBytes: options.maxBytes,
      );
    }

    final format = sniffImageFormat(bytes);
    if (format == ImageFormat.unknown) {
      throw const UnsupportedImageFormatException();
    }

    final warnings = <InspectionWarning>[
      ...?_declaredMediaTypeMismatch(declaredMediaType, format),
    ];

    final contentCredentials = await c2paValidator.validate(
      bytes,
      format: format,
    );

    final metadata = <ProvenanceMetadata>[];
    for (final reader in metadataReaders) {
      metadata.addAll(await reader.read(bytes, format: format));
    }

    final findings = await _runDetectors(bytes, format, options, warnings);

    return ImageProvenanceReport(
      format: format,
      aiUse: assessAiUse(contentCredentials),
      watermarkStatus: aggregateWatermarkStatus(findings),
      contentCredentials: contentCredentials,
      metadata: metadata,
      watermarks: findings,
      warnings: warnings,
    );
  }

  Future<List<WatermarkFinding>> _runDetectors(
    Uint8List bytes,
    ImageFormat format,
    InspectionOptions options,
    List<InspectionWarning> warnings,
  ) async {
    final findings = <WatermarkFinding>[];
    for (final detector in watermarkDetectors) {
      if (!detector.supportedFormats.contains(format)) continue;
      final context = WatermarkDetectionContext(
        timeout: options.detectorTimeout,
      );
      try {
        final detection = await detector
            .detect(bytes, format: format, context: context)
            .timeout(options.detectorTimeout);
        findings.add(
          WatermarkFinding(
            detectorId: detector.id,
            detectorVersion: detector.version,
            detection: detection,
          ),
        );
      } on TimeoutException {
        warnings.add(
          InspectionWarning(
            code: InspectionWarningCode.detectorTimedOut,
            message: 'Watermark detector ${detector.id} timed out',
          ),
        );
        findings.add(
          WatermarkFinding(
            detectorId: detector.id,
            detectorVersion: detector.version,
            detection: const WatermarkDetection.inconclusive('timed out'),
          ),
        );
      } on Object {
        warnings.add(
          InspectionWarning(
            code: InspectionWarningCode.detectorFailed,
            message: 'Watermark detector ${detector.id} failed',
          ),
        );
        findings.add(
          WatermarkFinding(
            detectorId: detector.id,
            detectorVersion: detector.version,
            detection: const WatermarkDetection.inconclusive('detector error'),
          ),
        );
      }
    }
    return findings;
  }

  List<InspectionWarning>? _declaredMediaTypeMismatch(
    String? declaredMediaType,
    ImageFormat sniffedFormat,
  ) {
    if (declaredMediaType == null) return null;
    const mimeTypesByFormat = {
      ImageFormat.jpeg: 'image/jpeg',
      ImageFormat.png: 'image/png',
      ImageFormat.webp: 'image/webp',
    };
    if (mimeTypesByFormat[sniffedFormat] == declaredMediaType) return null;
    return [
      InspectionWarning(
        code: InspectionWarningCode.declaredMediaTypeMismatch,
        message:
            'Declared media type $declaredMediaType did not match the '
            'detected format $sniffedFormat',
      ),
    ];
  }
}
