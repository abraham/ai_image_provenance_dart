import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:ai_image_provenance/src/models/watermark_detection.dart';

part 'watermark_finding.freezed.dart';

/// A single detector's watermark result, attributed to that detector.
@freezed
abstract class WatermarkFinding with _$WatermarkFinding {
  /// Creates an immutable watermark finding.
  const factory WatermarkFinding({
    required String detectorId,
    required String detectorVersion,
    required WatermarkDetection detection,
  }) = _WatermarkFinding;
}
