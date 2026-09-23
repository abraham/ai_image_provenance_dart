import 'package:c2pa/c2pa.dart' as c2pa;

import 'package:ai_image_provenance/src/models/content_credential_status.dart';

// An unresolved OCSP check only means revocation status couldn't be
// determined without a network call, not that the signer is untrustworthy.
final _tolerableFailureCodes = {
  c2pa.ValidationCode.signingCredentialUntrusted.value,
  c2pa.ValidationCode.signingCredentialOcspUnknown.value,
  c2pa.ValidationCode.signingCredentialOcspSkipped.value,
  c2pa.ValidationCode.signingCredentialOcspInaccessible.value,
};

/// Derives a [ContentCredentialStatus] from c2pa_dart's [results], tolerating
/// unresolved OCSP revocation checks instead of treating them as failures.
ContentCredentialStatus resolveContentCredentialStatus(
  c2pa.ValidationResults results,
) {
  final active = results.activeManifest;
  if (active == null) return ContentCredentialStatus.invalid;

  final ingredientDeltas = results.ingredientDeltas ?? const [];

  bool failuresAreTolerable(Iterable<c2pa.ValidationIssue> failures) =>
      failures.every((issue) => _tolerableFailureCodes.contains(issue.code));

  final hasValidSignature =
      active.success.any(
        (status) =>
            status.code == c2pa.ValidationCode.claimSignatureValidated.value,
      ) &&
      active.success.any(
        (status) =>
            status.code ==
            c2pa.ValidationCode.claimSignatureInsideValidity.value,
      );

  final isValid =
      hasValidSignature &&
      failuresAreTolerable(active.failure) &&
      ingredientDeltas.every(
        (delta) => failuresAreTolerable(delta.validationDeltas.failure),
      );

  if (!isValid) return ContentCredentialStatus.invalid;

  final isTrusted = active.success.any(
    (status) =>
        status.code == c2pa.ValidationCode.signingCredentialTrusted.value,
  );

  return isTrusted
      ? ContentCredentialStatus.validTrusted
      : ContentCredentialStatus.validUntrusted;
}
