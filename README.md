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

