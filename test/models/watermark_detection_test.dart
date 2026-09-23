import 'package:ai_image_provenance/ai_image_provenance.dart';
import 'package:test/test.dart';

void main() {
  test('detected carries its fields', () {
    const detection = WatermarkDetection.detected(
      algorithm: 'example-alg',
      owner: 'example-owner',
      confidence: 0.9,
      region: 'full',
    );
    expect(
      detection,
      const WatermarkDetection.detected(
        algorithm: 'example-alg',
        owner: 'example-owner',
        confidence: 0.9,
        region: 'full',
      ),
    );
  });

  test('pattern matching distinguishes every variant', () {
    String describe(WatermarkDetection detection) => switch (detection) {
      WatermarkDetected() => 'detected',
      WatermarkNotDetected() => 'notDetected',
      WatermarkInconclusive() => 'inconclusive',
      WatermarkUnsupported() => 'unsupported',
    };

    expect(
      describe(const WatermarkDetection.detected(algorithm: 'a')),
      'detected',
    );
    expect(describe(const WatermarkDetection.notDetected()), 'notDetected');
    expect(
      describe(const WatermarkDetection.inconclusive('timeout')),
      'inconclusive',
    );
    expect(describe(const WatermarkDetection.unsupported()), 'unsupported');
  });
}
