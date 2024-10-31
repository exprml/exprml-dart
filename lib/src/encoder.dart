import 'dart:convert';

import 'gen/pb/exprml/v1/encoder.pb.dart';
import 'gen/pb/exprml/v1/value.pb.dart';
import 'package:yaml_edit/yaml_edit.dart';

class Encoder {
  Encoder();

  EncodeOutput encode(EncodeInput input) {
    final v = _convertToDart(input.value);
    final String s;
    switch (input.format) {
      case EncodeInput_Format.JSON:
        try {
          s = JsonEncoder().convert(v);
        } catch (e) {
          return EncodeOutput(isError: true, errorMessage: e.toString());
        }
      case EncodeInput_Format.YAML:
        try {
          s = (YamlEditor('')..update([], v)).toString();
        } catch (e) {
          return EncodeOutput(isError: true, errorMessage: e.toString());
        }
      default:
        return EncodeOutput(
            isError: true, errorMessage: 'Unsupported format: ${input.format}');
    }
    return EncodeOutput(text: s);
  }

  dynamic _convertToDart(Value value) {
    return switch (value.type) {
      Value_Type.BOOL => value.bool_2,
      Value_Type.NUM => value.num,
      Value_Type.STR => value.str,
      Value_Type.ARR => value.arr.map(_convertToDart).toList(),
      Value_Type.OBJ => value.obj.map((k, v) => MapEntry(k, _convertToDart(v))),
      _ => throw ArgumentError('Unsupported type: ${value.type}'),
    };
  }
}
