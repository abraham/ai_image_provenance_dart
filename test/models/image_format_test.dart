import 'package:ai_image_provenance/ai_image_provenance.dart';
import 'package:test/test.dart';

void main() {
  test('has the expected members', () {
    expect(ImageFormat.values, [
      ImageFormat.jpeg,
      ImageFormat.png,
      ImageFormat.webp,
      ImageFormat.unknown,
    ]);
  });
}
