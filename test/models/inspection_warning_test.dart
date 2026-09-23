import 'package:ai_image_provenance/ai_image_provenance.dart';
import 'package:test/test.dart';

void main() {
  test('equal instances with the same fields are ==', () {
    const a = InspectionWarning(
      code: InspectionWarningCode.detectorFailed,
      message: 'boom',
    );
    const b = InspectionWarning(
      code: InspectionWarningCode.detectorFailed,
      message: 'boom',
    );
    expect(a, b);
    expect(a.hashCode, b.hashCode);
  });

  test('differing messages are not ==', () {
    const a = InspectionWarning(
      code: InspectionWarningCode.detectorFailed,
      message: 'boom',
    );
    const b = InspectionWarning(
      code: InspectionWarningCode.detectorFailed,
      message: 'bang',
    );
    expect(a, isNot(b));
  });
}
