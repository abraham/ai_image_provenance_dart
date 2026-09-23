import 'package:ai_image_provenance/ai_image_provenance.dart';
import 'package:test/test.dart';

void main() {
  test('carries its message and reports it in toString', () {
    const exception = EmptyImageException();
    expect(exception.message, 'No image bytes were supplied');
    expect(exception.toString(), contains('EmptyImageException'));
  });

  test('is an ImageInspectionException', () {
    expect(const EmptyImageException(), isA<ImageInspectionException>());
  });
}
