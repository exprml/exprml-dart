//
//  Generated code. Do not modify.
//  source: exprml/v1/encoder.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Format of the output string.
class EncodeInput_Format extends $pb.ProtobufEnum {
  static const EncodeInput_Format JSON = EncodeInput_Format._(0, _omitEnumNames ? '' : 'JSON');
  static const EncodeInput_Format YAML = EncodeInput_Format._(1, _omitEnumNames ? '' : 'YAML');

  static const $core.List<EncodeInput_Format> values = <EncodeInput_Format> [
    JSON,
    YAML,
  ];

  static final $core.Map<$core.int, EncodeInput_Format> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EncodeInput_Format? valueOf($core.int value) => _byValue[value];

  const EncodeInput_Format._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
