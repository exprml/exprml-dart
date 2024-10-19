import 'package:exprml_dart/exprml.dart';
import 'package:exprml_dart/exprml_pb.dart';

void main() {
  // Decode JSON value from a source string in YAML.
  final decodeResult = Decoder()
      .decode(DecodeInput(yaml: 'cat: ["`Hello`", "`, `", "`ExprML`", "`!`"]'));

  // Parse an AST from the decoded value.
  final parseResult = Parser()
      .parse(ParseInput(value: decodeResult.value));

  // Evaluate the parsed AST as a JSON value.
  final evaluateResult = Evaluator()
      .evaluateExpr(EvaluateInput(expr: parseResult.expr));

  // Encode the evaluated JSON value into a source string in YAML.
  final encodeResult = Encoder()
      .encode(EncodeInput(value: evaluateResult.value));

  print(encodeResult.result);
  // => "Hello, ExprML!"
}
