import 'package:exprml_dart/exprml.dart';
import 'package:exprml_dart/exprml_pb.dart';
import 'package:test/test.dart';

import 'check_equal.dart';

class Testcase {
  final String yamlInput;
  final Value wantValue;
  final bool wantError;

  Testcase(
      {required this.yamlInput,
      required this.wantValue,
      required this.wantError});
}
void main() {
  final sut = Evaluator(
    Config()
      ..extension = {
        r'$test_func': (Expr_Path path, Map<String, Value> args) {
          return EvaluateOutput(value: Value(type: Value_Type.OBJ, obj: args));
        },
      },
  );

  final testcases = {
    'Ref': Testcase(
      yamlInput: r'$test_func',
      wantValue: Value(type: Value_Type.OBJ, obj: {}),
      wantError: false,
    ),
    'Call': Testcase(
      yamlInput: r'$test_func: { $arg: "`value`" }',
      wantValue: Value(
        type: Value_Type.OBJ,
        obj: {r'$arg': Value(type: Value_Type.STR, str: 'value')},
      ),
      wantError: false,
    ),
  };

  final testcaseKeys = testcases.keys.toList()..sort();
  for (final name in testcaseKeys) {
    final testcase = testcases[name]!;
    test(name, () {
      final decodeResult =
          Decoder().decode(DecodeInput(text: testcase.yamlInput));
      expect(decodeResult.isError, isFalse);

      final parseResult = Parser().parse(ParseInput(value: decodeResult.value));
      expect(parseResult.isError, isFalse);

      final got = sut.evaluateExpr(EvaluateInput(expr: parseResult.expr));
      if (testcase.wantError) {
        expect(got.status, isNot(EvaluateOutput_Status.OK));
      } else {
        expect(got.status, EvaluateOutput_Status.OK);
        expect(checkEqual([], testcase.wantValue, got.value), isNull);
      }
    });
  }
}
