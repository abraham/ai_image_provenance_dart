import 'package:ai_image_provenance/src/models/inspection_warning_code.dart';

/// A non-fatal issue encountered while inspecting an image.
///
/// A warning never discards evidence produced by other readers or detectors.
final class InspectionWarning {
  /// Creates an immutable inspection warning.
  const InspectionWarning({required this.code, required this.message});

  /// Category of this warning.
  final InspectionWarningCode code;

  /// Human-readable description of the warning.
  final String message;

  /// Returns a copy with the given fields replaced.
  InspectionWarning copyWith({InspectionWarningCode? code, String? message}) =>
      InspectionWarning(
        code: code ?? this.code,
        message: message ?? this.message,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is InspectionWarning &&
          other.code == code &&
          other.message == message);

  @override
  int get hashCode => Object.hash(code, message);

  @override
  String toString() => 'InspectionWarning(code: $code, message: $message)';
}
