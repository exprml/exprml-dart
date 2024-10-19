import 'package:exprml_dart/exprml.dart';
import 'package:exprml_dart/exprml_pb.dart';

void main() {
  final decodeResult = Decoder().decode(
      DecodeInput(yaml: r"cat: ['`Hello`', '`, `', '`ExprML`', '`!`']"));
  final parseResult = Parser().parse(ParseInput(value: decodeResult.value));

  final config = Config()
    ..afterEvaluate = (EvaluateInput input, EvaluateOutput output) {
      print('After evaluation: "${input.expr.path.format()}"\n${output.value}');
    };

  Evaluator(config).evaluateExpr(EvaluateInput(expr: parseResult.expr));
  // =>
  // After evaluation: "/cat/0"
  // type: STR
  // str: Hello
  //
  // After evaluation: "/cat/1"
  // type: STR
  // str: ,
  //
  // After evaluation: "/cat/2"
  // type: STR
  // str: ExprML
  //
  // After evaluation: "/cat/3"
  // type: STR
  // str: !
  //
  // After evaluation: "/"
  // type: STR
  // str: Hello, ExprML!
}
