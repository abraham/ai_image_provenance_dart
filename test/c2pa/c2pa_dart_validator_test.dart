import 'package:ai_image_provenance/ai_image_provenance.dart';
import 'package:test/test.dart';

import '../fixtures/test_images.dart';

void main() {
  test('a real JPEG with no C2PA manifest is absent', () async {
    final report = await C2paDartValidator().validate(
      minimalJpegBytes(),
      format: ImageFormat.jpeg,
    );
    expect(report.status, ContentCredentialStatus.absent);
  });

  test('a real PNG with no C2PA manifest is absent', () async {
    final report = await C2paDartValidator().validate(
      minimalPngBytes(),
      format: ImageFormat.png,
    );
    expect(report.status, ContentCredentialStatus.absent);
  });

  group('c2pa-org public test files', () {
    // Real sample images from https://github.com/c2pa-org/public-testfiles
    // (CC-BY-SA-4.0; see test/fixtures/c2pa_public_testfiles/NOTICE.md).
    test('a real JPEG with no C2PA manifest is absent', () async {
      final report = await C2paDartValidator().validate(
        c2paPublicTestfileNoManifestJpegBytes(),
        format: ImageFormat.jpeg,
      );
      expect(report.status, ContentCredentialStatus.absent);
    });

    test('a real JPEG with a manifest signed by an untrusted test certificate '
        'is validUntrusted', () async {
      final report = await C2paDartValidator().validate(
        c2paPublicTestfileValidUntrustedJpegBytes(),
        format: ImageFormat.jpeg,
      );
      expect(report.status, ContentCredentialStatus.validUntrusted);
      expect(report.manifestLabel, isNotNull);
    });

    test('a real JPEG with an invalid claim signature is invalid', () async {
      final report = await C2paDartValidator().validate(
        c2paPublicTestfileInvalidSignatureJpegBytes(),
        format: ImageFormat.jpeg,
      );
      expect(report.status, ContentCredentialStatus.invalid);
    });
  });
}
