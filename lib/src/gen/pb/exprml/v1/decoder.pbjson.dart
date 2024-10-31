//
//  Generated code. Do not modify.
//  source: exprml/v1/decoder.proto
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

@$core.Deprecated('Use decodeInputDescriptor instead')
const DecodeInput$json = {
  '1': 'DecodeInput',
  '2': [
    {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `DecodeInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List decodeInputDescriptor = $convert.base64Decode(
    'CgtEZWNvZGVJbnB1dBISCgR0ZXh0GAEgASgJUgR0ZXh0');

@$core.Deprecated('Use decodeOutputDescriptor instead')
const DecodeOutput$json = {
  '1': 'DecodeOutput',
  '2': [
    {'1': 'is_error', '3': 1, '4': 1, '5': 8, '10': 'isError'},
    {'1': 'error_message', '3': 2, '4': 1, '5': 9, '10': 'errorMessage'},
    {'1': 'value', '3': 3, '4': 1, '5': 11, '6': '.exprml.v1.Value', '10': 'value'},
  ],
};

/// Descriptor for `DecodeOutput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List decodeOutputDescriptor = $convert.base64Decode(
    'CgxEZWNvZGVPdXRwdXQSGQoIaXNfZXJyb3IYASABKAhSB2lzRXJyb3ISIwoNZXJyb3JfbWVzc2'
    'FnZRgCIAEoCVIMZXJyb3JNZXNzYWdlEiYKBXZhbHVlGAMgASgLMhAuZXhwcm1sLnYxLlZhbHVl'
    'UgV2YWx1ZQ==');

const $core.Map<$core.String, $core.dynamic> DecoderServiceBase$json = {
  '1': 'Decoder',
  '2': [
    {'1': 'Decode', '2': '.exprml.v1.DecodeInput', '3': '.exprml.v1.DecodeOutput', '4': {}},
  ],
};

@$core.Deprecated('Use decoderServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> DecoderServiceBase$messageJson = {
  '.exprml.v1.DecodeInput': DecodeInput$json,
  '.exprml.v1.DecodeOutput': DecodeOutput$json,
  '.exprml.v1.Value': $0.Value$json,
  '.exprml.v1.Value.ObjEntry': $0.Value_ObjEntry$json,
};

/// Descriptor for `Decoder`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List decoderServiceDescriptor = $convert.base64Decode(
    'CgdEZWNvZGVyEjsKBkRlY29kZRIWLmV4cHJtbC52MS5EZWNvZGVJbnB1dBoXLmV4cHJtbC52MS'
    '5EZWNvZGVPdXRwdXQiAA==');

