import 'package:ai_image_provenance/src/models/watermark_detection.dart';

/// A single detector's watermark result, attributed to that detector.
final class WatermarkFinding {
  /// Creates an immutable watermark finding.
  const WatermarkFinding({
    required this.detectorId,
    required this.detectorVersion,
    required this.detection,
  });

  /// Identifier of the detector that produced [detection].
  final String detectorId;

  /// Version of the detector that produced [detection].
  final String detectorVersion;

  /// The detector's result.
  final WatermarkDetection detection;

  /// Returns a copy with the given fields replaced.
  WatermarkFinding copyWith({
    String? detectorId,
    String? detectorVersion,
    WatermarkDetection? detection,
  }) => WatermarkFinding(
    detectorId: detectorId ?? this.detectorId,
    detectorVersion: detectorVersion ?? this.detectorVersion,
    detection: detection ?? this.detection,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WatermarkFinding &&
          other.detectorId == detectorId &&
          other.detectorVersion == detectorVersion &&
          other.detection == detection);

  @override
  int get hashCode => Object.hash(detectorId, detectorVersion, detection);

  @override
  String toString() =>
      'WatermarkFinding(detectorId: $detectorId, '
      'detectorVersion: $detectorVersion, detection: $detection)';
}
