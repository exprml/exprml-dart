import 'package:collection/collection.dart';
import 'package:exprml_dart/exprml_pb.dart';
import 'package:test/test.dart';

String? checkEqual(List<String> path, Value want, Value got) {
  if (want.type != got.type) {
    return "type mismatch: /${path.join("/")}: ${want.type} != ${got.type}";
  }
  switch (want.type) {
    case Value_Type.NULL:
      return null;
    case Value_Type.BOOL:
      if (want.bool_2 != got.bool_2) {
        return "bool mismatch: /${path.join("/")}: ${want.bool_2} != ${got.bool_2}";
      }
      return null;
    case Value_Type.NUM:
      if (want.num != got.num) {
        return "num mismatch: /${path.join("/")}: ${want.num} != ${got.num}";
      }
      return null;
    case Value_Type.STR:
      if (want.str != got.str) {
        return "str mismatch: /${path.join("/")}: ${want.str} != ${got.str}";
      }
      return null;
    case Value_Type.ARR:
      if (want.arr.length != got.arr.length) {
        return "arr length mismatch: /${path.join("/")}: ${want.arr.length} != ${got.arr.length}";
      }
      for (var i = 0; i < want.arr.length; i++) {
        final msg =
            checkEqual([...path, i.toString()], want.arr[i], got.arr[i]);
        if (msg != null) {
          return msg;
        }
      }
      return null;
    case Value_Type.OBJ:
      if (!ListEquality().equals(
          want.obj.keys.toList()..sort(), got.obj.keys.toList()..sort())) {
        return "obj key mismatch: /${path.join("/")}: ${want.obj.keys.toList()..sort()} != ${got.obj.keys.toList()..sort()}";
      }
      for (var key in want.obj.keys) {
        expect(got.obj.containsKey(key), isTrue);
        final msg = checkEqual([...path, key], want.obj[key]!, got.obj[key]!);
        if (msg != null) {
          return msg;
        }
      }
      return null;
    default:
      return "unknown type: /${path.join("/")}: ${want.type}";
  }
}
