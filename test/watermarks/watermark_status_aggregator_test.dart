import 'package:ai_image_provenance/ai_image_provenance.dart';
import 'package:ai_image_provenance/src/watermarks/watermark_status_aggregator.dart';
import 'package:test/test.dart';

WatermarkFinding _finding(WatermarkDetection detection) => WatermarkFinding(
  detectorId: 'example',
  detectorVersion: '1.0.0',
  detection: detection,
);

void main() {
  test('no findings is notChecked', () {
    expect(aggregateWatermarkStatus(const []), WatermarkStatus.notChecked);
  });

  test('any detected finding is detected', () {
    final findings = [
      _finding(const WatermarkDetection.notDetected()),
      _finding(const WatermarkDetection.detected(algorithm: 'a')),
    ];
    expect(aggregateWatermarkStatus(findings), WatermarkStatus.detected);
  });

  test('every finding not detected is notDetected', () {
    final findings = [
      _finding(const WatermarkDetection.notDetected()),
      _finding(const WatermarkDetection.notDetected()),
    ];
    expect(aggregateWatermarkStatus(findings), WatermarkStatus.notDetected);
  });

  test('an inconclusive finding downgrades to inconclusive', () {
    final findings = [
      _finding(const WatermarkDetection.notDetected()),
      _finding(const WatermarkDetection.inconclusive('timeout')),
    ];
    expect(aggregateWatermarkStatus(findings), WatermarkStatus.inconclusive);
  });

  test('an unsupported finding downgrades to inconclusive', () {
    final findings = [_finding(const WatermarkDetection.unsupported())];
    expect(aggregateWatermarkStatus(findings), WatermarkStatus.inconclusive);
  });
}
