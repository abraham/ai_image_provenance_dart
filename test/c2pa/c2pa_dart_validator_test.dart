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
}
