import 'package:ai_image_provenance/ai_image_provenance.dart';
import 'package:test/test.dart';

void main() {
  test('has the expected members', () {
    expect(ContentCredentialStatus.values, [
      ContentCredentialStatus.absent,
      ContentCredentialStatus.validTrusted,
      ContentCredentialStatus.validUntrusted,
      ContentCredentialStatus.invalid,
      ContentCredentialStatus.inaccessible,
      ContentCredentialStatus.unsupported,
    ]);
  });
}
