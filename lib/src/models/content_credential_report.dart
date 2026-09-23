import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:ai_image_provenance/src/models/content_credential_status.dart';
import 'package:ai_image_provenance/src/models/digital_source_type.dart';

part 'content_credential_report.freezed.dart';

/// Normalized result of validating an image's C2PA Content Credentials.
@freezed
abstract class ContentCredentialReport with _$ContentCredentialReport {
  /// Creates an immutable content credential report.
  const factory ContentCredentialReport({
    required ContentCredentialStatus status,
    String? manifestLabel,
    String? claimGeneratorName,
    String? claimGeneratorVersion,
    String? signerIssuer,
    String? signerCommonName,
    DateTime? validFrom,
    DateTime? validUntil,
    DigitalSourceType? digitalSourceType,
  }) = _ContentCredentialReport;
}
