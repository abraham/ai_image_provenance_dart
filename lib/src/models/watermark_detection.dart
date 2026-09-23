import 'package:freezed_annotation/freezed_annotation.dart';

part 'watermark_detection.freezed.dart';

/// Outcome of one `AiWatermarkDetector` run against a single image.
@freezed
sealed class WatermarkDetection with _$WatermarkDetection {
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
