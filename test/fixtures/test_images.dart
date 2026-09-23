import 'dart:io';
import 'dart:typed_data';

import 'package:image/image.dart' as img;

/// A tiny real, decodable JPEG usable as a C2PA-free fixture.
Uint8List minimalJpegBytes() {
  final image = img.Image(width: 1, height: 1);
  return Uint8List.fromList(img.encodeJpg(image));
}

/// A tiny real, decodable PNG usable as a C2PA-free fixture.
Uint8List minimalPngBytes() {
  final image = img.Image(width: 1, height: 1);
  return Uint8List.fromList(img.encodePng(image));
}

/// A minimal RIFF/WEBP container. Only its magic bytes are well-formed; it
/// is sufficient for container sniffing but not for full C2PA parsing.
Uint8List minimalWebpMagicBytes() => Uint8List.fromList([
  0x52, 0x49, 0x46, 0x46, // 'RIFF'
  0x00, 0x00, 0x00, 0x00, // chunk size (unused by the sniffer)
  0x57, 0x45, 0x42, 0x50, // 'WEBP'
]);

/// Bytes that do not match any recognized image container.
Uint8List notAnImageBytes() => Uint8List.fromList('not an image'.codeUnits);

Uint8List _readC2paPublicTestfile(String name) =>
    File('test/fixtures/c2pa_public_testfiles/$name').readAsBytesSync();

/// A real JPEG with no C2PA manifest at all, from the c2pa-org public
/// test-file corpus (see `c2pa_public_testfiles/NOTICE.md`).
Uint8List c2paPublicTestfileNoManifestJpegBytes() =>
    _readC2paPublicTestfile('adobe-20220124-A.jpg');

/// A real JPEG with a structurally and cryptographically valid C2PA
/// manifest signed by a test certificate that isn't in any trust list, from
/// the c2pa-org public test-file corpus.
Uint8List c2paPublicTestfileValidUntrustedJpegBytes() =>
    _readC2paPublicTestfile('adobe-20220124-C.jpg');

/// A real JPEG with a C2PA manifest whose claim signature fails validation,
/// from the c2pa-org public test-file corpus.
Uint8List c2paPublicTestfileInvalidSignatureJpegBytes() =>
    _readC2paPublicTestfile('adobe-20220124-E-sig-CA.jpg');
