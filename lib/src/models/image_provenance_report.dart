import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:ai_image_provenance/src/models/ai_use_assessment.dart';
import 'package:ai_image_provenance/src/models/content_credential_report.dart';
import 'package:ai_image_provenance/src/models/image_format.dart';
import 'package:ai_image_provenance/src/models/inspection_warning.dart';
import 'package:ai_image_provenance/src/models/provenance_metadata.dart';
import 'package:ai_image_provenance/src/models/watermark_finding.dart';
import 'package:ai_image_provenance/src/models/watermark_status.dart';

part 'image_provenance_report.freezed.dart';

/// Structured report describing AI-generation and AI-editing evidence found
/// in an image.
@freezed
abstract class ImageProvenanceReport with _$ImageProvenanceReport {
  /// Creates an immutable image provenance report.
  const factory ImageProvenanceReport({
    required ImageFormat format,
    required AiUseAssessment aiUse,
    required WatermarkStatus watermarkStatus,
    required ContentCredentialReport contentCredentials,
    required List<ProvenanceMetadata> metadata,
    required List<WatermarkFinding> watermarks,
    required List<InspectionWarning> warnings,
  }) = _ImageProvenanceReport;
}
