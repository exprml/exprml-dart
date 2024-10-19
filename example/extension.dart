import 'package:exprml_dart/exprml.dart';
import 'package:exprml_dart/exprml_pb.dart';

void main() {
  final decodeResult = Decoder()
      .decode(DecodeInput(yaml: r'$hello: { $name: "`ExprML Extension`" }'));
  final parseResult = Parser().parse(ParseInput(value: decodeResult.value));

  final config = Config()
    ..extension = {
      r'$hello': (Expr_Path path, Map<String, Value> args) {
        final name = args[r'$name'];
        if (name == null) {
          return EvaluateOutput(
              status: EvaluateOutput_Status.UNKNOWN_ERROR,
              errorPath: path,
              errorMessage: 'missing argument: $name');
        }
        return EvaluateOutput(value: strValue("Hello, ${name.str}!"));
      },
    };
  final evaluateResult =
      Evaluator(config).evaluateExpr(EvaluateInput(expr: parseResult.expr));

  final encodeResult =
      Encoder().encode(EncodeInput(value: evaluateResult.value));
  print(encodeResult.result);
  // => "Hello, ExprML Extension!"
}
