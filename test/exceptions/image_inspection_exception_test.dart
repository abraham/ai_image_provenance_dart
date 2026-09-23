import 'package:ai_image_provenance/ai_image_provenance.dart';
import 'package:test/test.dart';

final class _FakeException extends ImageInspectionException {
  const _FakeException() : super('fake');
}

void main() {
  test('toString includes the runtime type and message', () {
    expect(const _FakeException().toString(), '_FakeException: fake');
  });
}
