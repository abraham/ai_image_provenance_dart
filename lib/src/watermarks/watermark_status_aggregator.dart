import 'package:ai_image_provenance/src/models/watermark_detection.dart';
import 'package:ai_image_provenance/src/models/watermark_finding.dart';
import 'package:ai_image_provenance/src/models/watermark_status.dart';

/// Aggregates individual detector [findings] into one [WatermarkStatus].
///
/// `notDetected` requires every applicable detector to have completed
/// successfully; a single inconclusive or unsupported result downgrades the
/// aggregate to `inconclusive` unless another detector already found a
/// watermark.
WatermarkStatus aggregateWatermarkStatus(List<WatermarkFinding> findings) {
  if (findings.isEmpty) return WatermarkStatus.notChecked;

  var sawInconclusive = false;
  for (final finding in findings) {
    switch (finding.detection) {
      case WatermarkDetected():
        return WatermarkStatus.detected;
      case WatermarkNotDetected():
        break;
      case WatermarkInconclusive():
      case WatermarkUnsupported():
        sawInconclusive = true;
    }
  }
  return sawInconclusive
      ? WatermarkStatus.inconclusive
      : WatermarkStatus.notDetected;
}
