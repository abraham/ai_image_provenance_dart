import 'package:ai_image_provenance/src/models/evidence_trust.dart';
import 'package:ai_image_provenance/src/models/metadata_source.dart';

/// A single normalized metadata value extracted from an image.
final class ProvenanceMetadata {
  /// Creates an immutable provenance metadata entry.
  const ProvenanceMetadata({
    required this.source,
    required this.fieldName,
    required this.value,
    required this.trust,
  });

  /// Where [value] was extracted from.
  final MetadataSource source;

  /// Normalized name of the metadata field.
  final String fieldName;

  /// The extracted value.
  final Object? value;

  /// Trust level supporting this value.
  final EvidenceTrust trust;

  /// Returns a copy with the given fields replaced.
  ProvenanceMetadata copyWith({
    MetadataSource? source,
    String? fieldName,
    Object? value,
    EvidenceTrust? trust,
  }) => ProvenanceMetadata(
    source: source ?? this.source,
    fieldName: fieldName ?? this.fieldName,
    value: value ?? this.value,
    trust: trust ?? this.trust,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProvenanceMetadata &&
          other.source == source &&
          other.fieldName == fieldName &&
          other.value == value &&
          other.trust == trust);

  @override
  int get hashCode => Object.hash(source, fieldName, value, trust);

  @override
  String toString() =>
      'ProvenanceMetadata(source: $source, fieldName: $fieldName, '
      'value: $value, trust: $trust)';
}
