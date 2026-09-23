import 'dart:typed_data';

import 'package:c2pa/c2pa.dart' as c2pa;
import 'package:collection/collection.dart';

import 'package:ai_image_provenance/src/models/content_credential_report.dart';
import 'package:ai_image_provenance/src/models/content_credential_status.dart';
import 'package:ai_image_provenance/src/models/digital_source_type.dart';
import 'package:ai_image_provenance/src/models/image_format.dart';
import 'package:ai_image_provenance/src/c2pa/c2pa_validator.dart';
import 'package:ai_image_provenance/src/c2pa/content_credential_status_resolver.dart';
import 'package:ai_image_provenance/src/c2pa/digital_source_type_codec.dart';

/// Validates C2PA Content Credentials in pure Dart using `c2pa_dart`.
final class C2paDartValidator implements C2paValidator {
  /// Creates a validator. Supply [context] to configure trust anchors,
  /// network policy, or certificate status checking; the default context
  /// performs no network access and grants no trust.
  C2paDartValidator({c2pa.C2paContext? context})
    : _context = context ?? c2pa.C2paContext();

  final c2pa.C2paContext _context;

  static const _fileNamesByFormat = {
    ImageFormat.jpeg: 'asset.jpg',
    ImageFormat.png: 'asset.png',
    ImageFormat.webp: 'asset.webp',
  };

  static const _mimeTypesByFormat = {
    ImageFormat.jpeg: 'image/jpeg',
    ImageFormat.png: 'image/png',
    ImageFormat.webp: 'image/webp',
  };

  @override
  Future<ContentCredentialReport> validate(
    Uint8List bytes, {
    required ImageFormat format,
  }) async {
    final fileName = _fileNamesByFormat[format];
    if (fileName == null) {
      return const ContentCredentialReport(
        status: ContentCredentialStatus.unsupported,
      );
    }

    late final c2pa.C2paReader reader;
    try {
      reader = await c2pa.C2paReader.fromSource(
        source: c2pa.MemoryByteSource(bytes),
        fileName: fileName,
        mimeType: _mimeTypesByFormat[format],
        context: _context,
      );
    } on c2pa.C2paParseException catch (error) {
      if (error.validationCode == c2pa.ValidationCode.claimMissing) {
        return const ContentCredentialReport(
          status: ContentCredentialStatus.absent,
        );
      }
      return const ContentCredentialReport(
        status: ContentCredentialStatus.invalid,
      );
    } on c2pa.C2paNetworkException {
      return const ContentCredentialReport(
        status: ContentCredentialStatus.inaccessible,
      );
    } on c2pa.C2paUnsupportedException {
      return const ContentCredentialReport(
        status: ContentCredentialStatus.unsupported,
      );
    }

    final active = reader.activeManifest;
    if (active == null) {
      return const ContentCredentialReport(
        status: ContentCredentialStatus.absent,
      );
    }

    final status = resolveContentCredentialStatus(reader.validationResults);

    final generatorInfo = active.claim?.claimGeneratorInfo.firstOrNull;
    final signature = active.signatureInfo;

    return ContentCredentialReport(
      status: status,
      manifestLabel: reader.activeManifestLabel,
      claimGeneratorName: generatorInfo?.name,
      claimGeneratorVersion: generatorInfo?.version,
      signerIssuer: signature?.issuer,
      signerCommonName: signature?.commonName,
      validFrom: signature?.notBefore,
      validUntil: signature?.notAfter,
      digitalSourceType: _findDigitalSourceType(active.actions),
    );
  }

  static DigitalSourceType? _findDigitalSourceType(
    List<c2pa.ActionsAssertion> actionsAssertions,
  ) {
    c2pa.DigitalSourceType? fallback;
    for (final assertion in actionsAssertions) {
      for (final action in assertion.actions) {
        final sourceType = action.sourceType;
        if (sourceType == null) continue;
        if (action.action == 'c2pa.created') {
          return mapC2paDigitalSourceTypeName(sourceType.name);
        }
        fallback ??= sourceType;
      }
    }
    return fallback == null
        ? null
        : mapC2paDigitalSourceTypeName(fallback.name);
  }
}
