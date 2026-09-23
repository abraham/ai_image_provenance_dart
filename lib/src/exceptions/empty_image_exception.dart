import 'package:ai_image_provenance/src/exceptions/image_inspection_exception.dart';

/// Thrown when the supplied image bytes are empty.
final class EmptyImageException extends ImageInspectionException {
  /// Creates an empty-image exception.
  const EmptyImageException() : super('No image bytes were supplied');
}
