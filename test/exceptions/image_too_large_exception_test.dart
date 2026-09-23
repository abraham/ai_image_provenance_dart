import 'package:ai_image_provenance/ai_image_provenance.dart';
import 'package:test/test.dart';

void main() {
  test('reports byteLength and maxBytes in its message', () {
    final exception = ImageTooLargeException(byteLength: 200, maxBytes: 100);
    expect(exception.byteLength, 200);
    expect(exception.maxBytes, 100);
    expect(exception.message, contains('200'));
    expect(exception.message, contains('100'));
  });
}
