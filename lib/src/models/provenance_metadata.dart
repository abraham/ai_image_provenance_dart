import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:ai_image_provenance/src/models/evidence_trust.dart';
import 'package:ai_image_provenance/src/models/metadata_source.dart';

part 'provenance_metadata.freezed.dart';

/// A single normalized metadata value extracted from an image.
@freezed
abstract class ProvenanceMetadata with _$ProvenanceMetadata {
  /// Creates an immutable provenance metadata entry.
  const factory ProvenanceMetadata({
    required MetadataSource source,
    required String fieldName,
    required Object? value,
    required EvidenceTrust trust,
  }) = _ProvenanceMetadata;
}
