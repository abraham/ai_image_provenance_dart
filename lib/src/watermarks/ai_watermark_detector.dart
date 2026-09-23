import 'dart:typed_data';

import 'package:ai_image_provenance/src/models/image_format.dart';
import 'package:ai_image_provenance/src/models/watermark_detection.dart';
import 'package:ai_image_provenance/src/models/watermark_execution.dart';
import 'package:ai_image_provenance/src/watermarks/watermark_detection_context.dart';

/// A pluggable detector for one AI-image watermark technology.
///
/// The package does not ship a concrete implementation; callers supply their
/// own local or remote detectors.
abstract interface class AiWatermarkDetector {
  /// Stable identifier for this detector, used to attribute findings.
  String get id;

  /// Detector implementation version.
  String get version;

  /// Where this detector runs.
  WatermarkExecution get execution;

  /// Image formats this detector can process.
  Set<ImageFormat> get supportedFormats;

  /// Attempts to detect this detector's watermark in [bytes].
  Future<WatermarkDetection> detect(
    Uint8List bytes, {
    required ImageFormat format,
    required WatermarkDetectionContext context,
  });
}
