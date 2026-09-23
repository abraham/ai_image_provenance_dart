import 'package:ai_image_provenance/ai_image_provenance.dart';
import 'package:ai_image_provenance/src/c2pa/content_credential_status_resolver.dart';
import 'package:c2pa/c2pa.dart' as c2pa;
import 'package:test/test.dart';

c2pa.ValidationResults _results({
  List<c2pa.ValidationCode> success = const [],
  List<c2pa.ValidationCode> failure = const [],
  List<c2pa.IngredientDeltaValidationResult>? ingredientDeltas,
}) {
  return c2pa.ValidationResults(
    activeManifest: c2pa.StatusCodes(
      statuses: [
        for (final code in success) c2pa.ValidationIssue.known(code: code),
        for (final code in failure) c2pa.ValidationIssue.known(code: code),
      ],
    ),
    ingredientDeltas: ingredientDeltas,
  );
}

const _validSignature = [
  c2pa.ValidationCode.claimSignatureValidated,
  c2pa.ValidationCode.claimSignatureInsideValidity,
];

void main() {
  test('reports invalid when there is no active manifest', () {
    final results = c2pa.ValidationResults();

    expect(
      resolveContentCredentialStatus(results),
      ContentCredentialStatus.invalid,
    );
  });

  test('reports invalid when the signature was not validated', () {
    final results = _results(
      success: const [c2pa.ValidationCode.claimSignatureInsideValidity],
    );

    expect(
      resolveContentCredentialStatus(results),
      ContentCredentialStatus.invalid,
    );
  });

  test('reports validTrusted for a fully clean, trusted signature', () {
    final results = _results(
      success: [
        ..._validSignature,
        c2pa.ValidationCode.signingCredentialTrusted,
      ],
    );

    expect(
      resolveContentCredentialStatus(results),
      ContentCredentialStatus.validTrusted,
    );
  });

  test('reports validUntrusted for a clean but untrusted signature', () {
    final results = _results(success: _validSignature);

    expect(
      resolveContentCredentialStatus(results),
      ContentCredentialStatus.validUntrusted,
    );
  });

  test('tolerates an untrusted signing credential failure', () {
    final results = _results(
      success: _validSignature,
      failure: const [c2pa.ValidationCode.signingCredentialUntrusted],
    );

    expect(
      resolveContentCredentialStatus(results),
      ContentCredentialStatus.validUntrusted,
    );
  });

  test('tolerates an unresolved OCSP revocation check', () {
    final results = _results(
      success: _validSignature,
      failure: const [c2pa.ValidationCode.signingCredentialOcspUnknown],
    );

    expect(
      resolveContentCredentialStatus(results),
      ContentCredentialStatus.validUntrusted,
    );
  });

  test('tolerates a skipped OCSP revocation check', () {
    final results = _results(
      success: _validSignature,
      failure: const [c2pa.ValidationCode.signingCredentialOcspSkipped],
    );

    expect(
      resolveContentCredentialStatus(results),
      ContentCredentialStatus.validUntrusted,
    );
  });

  test('tolerates an inaccessible OCSP responder', () {
    final results = _results(
      success: _validSignature,
      failure: const [c2pa.ValidationCode.signingCredentialOcspInaccessible],
    );

    expect(
      resolveContentCredentialStatus(results),
      ContentCredentialStatus.validUntrusted,
    );
  });

  test('does not tolerate a confirmed revoked credential', () {
    final results = _results(
      success: _validSignature,
      failure: const [c2pa.ValidationCode.signingCredentialRevoked],
    );

    expect(
      resolveContentCredentialStatus(results),
      ContentCredentialStatus.invalid,
    );
  });

  test('does not tolerate an expired credential', () {
    final results = _results(
      success: _validSignature,
      failure: const [c2pa.ValidationCode.signingCredentialExpired],
    );

    expect(
      resolveContentCredentialStatus(results),
      ContentCredentialStatus.invalid,
    );
  });

  test('reports invalid when an ingredient has an untolerable failure', () {
    final results = _results(
      success: _validSignature,
      ingredientDeltas: [
        c2pa.IngredientDeltaValidationResult(
          ingredientAssertionUri: 'self#jumbf=/c2pa/ingredient',
          validationDeltas: c2pa.StatusCodes(
            statuses: [
              c2pa.ValidationIssue.known(
                code: c2pa.ValidationCode.signingCredentialRevoked,
              ),
            ],
          ),
        ),
      ],
    );

    expect(
      resolveContentCredentialStatus(results),
      ContentCredentialStatus.invalid,
    );
  });

  test('tolerates an OCSP-unknown failure on an ingredient', () {
    final results = _results(
      success: [
        ..._validSignature,
        c2pa.ValidationCode.signingCredentialTrusted,
      ],
      ingredientDeltas: [
        c2pa.IngredientDeltaValidationResult(
          ingredientAssertionUri: 'self#jumbf=/c2pa/ingredient',
          validationDeltas: c2pa.StatusCodes(
            statuses: [
              c2pa.ValidationIssue.known(
                code: c2pa.ValidationCode.signingCredentialOcspUnknown,
              ),
            ],
          ),
        ),
      ],
    );

    expect(
      resolveContentCredentialStatus(results),
      ContentCredentialStatus.validTrusted,
    );
  });
}
