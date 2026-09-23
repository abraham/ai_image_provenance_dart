import 'package:freezed_annotation/freezed_annotation.dart';

part 'inspection_options.freezed.dart';

const _defaultMaxBytes = 50 * 1024 * 1024;
const _defaultDetectorTimeout = Duration(seconds: 10);

/// Bounds and policy applied while inspecting an image.
@freezed
abstract class InspectionOptions with _$InspectionOptions {
  /// Creates immutable inspection options.
  @Assert('maxBytes > 0', 'maxBytes must be positive')
  @Assert('detectorTimeout > Duration.zero', 'detectorTimeout must be positive')
  factory InspectionOptions({
    /// Maximum accepted input size, in bytes. Defaults to 50 MiB.
    @Default(_defaultMaxBytes) int maxBytes,

    /// Maximum time allowed for each watermark detector. Defaults to 10s.
    @Default(_defaultDetectorTimeout) Duration detectorTimeout,
  }) = _InspectionOptions;
}
