import 'package:ai_image_provenance/ai_image_provenance.dart';
import 'package:test/test.dart';

void main() {
  test('equal instances with the same fields are ==', () {
    const a = ProvenanceMetadata(
      source: MetadataSource.xmp,
      fieldName: 'digitalSourceType',
      value: 'trainedAlgorithmicMedia',
      trust: EvidenceTrust.unsigned,
    );
    const b = ProvenanceMetadata(
      source: MetadataSource.xmp,
      fieldName: 'digitalSourceType',
      value: 'trainedAlgorithmicMedia',
      trust: EvidenceTrust.unsigned,
    );
    expect(a, b);
    expect(a.hashCode, b.hashCode);
  });
}
