const _defaultMaxBytes = 50 * 1024 * 1024;
const _defaultDetectorTimeout = Duration(seconds: 10);

/// Bounds and policy applied while inspecting an image.
final class InspectionOptions {
  /// Creates immutable inspection options.
  ///
  /// Throws [ArgumentError] if [maxBytes] or [detectorTimeout] is not
  /// positive. Unlike a bare `assert`, this validation always runs,
  /// including in release builds.
  InspectionOptions({
    this.maxBytes = _defaultMaxBytes,
    this.detectorTimeout = _defaultDetectorTimeout,
  }) {
    if (maxBytes <= 0) {
      throw ArgumentError.value(maxBytes, 'maxBytes', 'must be positive');
    }
    if (detectorTimeout <= Duration.zero) {
      throw ArgumentError.value(
        detectorTimeout,
        'detectorTimeout',
        'must be positive',
      );
    }
  }

  /// Maximum accepted input size, in bytes. Defaults to 50 MiB.
  final int maxBytes;

  /// Maximum time allowed for each watermark detector. Defaults to 10s.
  final Duration detectorTimeout;

  /// Returns a copy with the given fields replaced.
  InspectionOptions copyWith({int? maxBytes, Duration? detectorTimeout}) =>
      InspectionOptions(
        maxBytes: maxBytes ?? this.maxBytes,
        detectorTimeout: detectorTimeout ?? this.detectorTimeout,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is InspectionOptions &&
          other.maxBytes == maxBytes &&
          other.detectorTimeout == detectorTimeout);

  @override
  int get hashCode => Object.hash(maxBytes, detectorTimeout);

  @override
  String toString() =>
      'InspectionOptions(maxBytes: $maxBytes, '
      'detectorTimeout: $detectorTimeout)';
}
