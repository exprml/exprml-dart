import 'package:exprml_dart/exprml.dart';
import 'package:exprml_dart/exprml_pb.dart';
import 'package:test/test.dart';

void main() {
  test('Evaluator BeforeEvaluate', () {
    final evalPaths = <String>[];

    final decodeResult = Decoder().decode(
        DecodeInput(yaml: 'cat: ["`Hello`", "`, `", "`ExprML`", "`!`"]'));
    expect(decodeResult.isError, isFalse);

    final parseResult = Parser().parse(ParseInput(value: decodeResult.value));
    expect(parseResult.isError, isFalse);

    final config = Config()
      ..beforeEvaluate = (EvaluateInput input) {
        evalPaths.add(input.expr.path.format());
      };
    final result =
        Evaluator(config).evaluateExpr(EvaluateInput(expr: parseResult.expr));
    expect(result.status, EvaluateOutput_Status.OK);
    expect(evalPaths,
        unorderedEquals(['/', '/cat/0', '/cat/1', '/cat/2', '/cat/3']));
  });

  test('Evaluator AfterEvaluate', () {
    final evalTypes = <Value_Type>[];

    final decodeResult = Decoder().decode(
        DecodeInput(yaml: 'cat: ["`Hello`", "`, `", "`ExprML`", "`!`"]'));
    expect(decodeResult.isError, isFalse);

    final parseResult = Parser().parse(ParseInput(value: decodeResult.value));
    expect(parseResult.isError, isFalse);

    final config = Config()
      ..afterEvaluate = (EvaluateInput input, EvaluateOutput output) {
        evalTypes.add(output.value.type);
      };
    final result =
        Evaluator(config).evaluateExpr(EvaluateInput(expr: parseResult.expr));
    expect(result.status, EvaluateOutput_Status.OK);

    final wantTypes = [
      Value_Type.STR,
      Value_Type.STR,
      Value_Type.STR,
      Value_Type.STR,
      Value_Type.STR
    ];
    expect(evalTypes, unorderedEquals(wantTypes));
  });
}
