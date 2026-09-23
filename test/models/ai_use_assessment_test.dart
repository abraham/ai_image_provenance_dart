import 'package:ai_image_provenance/ai_image_provenance.dart';
import 'package:test/test.dart';

void main() {
  test('equal instances with the same fields are ==', () {
    const a = AiUseAssessment(
      classification: AiUseClassification.generated,
      trust: EvidenceTrust.trusted,
    );
    const b = AiUseAssessment(
      classification: AiUseClassification.generated,
      trust: EvidenceTrust.trusted,
    );
    expect(a, b);
    expect(a.hashCode, b.hashCode);
  });

  test('differing fields are not ==', () {
    const a = AiUseAssessment(
      classification: AiUseClassification.generated,
      trust: EvidenceTrust.trusted,
    );
    const b = AiUseAssessment(
      classification: AiUseClassification.unknown,
      trust: EvidenceTrust.trusted,
    );
    expect(a, isNot(b));
  });

  test('copyWith updates only the given field', () {
    const original = AiUseAssessment(
      classification: AiUseClassification.generated,
      trust: EvidenceTrust.trusted,
    );
    final updated = original.copyWith(trust: EvidenceTrust.validButUntrusted);
    expect(updated.classification, AiUseClassification.generated);
    expect(updated.trust, EvidenceTrust.validButUntrusted);
  });
}
