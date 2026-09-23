## 0.1.0-dev.1

- Initial release. Tracks the `c2pa` pre-release (`0.1.0-dev.1`) API, so this
  package is published as a pre-release too.
- `AiImageProvenanceInspector`, the package's single entry point.
- C2PA Content Credentials validation via `C2paDartValidator`.
- JPEG, PNG, and WebP container sniffing.
- `AiWatermarkDetector` and `ProvenanceMetadataReader` extension-point
  interfaces for pluggable watermark detectors and IPTC/XMP/EXIF metadata
  readers. No concrete implementation of either ships in this package;
  callers supply their own.
