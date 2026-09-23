import 'package:ai_image_provenance/ai_image_provenance.dart';
import 'package:test/test.dart';

void main() {
  test('has the expected members', () {
    expect(MetadataSource.values, [
      MetadataSource.c2paAssertion,
      MetadataSource.xmp,
      MetadataSource.iptc,
      MetadataSource.exif,
      MetadataSource.extension,
    ]);
  });
}
