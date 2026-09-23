import 'package:ai_image_provenance/ai_image_provenance.dart';
import 'package:test/test.dart';

void main() {
  test('has 23 members matching the IPTC digital source type vocabulary', () {
    expect(DigitalSourceType.values, hasLength(23));
    expect(DigitalSourceType.values, contains(DigitalSourceType.empty));
    expect(
      DigitalSourceType.values,
      contains(DigitalSourceType.trainedAlgorithmicMedia),
    );
    expect(
      DigitalSourceType.values,
      contains(DigitalSourceType.compositeSynthetic),
    );
    expect(DigitalSourceType.values, contains(DigitalSourceType.other));
  });
}
