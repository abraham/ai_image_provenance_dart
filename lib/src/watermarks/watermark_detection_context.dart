/// Bounds and context supplied to an `AiWatermarkDetector` for one run.
final class WatermarkDetectionContext {
  /// Creates an immutable watermark detection context.
  const WatermarkDetectionContext({required this.timeout});

  /// Maximum time the detector is allowed to take.
  final Duration timeout;
}
