/// Normalized AI-use classification derived from available evidence.
enum AiUseClassification {
  /// The image itself was created using a trained generative model.
  generated,

  /// Generative AI augmented, corrected, inpainted, or outpainted an existing
  /// image.
  generativelyEdited,

  /// The image is a composition containing at least one generated
  /// ingredient, without every pixel being generated.
  includesGeneratedElements,

  /// A non-generative algorithm corrected the image, such as denoising or
  /// sharpening, without materially changing its content.
  algorithmicallyEnhanced,

  /// The successfully parsed declarations do not claim AI use.
  ///
  /// This does not mean that no AI was used.
  noAiUseDeclared,

  /// There was no usable evidence, or the evidence could not be interpreted
  /// safely.
  unknown,
}
