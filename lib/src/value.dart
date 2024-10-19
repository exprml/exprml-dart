import 'gen/pb/exprml/v1/value.pb.dart';

Value objValue(Map<String, Value> obj) {
  return Value(type: Value_Type.OBJ, obj: obj);
}

Value arrValue(List<Value> arr) {
  return Value(type: Value_Type.ARR, arr: arr);
}

Value strValue(String str) {
  return Value(type: Value_Type.STR, str: str);
}

Value numValue(double num) {
  return Value(type: Value_Type.NUM, num: num);
}

Value boolValue(bool b) {
  return Value(type: Value_Type.BOOL, bool_2: b);
}
