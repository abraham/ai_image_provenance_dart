/// Trust level supporting an [AiUseClassification].
enum EvidenceTrust {
  /// A trusted, valid C2PA assertion.
  trusted,

  /// A cryptographically valid C2PA assertion whose signer is not on the
  /// selected trust list.
  validButUntrusted,

  /// Metadata that is not backed by a validated C2PA assertion.
  unsigned,

  /// A watermark positively identified by its detector.
  detectorAttested,

  /// An advisory signal such as an EXIF software tag or free-text comment.
  heuristic,

  /// There was no usable evidence, or the manifest failed validation.
  unknown,
}
