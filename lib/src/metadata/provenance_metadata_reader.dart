import 'dart:typed_data';

import 'package:ai_image_provenance/src/models/image_format.dart';
import 'package:ai_image_provenance/src/models/provenance_metadata.dart';

/// A pluggable reader that extracts normalized provenance metadata from an
/// image.
///
/// The package does not ship a concrete implementation; callers supply their
/// own IPTC, XMP, EXIF, or other extension readers.
abstract interface class ProvenanceMetadataReader {
  /// Extracts normalized metadata values from [bytes], or an empty list when
  /// none apply.
  Future<List<ProvenanceMetadata>> read(
    Uint8List bytes, {
    required ImageFormat format,
  });
}
