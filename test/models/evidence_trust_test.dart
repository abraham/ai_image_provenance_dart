import 'package:ai_image_provenance/ai_image_provenance.dart';
import 'package:test/test.dart';

void main() {
  test('has the expected members', () {
    expect(EvidenceTrust.values, [
      EvidenceTrust.trusted,
      EvidenceTrust.validButUntrusted,
      EvidenceTrust.unsigned,
      EvidenceTrust.detectorAttested,
      EvidenceTrust.heuristic,
      EvidenceTrust.unknown,
    ]);
  });
}
