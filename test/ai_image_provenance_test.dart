/// Confirms the public barrel exposes the package's primary API surface.
library;

import 'package:ai_image_provenance/ai_image_provenance.dart';
import 'package:test/test.dart';

void main() {
  test('exposes the inspector, validator, and report models', () {
    expect(AiImageProvenanceInspector.new, returnsNormally);
    expect(C2paDartValidator.new, returnsNormally);
    expect(
      () =>
          const ContentCredentialReport(status: ContentCredentialStatus.absent),
      returnsNormally,
    );
  });
}
