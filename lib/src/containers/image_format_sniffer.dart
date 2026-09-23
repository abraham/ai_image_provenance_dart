import 'dart:typed_data';

import 'package:ai_image_provenance/src/models/image_format.dart';

/// Detects [ImageFormat] from the leading bytes of an encoded image.
///
/// Sniffs the actual container signature; it never trusts a caller-supplied
/// media type hint.
ImageFormat sniffImageFormat(Uint8List bytes) {
  if (_startsWith(bytes, _jpegMagic)) return ImageFormat.jpeg;
  if (_startsWith(bytes, _pngMagic)) return ImageFormat.png;
  if (_isWebp(bytes)) return ImageFormat.webp;
  return ImageFormat.unknown;
}

const _jpegMagic = [0xFF, 0xD8, 0xFF];
const _pngMagic = [0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A];
const _riffMagic = [0x52, 0x49, 0x46, 0x46]; // 'RIFF'
const _webpMagic = [0x57, 0x45, 0x42, 0x50]; // 'WEBP'

bool _isWebp(Uint8List bytes) =>
    _startsWith(bytes, _riffMagic) &&
    bytes.length >= 12 &&
    _startsWith(Uint8List.sublistView(bytes, 8), _webpMagic);

bool _startsWith(Uint8List bytes, List<int> magic) {
  if (bytes.length < magic.length) return false;
  for (var i = 0; i < magic.length; i++) {
    if (bytes[i] != magic[i]) return false;
  }
  return true;
}
