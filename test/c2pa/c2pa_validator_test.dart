import 'dart:typed_data';

import 'package:ai_image_provenance/ai_image_provenance.dart';
import 'package:test/test.dart';

final class _FakeValidator implements C2paValidator {
  _FakeValidator(this.report);

  final ContentCredentialReport report;

  @override
  Future<ContentCredentialReport> validate(
    Uint8List bytes, {
    required ImageFormat format,
  }) async => report;
}

void main() {
  test('can be implemented and returns its configured report', () async {
    const expected = ContentCredentialReport(
      status: ContentCredentialStatus.absent,
    );
    final validator = _FakeValidator(expected);
    final result = await validator.validate(
      Uint8List(0),
      format: ImageFormat.jpeg,
    );
    expect(result, expected);
  });
}
