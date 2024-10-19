# exprml-dart

exprml-dart is a Dart library implementing an ExprML interpreter.
The ExprML is a programming language that can evaluate expressions represented in the YAML format.

The language specification is available at https://github.com/exprml/exprml-language .

## Features

- Decoder: Decodes YAML string into JSON values in Dart.
- Encoder: Encodes JSON values into string.
- Parser: Parses ASTs of ExprML expression from the JSON values decoded from source YAML.
- Evaluator: Evaluates the ASTs of ExprML expression as JSON values.

## Getting started

```shell
dart pub add exprml_dart
```

## Examples

```dart
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
```

<!--
## API Documentation
-->


