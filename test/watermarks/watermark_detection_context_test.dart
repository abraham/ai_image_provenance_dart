import 'package:ai_image_provenance/src/watermarks/watermark_detection_context.dart';
import 'package:test/test.dart';

void main() {
  test('stores the configured timeout', () {
    const context = WatermarkDetectionContext(timeout: Duration(seconds: 3));
    expect(context.timeout, const Duration(seconds: 3));
  });
}
