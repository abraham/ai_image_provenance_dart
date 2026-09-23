import 'package:ai_image_provenance/ai_image_provenance.dart';
import 'package:ai_image_provenance/src/c2pa/ai_use_assessor.dart';
import 'package:test/test.dart';

void main() {
  group('absent, inaccessible, and unsupported reports', () {
    for (final status in [
      ContentCredentialStatus.absent,
      ContentCredentialStatus.inaccessible,
      ContentCredentialStatus.unsupported,
    ]) {
      test('$status is unknown/unknown', () {
        final assessment = assessAiUse(ContentCredentialReport(status: status));
        expect(assessment.classification, AiUseClassification.unknown);
        expect(assessment.trust, EvidenceTrust.unknown);
      });
    }
  });

  test('an invalid manifest never drives a classification', () {
    final assessment = assessAiUse(
      const ContentCredentialReport(
        status: ContentCredentialStatus.invalid,
        digitalSourceType: DigitalSourceType.trainedAlgorithmicMedia,
      ),
    );
    expect(assessment.classification, AiUseClassification.unknown);
    expect(assessment.trust, EvidenceTrust.unknown);
  });

  test('a trusted manifest with no digital source type is noAiUseDeclared', () {
    final assessment = assessAiUse(
      const ContentCredentialReport(
        status: ContentCredentialStatus.validTrusted,
      ),
    );
    expect(assessment.classification, AiUseClassification.noAiUseDeclared);
    expect(assessment.trust, EvidenceTrust.trusted);
  });

  test('a trusted, trained-algorithmic-media manifest is generated', () {
    final assessment = assessAiUse(
      const ContentCredentialReport(
        status: ContentCredentialStatus.validTrusted,
        digitalSourceType: DigitalSourceType.trainedAlgorithmicMedia,
      ),
    );
    expect(assessment.classification, AiUseClassification.generated);
    expect(assessment.trust, EvidenceTrust.trusted);
  });

  test('an untrusted composite-with-trained-algorithmic-media manifest is '
      'generativelyEdited', () {
    final assessment = assessAiUse(
      const ContentCredentialReport(
        status: ContentCredentialStatus.validUntrusted,
        digitalSourceType:
            DigitalSourceType.compositeWithTrainedAlgorithmicMedia,
      ),
    );
    expect(assessment.classification, AiUseClassification.generativelyEdited);
    expect(assessment.trust, EvidenceTrust.validButUntrusted);
  });

  test('compositeSynthetic is includesGeneratedElements', () {
    final assessment = assessAiUse(
      const ContentCredentialReport(
        status: ContentCredentialStatus.validTrusted,
        digitalSourceType: DigitalSourceType.compositeSynthetic,
      ),
    );
    expect(
      assessment.classification,
      AiUseClassification.includesGeneratedElements,
    );
  });

  test('algorithmicallyEnhanced maps to itself', () {
    final assessment = assessAiUse(
      const ContentCredentialReport(
        status: ContentCredentialStatus.validTrusted,
        digitalSourceType: DigitalSourceType.algorithmicallyEnhanced,
      ),
    );
    expect(
      assessment.classification,
      AiUseClassification.algorithmicallyEnhanced,
    );
  });

  test('a plain digital capture is noAiUseDeclared', () {
    final assessment = assessAiUse(
      const ContentCredentialReport(
        status: ContentCredentialStatus.validTrusted,
        digitalSourceType: DigitalSourceType.digitalCapture,
      ),
    );
    expect(assessment.classification, AiUseClassification.noAiUseDeclared);
  });
}
