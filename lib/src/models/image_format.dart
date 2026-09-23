/// Container format detected for inspected image bytes.
enum ImageFormat {
  /// JPEG / JPEG XT.
  jpeg,

  /// Portable Network Graphics.
  png,

  /// WebP.
  webp,

  /// A format that was not recognized by [sniffImageFormat].
  unknown,
}
