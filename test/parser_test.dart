import 'dart:io';

import 'package:exprml_dart/exprml.dart';
import 'package:exprml_dart/exprml_pb.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';

class _Testcase {
  String? yamlInput;
}

void main() {
  final testcases = <String, _Testcase>{};
  final dir =
      Directory(p.join(Directory.current.path, "testdata", "parser", "error"));
  dir.listSync(recursive: true, followLinks: true).forEach((e) {
    if (e is! File) return;
    final path = p.canonicalize(e.path);
    if (e.path.endsWith(".in.yaml")) {
      final key = path.substring(0, path.length - ".in.yaml".length);
      if (!testcases.containsKey(key)) {
        testcases[key] = _Testcase();
      }
      testcases[key]!.yamlInput = e.readAsStringSync();
      return;
    }
  });

  for (final name in testcases.keys.toList()..sort()) {
    final testcase = testcases[name]!;
    test(name, () {
      final decodeResult =
          Decoder().decode(DecodeInput(text: testcase.yamlInput!));
      if (decodeResult.isError) {
        fail("fail to decode input yaml: ${decodeResult.errorMessage}");
      }

      final parseResult = Parser().parse(ParseInput(value: decodeResult.value));
      expect(parseResult.isError, isTrue);
    });
  }
}
