/// Aggregate watermark detection status across all applicable detectors.
enum WatermarkStatus {
  /// At least one configured detector positively identified an AI watermark.
  detected,

  /// Every applicable detector completed and found no watermark.
  notDetected,

  /// No detector found a watermark, and at least one applicable detector
  /// could not complete or returned an uncertain result.
  inconclusive,

  /// No configured detector supports the image, or no detector was
  /// configured.
  notChecked,
}
