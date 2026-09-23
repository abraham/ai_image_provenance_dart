/// Source a piece of [ProvenanceMetadata] was extracted from.
enum MetadataSource {
  /// A C2PA manifest assertion.
  c2paAssertion,

  /// An XMP packet.
  xmp,

  /// An IPTC metadata block.
  iptc,

  /// An EXIF tag.
  exif,

  /// A caller-supplied `ProvenanceMetadataReader` extension.
  extension,
}
