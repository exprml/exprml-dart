//
//  Generated code. Do not modify.
//  source: exprml/v1/value.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Type of a JSON value.
class Value_Type extends $pb.ProtobufEnum {
  static const Value_Type UNSPECIFIED = Value_Type._(0, _omitEnumNames ? '' : 'UNSPECIFIED');
  static const Value_Type NULL = Value_Type._(1, _omitEnumNames ? '' : 'NULL');
  static const Value_Type BOOL = Value_Type._(2, _omitEnumNames ? '' : 'BOOL');
  static const Value_Type NUM = Value_Type._(3, _omitEnumNames ? '' : 'NUM');
  static const Value_Type STR = Value_Type._(4, _omitEnumNames ? '' : 'STR');
  static const Value_Type ARR = Value_Type._(5, _omitEnumNames ? '' : 'ARR');
  static const Value_Type OBJ = Value_Type._(6, _omitEnumNames ? '' : 'OBJ');

  static const $core.List<Value_Type> values = <Value_Type> [
    UNSPECIFIED,
    NULL,
    BOOL,
    NUM,
    STR,
    ARR,
    OBJ,
  ];

  static final $core.Map<$core.int, Value_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Value_Type? valueOf($core.int value) => _byValue[value];

  const Value_Type._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
