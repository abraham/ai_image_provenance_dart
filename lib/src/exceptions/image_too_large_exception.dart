import 'package:ai_image_provenance/src/exceptions/image_inspection_exception.dart';

/// Thrown when the supplied image bytes exceed `InspectionOptions.maxBytes`.
final class ImageTooLargeException extends ImageInspectionException {
  /// Creates an image-too-large exception.
  ImageTooLargeException({required this.byteLength, required this.maxBytes})
    : super(
        'Image size $byteLength bytes exceeds the configured limit of '
        '$maxBytes bytes',
      );

  /// Size of the supplied image, in bytes.
  final int byteLength;

  /// Configured maximum size, in bytes.
  final int maxBytes;
}
