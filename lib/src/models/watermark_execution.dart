/// Where an [AiWatermarkDetector] runs its detection logic.
enum WatermarkExecution {
  /// The detector runs entirely on-device without network access.
  local,

  /// The detector calls a remote service and requires network permission.
  remote,
}
