import 'package:ai_image_provenance/src/models/ai_use_assessment.dart';
import 'package:ai_image_provenance/src/models/ai_use_classification.dart';
import 'package:ai_image_provenance/src/models/content_credential_report.dart';
import 'package:ai_image_provenance/src/models/content_credential_status.dart';
import 'package:ai_image_provenance/src/models/digital_source_type.dart';
import 'package:ai_image_provenance/src/models/evidence_trust.dart';

/// Derives a normalized [AiUseAssessment] from a [ContentCredentialReport].
///
/// An invalid manifest never drives a classification other than [unknown];
/// its signature could not be verified, so any declaration it carries is not
/// attributable to these pixels.
AiUseAssessment assessAiUse(ContentCredentialReport report) {
  return switch (report.status) {
    ContentCredentialStatus.validTrusted => AiUseAssessment(
      classification: _classify(report.digitalSourceType),
      trust: EvidenceTrust.trusted,
    ),
    ContentCredentialStatus.validUntrusted => AiUseAssessment(
      classification: _classify(report.digitalSourceType),
      trust: EvidenceTrust.validButUntrusted,
    ),
    ContentCredentialStatus.invalid ||
    ContentCredentialStatus.absent ||
    ContentCredentialStatus.inaccessible ||
    ContentCredentialStatus.unsupported => const AiUseAssessment(
      classification: AiUseClassification.unknown,
      trust: EvidenceTrust.unknown,
    ),
  };
}

AiUseClassification _classify(DigitalSourceType? sourceType) =>
    switch (sourceType) {
      DigitalSourceType.trainedAlgorithmicMedia ||
      DigitalSourceType.algorithmicMedia => AiUseClassification.generated,
      DigitalSourceType.compositeWithTrainedAlgorithmicMedia =>
        AiUseClassification.generativelyEdited,
      DigitalSourceType.compositeSynthetic =>
        AiUseClassification.includesGeneratedElements,
      DigitalSourceType.algorithmicallyEnhanced =>
        AiUseClassification.algorithmicallyEnhanced,
      null ||
      DigitalSourceType.empty ||
      DigitalSourceType.trainedAlgorithmicData ||
      DigitalSourceType.digitalCapture ||
      DigitalSourceType.computationalCapture ||
      DigitalSourceType.negativeFilm ||
      DigitalSourceType.positiveFilm ||
      DigitalSourceType.print ||
      DigitalSourceType.minorHumanEdits ||
      DigitalSourceType.humanEdits ||
      DigitalSourceType.softwareImage ||
      DigitalSourceType.digitalArt ||
      DigitalSourceType.digitalCreation ||
      DigitalSourceType.dataDrivenMedia ||
      DigitalSourceType.screenCapture ||
      DigitalSourceType.virtualRecording ||
      DigitalSourceType.composite ||
      DigitalSourceType.compositeCapture ||
      DigitalSourceType.other => AiUseClassification.noAiUseDeclared,
    };
