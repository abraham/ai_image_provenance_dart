import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:ai_image_provenance/src/models/ai_use_classification.dart';
import 'package:ai_image_provenance/src/models/evidence_trust.dart';

part 'ai_use_assessment.freezed.dart';

/// Normalized AI-use classification and the trust behind it.
@freezed
abstract class AiUseAssessment with _$AiUseAssessment {
  /// Creates an immutable AI-use assessment.
  const factory AiUseAssessment({
    required AiUseClassification classification,
    required EvidenceTrust trust,
  }) = _AiUseAssessment;
}
