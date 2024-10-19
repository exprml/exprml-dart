import 'gen/pb/exprml/v1/decoder.pb.dart';
import 'gen/pb/exprml/v1/value.pb.dart';
import 'package:yaml/yaml.dart';

class Decoder {
  Decoder();

  DecodeOutput decode(DecodeInput input) {
    final dynamic decoded;
    try {
      decoded = loadYaml(input.yaml);
    } catch (e) {
      return DecodeOutput(isError: true, errorMessage: e.toString());
    }
    return DecodeOutput(value: _convertFromDart(decoded));
  }

  Value _convertFromDart(dynamic value) => switch (value.runtimeType) {
        bool => Value(type: Value_Type.BOOL, bool_2: value),
        num ||
        int ||
        double =>
          Value(type: Value_Type.NUM, num: value.toDouble()),
        String => Value(type: Value_Type.STR, str: value),
        YamlList => Value(
            type: Value_Type.ARR,
            arr: (value as YamlList).map(_convertFromDart).toList(),
          ),
        YamlMap => Value(
            type: Value_Type.OBJ,
            obj: (value as YamlMap)
                .map((k, v) => MapEntry(k.toString(), _convertFromDart(v))),
          ),
        _ => throw ArgumentError('Unsupported type: ${value.runtimeType}'),
      };
}
