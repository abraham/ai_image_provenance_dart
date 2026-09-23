import 'package:ai_image_provenance/src/models/digital_source_type.dart'
    as report;

/// Maps a c2pa_dart action's `sourceType` to the package's own
/// `DigitalSourceType`.
///
/// Kept separate from `c2pa`'s own `DigitalSourceType` so the public report
/// API never depends on c2pa_dart's types directly.
report.DigitalSourceType mapC2paDigitalSourceTypeName(String name) =>
    report.DigitalSourceType.values.byName(name);
