/// Container an [InspectionWarning] describes.
enum InspectionWarningCode {
  /// The caller's `declaredMediaType` hint did not match the sniffed format.
  declaredMediaTypeMismatch,

  /// A watermark detector was skipped due to network policy.
  detectorSkippedByPolicy,

  /// A watermark detector threw while running.
  detectorFailed,

  /// A watermark detector did not complete within its configured timeout.
  detectorTimedOut,
}
