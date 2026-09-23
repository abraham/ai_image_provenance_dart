import 'dart:io';

import 'package:ai_image_provenance/ai_image_provenance.dart';

Future<void> main(List<String> arguments) async {
  if (arguments.isEmpty) {
    stderr.writeln(
      'Usage: dart run example/ai_image_provenance_example.dart <image path>',
    );
    exitCode = 64;
    return;
  }

  final bytes = await File(arguments.first).readAsBytes();

  final inspector = AiImageProvenanceInspector();
  final report = await inspector.inspect(bytes);

  print('Format: ${report.format}');
  print('AI use classification: ${report.aiUse.classification}');
  print('Content Credentials status: ${report.contentCredentials.status}');
  print('Watermark status: ${report.watermarkStatus}');
}
