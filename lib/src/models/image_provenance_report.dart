import 'package:collection/collection.dart';

import 'package:ai_image_provenance/src/models/ai_use_assessment.dart';
import 'package:ai_image_provenance/src/models/content_credential_report.dart';
import 'package:ai_image_provenance/src/models/image_format.dart';
import 'package:ai_image_provenance/src/models/inspection_warning.dart';
import 'package:ai_image_provenance/src/models/provenance_metadata.dart';
import 'package:ai_image_provenance/src/models/watermark_finding.dart';
import 'package:ai_image_provenance/src/models/watermark_status.dart';

const _listEquality = ListEquality<Object?>();

/// Structured report describing AI-generation and AI-editing evidence found
/// in an image.
final class ImageProvenanceReport {
  /// Creates an immutable image provenance report.
  const ImageProvenanceReport({
    required this.format,
    required this.aiUse,
    required this.watermarkStatus,
    required this.contentCredentials,
    required this.metadata,
    required this.watermarks,
    required this.warnings,
  });

  /// Container format the inspected bytes were sniffed as.
  final ImageFormat format;

  /// Normalized AI-use classification.
  final AiUseAssessment aiUse;

  /// Aggregate watermark detection status.
  final WatermarkStatus watermarkStatus;

  /// Result of validating C2PA Content Credentials.
  final ContentCredentialReport contentCredentials;

  /// Normalized metadata gathered from configured readers.
  final List<ProvenanceMetadata> metadata;

  /// Findings from configured watermark detectors.
  final List<WatermarkFinding> watermarks;

  /// Non-fatal issues encountered while inspecting the image.
  final List<InspectionWarning> warnings;

  /// Returns a copy with the given fields replaced.
  ImageProvenanceReport copyWith({
    ImageFormat? format,
    AiUseAssessment? aiUse,
    WatermarkStatus? watermarkStatus,
    ContentCredentialReport? contentCredentials,
    List<ProvenanceMetadata>? metadata,
    List<WatermarkFinding>? watermarks,
    List<InspectionWarning>? warnings,
  }) => ImageProvenanceReport(
    format: format ?? this.format,
    aiUse: aiUse ?? this.aiUse,
    watermarkStatus: watermarkStatus ?? this.watermarkStatus,
    contentCredentials: contentCredentials ?? this.contentCredentials,
    metadata: metadata ?? this.metadata,
    watermarks: watermarks ?? this.watermarks,
    warnings: warnings ?? this.warnings,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ImageProvenanceReport &&
          other.format == format &&
          other.aiUse == aiUse &&
          other.watermarkStatus == watermarkStatus &&
          other.contentCredentials == contentCredentials &&
          _listEquality.equals(other.metadata, metadata) &&
          _listEquality.equals(other.watermarks, watermarks) &&
          _listEquality.equals(other.warnings, warnings));

  @override
  int get hashCode => Object.hash(
    format,
    aiUse,
    watermarkStatus,
    contentCredentials,
    _listEquality.hash(metadata),
    _listEquality.hash(watermarks),
    _listEquality.hash(warnings),
  );

  @override
  String toString() =>
      'ImageProvenanceReport(format: $format, aiUse: $aiUse, '
      'watermarkStatus: $watermarkStatus, '
      'contentCredentials: $contentCredentials, metadata: $metadata, '
      'watermarks: $watermarks, warnings: $warnings)';
}
