import 'package:exprml_dart/exprml.dart';
import 'package:exprml_dart/exprml_pb.dart';

void main() {
  final decodeResult = Decoder().decode(
      DecodeInput(yaml: r"cat: ['`Hello`', '`, `', '`ExprML`', '`!`']"));
  final parseResult = Parser().parse(ParseInput(value: decodeResult.value));

  final config = Config()
    ..beforeEvaluate = (EvaluateInput input) {
      print('Before evaluation: "${input.expr.path.format()}"');
    };

  Evaluator(config).evaluateExpr(EvaluateInput(expr: parseResult.expr));
  // =>
  // Before evaluation: "/"
  // Before evaluation: "/cat/0"
  // Before evaluation: "/cat/1"
  // Before evaluation: "/cat/2"
  // Before evaluation: "/cat/3"
}
