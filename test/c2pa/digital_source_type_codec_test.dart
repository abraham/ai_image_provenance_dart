import 'package:ai_image_provenance/ai_image_provenance.dart';
import 'package:ai_image_provenance/src/c2pa/digital_source_type_codec.dart';
import 'package:test/test.dart';

void main() {
  test(
    'maps every c2pa_dart DigitalSourceType name to this package\'s enum',
    () {
      for (final value in DigitalSourceType.values) {
        expect(mapC2paDigitalSourceTypeName(value.name), value);
      }
    },
  );
}
