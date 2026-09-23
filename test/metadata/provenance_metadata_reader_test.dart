import 'dart:typed_data';

import 'package:ai_image_provenance/ai_image_provenance.dart';
import 'package:test/test.dart';

final class _FakeReader implements ProvenanceMetadataReader {
  @override
  Future<List<ProvenanceMetadata>> read(
    Uint8List bytes, {
    required ImageFormat format,
  }) async => const [
    ProvenanceMetadata(
      source: MetadataSource.extension,
      fieldName: 'example',
      value: 'value',
      trust: EvidenceTrust.heuristic,
    ),
  ];
}

void main() {
  test('can be implemented and returns metadata', () async {
    final metadata = await _FakeReader().read(
      Uint8List(0),
      format: ImageFormat.jpeg,
    );
    expect(metadata, hasLength(1));
    expect(metadata.single.fieldName, 'example');
  });
}
