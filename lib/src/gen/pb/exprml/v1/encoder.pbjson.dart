//
//  Generated code. Do not modify.
//  source: exprml/v1/encoder.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

import 'value.pbjson.dart' as $0;

@$core.Deprecated('Use encodeInputDescriptor instead')
const EncodeInput$json = {
  '1': 'EncodeInput',
  '2': [
    {'1': 'format', '3': 1, '4': 1, '5': 14, '6': '.exprml.v1.EncodeInput.Format', '10': 'format'},
    {'1': 'value', '3': 3, '4': 1, '5': 11, '6': '.exprml.v1.Value', '10': 'value'},
  ],
  '4': [EncodeInput_Format$json],
};

@$core.Deprecated('Use encodeInputDescriptor instead')
const EncodeInput_Format$json = {
  '1': 'Format',
  '2': [
    {'1': 'YAML', '2': 0},
    {'1': 'JSON', '2': 1},
  ],
};

/// Descriptor for `EncodeInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encodeInputDescriptor = $convert.base64Decode(
    'CgtFbmNvZGVJbnB1dBI1CgZmb3JtYXQYASABKA4yHS5leHBybWwudjEuRW5jb2RlSW5wdXQuRm'
    '9ybWF0UgZmb3JtYXQSJgoFdmFsdWUYAyABKAsyEC5leHBybWwudjEuVmFsdWVSBXZhbHVlIhwK'
    'BkZvcm1hdBIICgRZQU1MEAASCAoESlNPThAB');

@$core.Deprecated('Use encodeOutputDescriptor instead')
const EncodeOutput$json = {
  '1': 'EncodeOutput',
  '2': [
    {'1': 'is_error', '3': 1, '4': 1, '5': 8, '10': 'isError'},
    {'1': 'error_message', '3': 2, '4': 1, '5': 9, '10': 'errorMessage'},
    {'1': 'result', '3': 3, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `EncodeOutput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encodeOutputDescriptor = $convert.base64Decode(
    'CgxFbmNvZGVPdXRwdXQSGQoIaXNfZXJyb3IYASABKAhSB2lzRXJyb3ISIwoNZXJyb3JfbWVzc2'
    'FnZRgCIAEoCVIMZXJyb3JNZXNzYWdlEhYKBnJlc3VsdBgDIAEoCVIGcmVzdWx0');

const $core.Map<$core.String, $core.dynamic> EncoderServiceBase$json = {
  '1': 'Encoder',
  '2': [
    {'1': 'Encode', '2': '.exprml.v1.EncodeInput', '3': '.exprml.v1.EncodeOutput', '4': {}},
  ],
};

@$core.Deprecated('Use encoderServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> EncoderServiceBase$messageJson = {
  '.exprml.v1.EncodeInput': EncodeInput$json,
  '.exprml.v1.Value': $0.Value$json,
  '.exprml.v1.Value.ObjEntry': $0.Value_ObjEntry$json,
  '.exprml.v1.EncodeOutput': EncodeOutput$json,
};

/// Descriptor for `Encoder`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List encoderServiceDescriptor = $convert.base64Decode(
    'CgdFbmNvZGVyEjsKBkVuY29kZRIWLmV4cHJtbC52MS5FbmNvZGVJbnB1dBoXLmV4cHJtbC52MS'
    '5FbmNvZGVPdXRwdXQiAA==');

