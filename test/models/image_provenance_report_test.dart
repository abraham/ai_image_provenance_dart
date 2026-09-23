import 'package:ai_image_provenance/ai_image_provenance.dart';
import 'package:test/test.dart';

ImageProvenanceReport _report() => ImageProvenanceReport(
  format: ImageFormat.jpeg,
  aiUse: const AiUseAssessment(
    classification: AiUseClassification.unknown,
    trust: EvidenceTrust.unknown,
  ),
  watermarkStatus: WatermarkStatus.notChecked,
  contentCredentials: const ContentCredentialReport(
    status: ContentCredentialStatus.absent,
  ),
  metadata: const [],
  watermarks: const [],
  warnings: const [],
);

void main() {
  test('equal instances with the same fields are ==', () {
    expect(_report(), _report());
    expect(_report().hashCode, _report().hashCode);
  });

  test('differing warnings are not ==', () {
    final withWarning = _report().copyWith(
      warnings: const [
        InspectionWarning(
          code: InspectionWarningCode.detectorFailed,
          message: 'boom',
        ),
      ],
    );
    expect(withWarning, isNot(_report()));
  });
}
