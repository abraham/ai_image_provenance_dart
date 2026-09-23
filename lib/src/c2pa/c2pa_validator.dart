import 'dart:typed_data';

import 'package:ai_image_provenance/src/models/content_credential_report.dart';
import 'package:ai_image_provenance/src/models/image_format.dart';

/// Validates an image's C2PA Content Credentials.
abstract interface class C2paValidator {
  /// Validates [bytes] and returns a normalized content credential report.
  ///
  /// Implementations must not throw for a well-formed image that simply has
  /// no C2PA manifest; that is reported as
  /// `ContentCredentialStatus.absent`.
  Future<ContentCredentialReport> validate(
    Uint8List bytes, {
    required ImageFormat format,
  });
}
