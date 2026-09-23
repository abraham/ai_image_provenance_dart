import 'package:ai_image_provenance/src/exceptions/image_inspection_exception.dart';

/// Thrown when the supplied bytes are not a recognized image container.
final class UnsupportedImageFormatException extends ImageInspectionException {
  /// Creates an unsupported-image-format exception.
  const UnsupportedImageFormatException()
    : super('The image container format was not recognized');
}
