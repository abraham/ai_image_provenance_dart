import 'package:ai_image_provenance/ai_image_provenance.dart';
import 'package:test/test.dart';

void main() {
  test('defaults every optional field to null', () {
    const report = ContentCredentialReport(
      status: ContentCredentialStatus.absent,
    );
    expect(report.manifestLabel, isNull);
    expect(report.claimGeneratorName, isNull);
    expect(report.digitalSourceType, isNull);
  });

  test('equal instances with the same fields are ==', () {
    const a = ContentCredentialReport(
      status: ContentCredentialStatus.validTrusted,
      manifestLabel: 'urn:example:manifest',
      digitalSourceType: DigitalSourceType.trainedAlgorithmicMedia,
    );
    const b = ContentCredentialReport(
      status: ContentCredentialStatus.validTrusted,
      manifestLabel: 'urn:example:manifest',
      digitalSourceType: DigitalSourceType.trainedAlgorithmicMedia,
    );
    expect(a, b);
    expect(a.hashCode, b.hashCode);
  });
}
