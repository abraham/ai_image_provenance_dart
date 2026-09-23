import 'package:ai_image_provenance/src/models/ai_use_classification.dart';
import 'package:ai_image_provenance/src/models/evidence_trust.dart';

/// Normalized AI-use classification and the trust behind it.
final class AiUseAssessment {
  /// Creates an immutable AI-use assessment.
  const AiUseAssessment({required this.classification, required this.trust});

  /// The normalized classification.
  final AiUseClassification classification;

  /// The trust level supporting [classification].
  final EvidenceTrust trust;

  /// Returns a copy with the given fields replaced.
  AiUseAssessment copyWith({
    AiUseClassification? classification,
    EvidenceTrust? trust,
  }) => AiUseAssessment(
    classification: classification ?? this.classification,
    trust: trust ?? this.trust,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AiUseAssessment &&
          other.classification == classification &&
          other.trust == trust);

  @override
  int get hashCode => Object.hash(classification, trust);

  @override
  String toString() =>
      'AiUseAssessment(classification: $classification, trust: $trust)';
}
