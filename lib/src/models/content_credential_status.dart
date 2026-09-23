/// Outcome of validating an image's C2PA Content Credentials.
enum ContentCredentialStatus {
  /// No C2PA manifest was found in the image.
  absent,

  /// A C2PA manifest validated successfully with a trusted signer.
  validTrusted,

  /// A C2PA manifest validated successfully, but its signer is not trusted.
  validUntrusted,

  /// A C2PA manifest was found but failed structural or cryptographic
  /// validation.
  invalid,

  /// A remote or externally referenced manifest could not be retrieved.
  inaccessible,

  /// C2PA validation was not attempted for this image format.
  unsupported,
}
