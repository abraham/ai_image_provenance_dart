import 'package:ai_image_provenance/ai_image_provenance.dart';
import 'package:test/test.dart';

void main() {
  test('has the expected members', () {
    expect(WatermarkExecution.values, [
      WatermarkExecution.local,
      WatermarkExecution.remote,
    ]);
  });
}
