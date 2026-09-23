import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:ai_image_provenance/src/models/inspection_warning_code.dart';

part 'inspection_warning.freezed.dart';

/// A non-fatal issue encountered while inspecting an image.
///
/// A warning never discards evidence produced by other readers or detectors.
@freezed
abstract class InspectionWarning with _$InspectionWarning {
  /// Creates an immutable inspection warning.
  const factory InspectionWarning({
    required InspectionWarningCode code,
    required String message,
  }) = _InspectionWarning;
}
