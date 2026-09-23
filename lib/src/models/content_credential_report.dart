import 'package:ai_image_provenance/src/models/content_credential_status.dart';
import 'package:ai_image_provenance/src/models/digital_source_type.dart';

/// Normalized result of validating an image's C2PA Content Credentials.
final class ContentCredentialReport {
  /// Creates an immutable content credential report.
  const ContentCredentialReport({
    required this.status,
    this.manifestLabel,
    this.claimGeneratorName,
    this.claimGeneratorVersion,
    this.signerIssuer,
    this.signerCommonName,
    this.validFrom,
    this.validUntil,
    this.digitalSourceType,
  });

  /// Outcome of validating the manifest.
  final ContentCredentialStatus status;

  /// Label of the active manifest, if any.
  final String? manifestLabel;

  /// Name of the tool that produced the active manifest's claim.
  final String? claimGeneratorName;

  /// Version of the tool that produced the active manifest's claim.
  final String? claimGeneratorVersion;

  /// Issuer of the signing certificate.
  final String? signerIssuer;

  /// Common name of the signing certificate.
  final String? signerCommonName;

  /// Start of the signing certificate's validity period.
  final DateTime? validFrom;

  /// End of the signing certificate's validity period.
  final DateTime? validUntil;

  /// Digital source type declared by the active manifest, if any.
  final DigitalSourceType? digitalSourceType;

  /// Returns a copy with the given fields replaced.
  ContentCredentialReport copyWith({
    ContentCredentialStatus? status,
    Object? manifestLabel = _unset,
    Object? claimGeneratorName = _unset,
    Object? claimGeneratorVersion = _unset,
    Object? signerIssuer = _unset,
    Object? signerCommonName = _unset,
    Object? validFrom = _unset,
    Object? validUntil = _unset,
    Object? digitalSourceType = _unset,
  }) => ContentCredentialReport(
    status: status ?? this.status,
    manifestLabel: identical(manifestLabel, _unset)
        ? this.manifestLabel
        : manifestLabel as String?,
    claimGeneratorName: identical(claimGeneratorName, _unset)
        ? this.claimGeneratorName
        : claimGeneratorName as String?,
    claimGeneratorVersion: identical(claimGeneratorVersion, _unset)
        ? this.claimGeneratorVersion
        : claimGeneratorVersion as String?,
    signerIssuer: identical(signerIssuer, _unset)
        ? this.signerIssuer
        : signerIssuer as String?,
    signerCommonName: identical(signerCommonName, _unset)
        ? this.signerCommonName
        : signerCommonName as String?,
    validFrom: identical(validFrom, _unset)
        ? this.validFrom
        : validFrom as DateTime?,
    validUntil: identical(validUntil, _unset)
        ? this.validUntil
        : validUntil as DateTime?,
    digitalSourceType: identical(digitalSourceType, _unset)
        ? this.digitalSourceType
        : digitalSourceType as DigitalSourceType?,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ContentCredentialReport &&
          other.status == status &&
          other.manifestLabel == manifestLabel &&
          other.claimGeneratorName == claimGeneratorName &&
          other.claimGeneratorVersion == claimGeneratorVersion &&
          other.signerIssuer == signerIssuer &&
          other.signerCommonName == signerCommonName &&
          other.validFrom == validFrom &&
          other.validUntil == validUntil &&
          other.digitalSourceType == digitalSourceType);

  @override
  int get hashCode => Object.hash(
    status,
    manifestLabel,
    claimGeneratorName,
    claimGeneratorVersion,
    signerIssuer,
    signerCommonName,
    validFrom,
    validUntil,
    digitalSourceType,
  );

  @override
  String toString() =>
      'ContentCredentialReport(status: $status, '
      'manifestLabel: $manifestLabel, '
      'claimGeneratorName: $claimGeneratorName, '
      'claimGeneratorVersion: $claimGeneratorVersion, '
      'signerIssuer: $signerIssuer, signerCommonName: $signerCommonName, '
      'validFrom: $validFrom, validUntil: $validUntil, '
      'digitalSourceType: $digitalSourceType)';
}

// Sentinel distinguishing "not passed" from an explicit null in copyWith.
const _unset = Object();
