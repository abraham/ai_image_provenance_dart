import 'package:ai_image_provenance/ai_image_provenance.dart';
import 'package:test/test.dart';

void main() {
  test('carries a descriptive message', () {
    const exception = UnsupportedImageFormatException();
    expect(exception.message, isNotEmpty);
  });
}
