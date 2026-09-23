import 'package:ai_image_provenance/ai_image_provenance.dart';
import 'package:test/test.dart';

void main() {
  test('equal instances with the same fields are ==', () {
    const a = WatermarkFinding(
      detectorId: 'example',
      detectorVersion: '1.0.0',
      detection: WatermarkDetection.notDetected(),
    );
    const b = WatermarkFinding(
      detectorId: 'example',
      detectorVersion: '1.0.0',
      detection: WatermarkDetection.notDetected(),
    );
    expect(a, b);
    expect(a.hashCode, b.hashCode);
  });
}
