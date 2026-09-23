import 'dart:async';
import 'dart:typed_data';

import 'package:ai_image_provenance/ai_image_provenance.dart';
import 'package:test/test.dart';

import 'fixtures/test_images.dart';

final class _FakeValidator implements C2paValidator {
  _FakeValidator(this.report);

  final ContentCredentialReport report;

  @override
  Future<ContentCredentialReport> validate(
    Uint8List bytes, {
    required ImageFormat format,
  }) async => report;
}

final class _FakeDetector implements AiWatermarkDetector {
  _FakeDetector({
    required this.id,
    this.detection,
    this.error,
    this.delay = Duration.zero,
    this.formats = const {ImageFormat.jpeg, ImageFormat.png},
  });

  @override
  final String id;

  @override
  String get version => '1.0.0';

  @override
  WatermarkExecution get execution => WatermarkExecution.local;

  final Set<ImageFormat> formats;

  @override
  Set<ImageFormat> get supportedFormats => formats;

  final WatermarkDetection? detection;
  final Object? error;
  final Duration delay;

  @override
  Future<WatermarkDetection> detect(
    Uint8List bytes, {
    required ImageFormat format,
    required WatermarkDetectionContext context,
  }) async {
    if (delay > Duration.zero) await Future<void>.delayed(delay);
    if (error != null) throw error!;
    return detection!;
  }
}

final class _FakeReader implements ProvenanceMetadataReader {
  _FakeReader(this.metadata);

  final List<ProvenanceMetadata> metadata;

  @override
  Future<List<ProvenanceMetadata>> read(
    Uint8List bytes, {
    required ImageFormat format,
  }) async => metadata;
}

const _absentReport = ContentCredentialReport(
  status: ContentCredentialStatus.absent,
);

void main() {
  group('input validation', () {
    final inspector = AiImageProvenanceInspector(
      c2paValidator: _FakeValidator(_absentReport),
    );

    test('throws EmptyImageException for empty bytes', () {
      expect(
        () => inspector.inspect(Uint8List(0)),
        throwsA(isA<EmptyImageException>()),
      );
    });

    test('throws ImageTooLargeException over the configured limit', () {
      expect(
        () => inspector.inspect(
          minimalJpegBytes(),
          options: InspectionOptions(maxBytes: 1),
        ),
        throwsA(isA<ImageTooLargeException>()),
      );
    });

    test('throws UnsupportedImageFormatException for unrecognized bytes', () {
      expect(
        () => inspector.inspect(notAnImageBytes()),
        throwsA(isA<UnsupportedImageFormatException>()),
      );
    });
  });

  group('content credentials and AI-use', () {
    test('a validator-reported absent manifest is unknown/unknown', () async {
      final inspector = AiImageProvenanceInspector(
        c2paValidator: _FakeValidator(_absentReport),
      );
      final report = await inspector.inspect(minimalJpegBytes());
      expect(report.format, ImageFormat.jpeg);
      expect(report.contentCredentials, _absentReport);
      expect(report.aiUse.classification, AiUseClassification.unknown);
    });

    test('a trusted, AI-generated manifest is generated/trusted', () async {
      final inspector = AiImageProvenanceInspector(
        c2paValidator: _FakeValidator(
          const ContentCredentialReport(
            status: ContentCredentialStatus.validTrusted,
            digitalSourceType: DigitalSourceType.trainedAlgorithmicMedia,
          ),
        ),
      );
      final report = await inspector.inspect(minimalJpegBytes());
      expect(report.aiUse.classification, AiUseClassification.generated);
      expect(report.aiUse.trust, EvidenceTrust.trusted);
    });
  });

  group('declared media type', () {
    test('a matching declared media type produces no warning', () async {
      final inspector = AiImageProvenanceInspector(
        c2paValidator: _FakeValidator(_absentReport),
      );
      final report = await inspector.inspect(
        minimalJpegBytes(),
        declaredMediaType: 'image/jpeg',
      );
      expect(report.warnings, isEmpty);
    });

    test('a mismatched declared media type produces a warning', () async {
      final inspector = AiImageProvenanceInspector(
        c2paValidator: _FakeValidator(_absentReport),
      );
      final report = await inspector.inspect(
        minimalJpegBytes(),
        declaredMediaType: 'image/png',
      );
      expect(report.warnings, hasLength(1));
      expect(
        report.warnings.single.code,
        InspectionWarningCode.declaredMediaTypeMismatch,
      );
    });
  });

  group('watermark detectors', () {
    test('no configured detectors is notChecked', () async {
      final inspector = AiImageProvenanceInspector(
        c2paValidator: _FakeValidator(_absentReport),
      );
      final report = await inspector.inspect(minimalJpegBytes());
      expect(report.watermarkStatus, WatermarkStatus.notChecked);
      expect(report.watermarks, isEmpty);
    });

    test('an unsupported-format detector is skipped entirely', () async {
      final inspector = AiImageProvenanceInspector(
        c2paValidator: _FakeValidator(_absentReport),
        watermarkDetectors: [
          _FakeDetector(
            id: 'webp-only',
            formats: {ImageFormat.webp},
            detection: const WatermarkDetection.detected(algorithm: 'x'),
          ),
        ],
      );
      final report = await inspector.inspect(minimalJpegBytes());
      expect(report.watermarkStatus, WatermarkStatus.notChecked);
      expect(report.watermarks, isEmpty);
    });

    test('a detected watermark is attributed to its detector', () async {
      final inspector = AiImageProvenanceInspector(
        c2paValidator: _FakeValidator(_absentReport),
        watermarkDetectors: [
          _FakeDetector(
            id: 'detector-a',
            detection: const WatermarkDetection.detected(algorithm: 'x'),
          ),
        ],
      );
      final report = await inspector.inspect(minimalJpegBytes());
      expect(report.watermarkStatus, WatermarkStatus.detected);
      expect(report.watermarks.single.detectorId, 'detector-a');
    });

    test('every detector reporting notDetected is notDetected', () async {
      final inspector = AiImageProvenanceInspector(
        c2paValidator: _FakeValidator(_absentReport),
        watermarkDetectors: [
          _FakeDetector(
            id: 'detector-a',
            detection: const WatermarkDetection.notDetected(),
          ),
        ],
      );
      final report = await inspector.inspect(minimalJpegBytes());
      expect(report.watermarkStatus, WatermarkStatus.notDetected);
    });

    test(
      'a detector that times out becomes inconclusive with a warning',
      () async {
        final inspector = AiImageProvenanceInspector(
          c2paValidator: _FakeValidator(_absentReport),
          watermarkDetectors: [
            _FakeDetector(
              id: 'slow',
              detection: const WatermarkDetection.notDetected(),
              delay: const Duration(milliseconds: 50),
            ),
          ],
        );
        final report = await inspector.inspect(
          minimalJpegBytes(),
          options: InspectionOptions(
            detectorTimeout: const Duration(milliseconds: 1),
          ),
        );
        expect(report.watermarkStatus, WatermarkStatus.inconclusive);
        expect(
          report.warnings.single.code,
          InspectionWarningCode.detectorTimedOut,
        );
      },
    );

    test(
      'a detector that throws is reported as a warning, not a failure',
      () async {
        final inspector = AiImageProvenanceInspector(
          c2paValidator: _FakeValidator(_absentReport),
          watermarkDetectors: [
            _FakeDetector(id: 'broken', error: StateError('boom')),
          ],
        );
        final report = await inspector.inspect(minimalJpegBytes());
        expect(report.watermarkStatus, WatermarkStatus.inconclusive);
        expect(
          report.warnings.single.code,
          InspectionWarningCode.detectorFailed,
        );
      },
    );
  });

  group('metadata readers', () {
    test(
      'metadata from configured readers is included in the report',
      () async {
        final inspector = AiImageProvenanceInspector(
          c2paValidator: _FakeValidator(_absentReport),
          metadataReaders: [
            _FakeReader(const [
              ProvenanceMetadata(
                source: MetadataSource.extension,
                fieldName: 'example',
                value: 'value',
                trust: EvidenceTrust.heuristic,
              ),
            ]),
          ],
        );
        final report = await inspector.inspect(minimalJpegBytes());
        expect(report.metadata, hasLength(1));
        expect(report.metadata.single.fieldName, 'example');
      },
    );
  });
}
