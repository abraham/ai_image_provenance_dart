import 'package:ai_image_provenance/ai_image_provenance.dart';
import 'package:test/test.dart';

void main() {
  test('defaults maxBytes to 50 MiB and detectorTimeout to 10s', () {
    final options = InspectionOptions();
    expect(options.maxBytes, 50 * 1024 * 1024);
    expect(options.detectorTimeout, const Duration(seconds: 10));
  });

  test('rejects a non-positive maxBytes', () {
    expect(() => InspectionOptions(maxBytes: 0), throwsA(isA<ArgumentError>()));
  });

  test('rejects a non-positive detectorTimeout', () {
    expect(
      () => InspectionOptions(detectorTimeout: Duration.zero),
      throwsA(isA<ArgumentError>()),
    );
  });
}
