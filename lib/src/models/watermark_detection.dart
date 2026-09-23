/// Outcome of one `AiWatermarkDetector` run against a single image.
sealed class WatermarkDetection {
  const WatermarkDetection._();

  /// The detector positively identified its watermark.
  const factory WatermarkDetection.detected({
    required String algorithm,
    String? owner,
    double? confidence,
    String? region,
  }) = WatermarkDetected;

  /// The detector completed and found no supported signal.
  const factory WatermarkDetection.notDetected() = WatermarkNotDetected;

  /// The detector could not reach a conclusion, such as a timeout or damaged
  /// signal.
  const factory WatermarkDetection.inconclusive(String reason) =
      WatermarkInconclusive;

  /// The detector cannot process this format or image variant.
  const factory WatermarkDetection.unsupported() = WatermarkUnsupported;
}

/// The detector positively identified its watermark.
final class WatermarkDetected extends WatermarkDetection {
  /// Creates an immutable positive watermark detection.
  const WatermarkDetected({
    required this.algorithm,
    this.owner,
    this.confidence,
    this.region,
  }) : super._();

  /// Identifier of the detected watermarking algorithm.
  final String algorithm;

  /// Owner or provider attributed to the watermark, if known.
  final String? owner;

  /// Detector-reported confidence in `[0, 1]`, if available.
  final double? confidence;

  /// Region of the image the watermark was found in, if available.
  final String? region;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WatermarkDetected &&
          other.algorithm == algorithm &&
          other.owner == owner &&
          other.confidence == confidence &&
          other.region == region);

  @override
  int get hashCode => Object.hash(algorithm, owner, confidence, region);

  @override
  String toString() =>
      'WatermarkDetection.detected(algorithm: $algorithm, owner: $owner, '
      'confidence: $confidence, region: $region)';
}

/// The detector completed and found no supported signal.
final class WatermarkNotDetected extends WatermarkDetection {
  /// Creates an immutable "not detected" result.
  const WatermarkNotDetected() : super._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is WatermarkNotDetected;

  @override
  int get hashCode => (WatermarkNotDetected).hashCode;

  @override
  String toString() => 'WatermarkDetection.notDetected()';
}

/// The detector could not reach a conclusion, such as a timeout or damaged
/// signal.
final class WatermarkInconclusive extends WatermarkDetection {
  /// Creates an immutable inconclusive result carrying [reason].
  const WatermarkInconclusive(this.reason) : super._();

  /// Human-readable explanation for the inconclusive result.
  final String reason;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WatermarkInconclusive && other.reason == reason);

  @override
  int get hashCode => reason.hashCode;

  @override
  String toString() => 'WatermarkDetection.inconclusive($reason)';
}

/// The detector cannot process this format or image variant.
final class WatermarkUnsupported extends WatermarkDetection {
  /// Creates an immutable unsupported result.
  const WatermarkUnsupported() : super._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is WatermarkUnsupported;

  @override
  int get hashCode => (WatermarkUnsupported).hashCode;

  @override
  String toString() => 'WatermarkDetection.unsupported()';
}
