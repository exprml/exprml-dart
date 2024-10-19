//
//  Generated code. Do not modify.
//  source: exprml/v1/value.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use valueDescriptor instead')
const Value$json = {
  '1': 'Value',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.exprml.v1.Value.Type', '10': 'type'},
    {'1': 'bool', '3': 2, '4': 1, '5': 8, '10': 'bool'},
    {'1': 'num', '3': 3, '4': 1, '5': 1, '10': 'num'},
    {'1': 'str', '3': 4, '4': 1, '5': 9, '10': 'str'},
    {'1': 'arr', '3': 5, '4': 3, '5': 11, '6': '.exprml.v1.Value', '10': 'arr'},
    {'1': 'obj', '3': 6, '4': 3, '5': 11, '6': '.exprml.v1.Value.ObjEntry', '10': 'obj'},
  ],
  '3': [Value_ObjEntry$json],
  '4': [Value_Type$json],
};

@$core.Deprecated('Use valueDescriptor instead')
const Value_ObjEntry$json = {
  '1': 'ObjEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.exprml.v1.Value', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use valueDescriptor instead')
const Value_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'UNSPECIFIED', '2': 0},
    {'1': 'NULL', '2': 1},
    {'1': 'BOOL', '2': 2},
    {'1': 'NUM', '2': 3},
    {'1': 'STR', '2': 4},
    {'1': 'ARR', '2': 5},
    {'1': 'OBJ', '2': 6},
  ],
};

/// Descriptor for `Value`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List valueDescriptor = $convert.base64Decode(
    'CgVWYWx1ZRIpCgR0eXBlGAEgASgOMhUuZXhwcm1sLnYxLlZhbHVlLlR5cGVSBHR5cGUSEgoEYm'
    '9vbBgCIAEoCFIEYm9vbBIQCgNudW0YAyABKAFSA251bRIQCgNzdHIYBCABKAlSA3N0chIiCgNh'
    'cnIYBSADKAsyEC5leHBybWwudjEuVmFsdWVSA2FychIrCgNvYmoYBiADKAsyGS5leHBybWwudj'
    'EuVmFsdWUuT2JqRW50cnlSA29iahpICghPYmpFbnRyeRIQCgNrZXkYASABKAlSA2tleRImCgV2'
    'YWx1ZRgCIAEoCzIQLmV4cHJtbC52MS5WYWx1ZVIFdmFsdWU6AjgBIk8KBFR5cGUSDwoLVU5TUE'
    'VDSUZJRUQQABIICgROVUxMEAESCAoEQk9PTBACEgcKA05VTRADEgcKA1NUUhAEEgcKA0FSUhAF'
    'EgcKA09CShAG');

