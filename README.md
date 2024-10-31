# exprml-dart

exprml_dart is a Dart library implementing an ExprML interpreter.
The ExprML is a programming language that can evaluate expressions represented in JSON (and JSON-compatible YAML).

The ExprML language specification is available at https://github.com/exprml/exprml-language .

## Features

- Decoder: Decodes text in JSON (or JSON-compatible YAML) into JSON values in Dart.
- Encoder: Encodes JSON values into text JSON (or JSON-compatible YAML).
- Parser: Parses ASTs of ExprML expression from the JSON values decoded from source.
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
  // Decode JSON value from a source string.
  final decodeResult = Decoder()
      .decode(DecodeInput(yaml: 'cat: ["`Hello`", "`, `", "`ExprML`", "`!`"]'));

  // Parse an AST from the decoded value.
  final parseResult = Parser()
      .parse(ParseInput(value: decodeResult.value));

  // Evaluate the parsed AST as a JSON value.
  final evaluateResult = Evaluator()
      .evaluateExpr(EvaluateInput(expr: parseResult.expr));

  // Encode the evaluated JSON value into a string.
  final encodeResult = Encoder()
      .encode(EncodeInput(value: evaluateResult.value));

  print(encodeResult.result);
  // => "Hello, ExprML!"
}
```

### More examples

- Above example: https://github.com/exprml/exprml_dart/blob/main/example/main.dart
- Extension: https://github.com/exprml/exprml_dart/blob/main/example/extension.dart
- BeforeEvaluate: https://github.com/exprml/exprml_dart/blob/main/example/before_evaluation.dart
- AfterEvaluate: https://github.com/exprml/exprml_dart/blob/main/example/after_evaluation.dart

## API Documentation

https://pub.dev/documentation/exprml_dart/latest/index.html

