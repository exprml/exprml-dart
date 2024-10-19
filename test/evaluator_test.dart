import 'dart:io';

import 'package:exprml_dart/exprml.dart';
import 'package:exprml_dart/exprml_pb.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';

import 'check_equal.dart';

class _Testcase {
  String? yamlInput;
  Value? wantValue;
  bool? wantError;
}

void main() {
  final testcases = <String, _Testcase>{};
  final dir =
      Directory(p.join(Directory.current.path, "testdata", "evaluator"));
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
    if (e.path.endsWith(".want.yaml")) {
      final key = path.substring(0, path.length - ".want.yaml".length);
      if (!testcases.containsKey(key)) {
        testcases[key] = _Testcase();
      }
      final d = Decoder().decode(DecodeInput(yaml: e.readAsStringSync()));
      if (d.isError) {
        fail("fail to decode want yaml file: ${e.path}: ${d.errorMessage}");
      }
      final v = d.value;
      if (v.type != Value_Type.OBJ) {
        fail("want yaml file is not a map: ${e.path}");
      }
      final wantError = v.obj["want_error"];
      if (wantError != null) {
        if (wantError.type != Value_Type.BOOL) {
          fail("want_error is not a bool: ${e.path}");
        }
        testcases[key]!.wantError = wantError.bool_2;
        return;
      }
      final wantValue = v.obj["want_value"];
      if (wantValue != null) {
        testcases[key]!.wantValue = wantValue;
        return;
      }
    }
  });

  for (final name in testcases.keys.toList()..sort()) {
    final testcase = testcases[name]!;
    test(name, () {
      final decodeResult =
          Decoder().decode(DecodeInput(yaml: testcase.yamlInput!));
      if(decodeResult.isError){
        fail("fail to decode input yaml: ${decodeResult.errorMessage}");
      }

      final parseResult = Parser().parse(ParseInput(value: decodeResult.value));
      if(parseResult.isError) {
        fail("fail to parse input value: ${parseResult.errorMessage}");
      }
      final got =
          Evaluator().evaluateExpr(EvaluateInput(expr: parseResult.expr));
      if (testcase.wantError ?? false) {
        expect(got.status, isNot(equals(EvaluateOutput_Status.OK)));
      } else {
        expect(got.status, equals(EvaluateOutput_Status.OK));
        final msg = checkEqual([], testcase.wantValue!, got.value);
        if (msg != null) {
          fail(msg);
        }
      }
    });
  }
}
