/// Base exception for failures that prevent forming an
/// `ImageProvenanceReport`.
///
/// Individual reader or detector failures are reported as findings or
/// warnings instead of throwing; this is only thrown when no report can be
/// formed at all.
abstract base class ImageInspectionException implements Exception {
  /// Creates an image inspection exception with a human-readable [message].
  const ImageInspectionException(this.message);

  /// Human-readable description of the failure.
  final String message;

  @override
  String toString() => '$runtimeType: $message';
}
