import 'dart:typed_data';

import 'package:ai_image_provenance/ai_image_provenance.dart';
import 'package:test/test.dart';

final class _FakeDetector implements AiWatermarkDetector {
  @override
  String get id => 'fake';

  @override
  String get version => '1.0.0';

  @override
  WatermarkExecution get execution => WatermarkExecution.local;

  @override
  Set<ImageFormat> get supportedFormats => {ImageFormat.jpeg};

  @override
  Future<WatermarkDetection> detect(
    Uint8List bytes, {
    required ImageFormat format,
    required WatermarkDetectionContext context,
  }) async => const WatermarkDetection.notDetected();
}

void main() {
  test('can be implemented and produces a detection', () async {
    final detector = _FakeDetector();
    final result = await detector.detect(
      Uint8List(0),
      format: ImageFormat.jpeg,
      context: const WatermarkDetectionContext(timeout: Duration(seconds: 1)),
    );
    expect(result, const WatermarkDetection.notDetected());
    expect(detector.supportedFormats, contains(ImageFormat.jpeg));
  });
}
