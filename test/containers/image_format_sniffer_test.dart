import 'dart:typed_data';

import 'package:ai_image_provenance/ai_image_provenance.dart';
import 'package:ai_image_provenance/src/containers/image_format_sniffer.dart';
import 'package:test/test.dart';

import '../fixtures/test_images.dart';

void main() {
  test('detects a real JPEG', () {
    expect(sniffImageFormat(minimalJpegBytes()), ImageFormat.jpeg);
  });

  test('detects a real PNG', () {
    expect(sniffImageFormat(minimalPngBytes()), ImageFormat.png);
  });

  test('detects a WebP by its RIFF/WEBP magic bytes', () {
    expect(sniffImageFormat(minimalWebpMagicBytes()), ImageFormat.webp);
  });

  test('reports unknown for unrecognized bytes', () {
    expect(sniffImageFormat(notAnImageBytes()), ImageFormat.unknown);
  });

  test('reports unknown for empty bytes', () {
    expect(sniffImageFormat(Uint8List(0)), ImageFormat.unknown);
  });
}
