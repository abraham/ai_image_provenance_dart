# ai_image_provenance

A standalone, pure-Dart package that inspects encoded image bytes for
AI-generation and AI-editing evidence: validated C2PA Content Credentials,
normalized IPTC/XMP digital source type declarations, and pluggable
watermark detectors.

C2PA validation is powered by [`c2pa`](https://pub.dev/packages/c2pa),
a pure-Dart C2PA implementation, so this package has no native library,
platform channel, or Android-specific dependency.

## Status

This is an initial implementation covering:

- `AiImageProvenanceInspector`, the package's single entry point.
- C2PA Content Credentials validation via `C2paDartValidator`.
- JPEG, PNG, and WebP container sniffing.
- The `AiWatermarkDetector` and `ProvenanceMetadataReader` extension-point
  interfaces used to plug in watermark detectors and IPTC/XMP/EXIF metadata
  readers. No concrete implementation of either ships in this package yet;
  callers supply their own.

## Installation

```yaml
dependencies:
  ai_image_provenance: ^0.1.0-dev.1
```

## Usage

```dart
import 'package:ai_image_provenance/ai_image_provenance.dart';

final inspector = AiImageProvenanceInspector();
final report = await inspector.inspect(imageBytes);

print(report.aiUse.classification); // e.g. AiUseClassification.generated
print(report.contentCredentials.status); // e.g. ContentCredentialStatus.validTrusted
```

See [example/ai_image_provenance_example.dart](example/ai_image_provenance_example.dart)
for a runnable example.

## License

MIT. See [LICENSE](LICENSE).

