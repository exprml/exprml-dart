//
//  Generated code. Do not modify.
//  source: exprml/v1/parser.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

import 'expr.pbjson.dart' as $3;
import 'value.pbjson.dart' as $0;

@$core.Deprecated('Use parseInputDescriptor instead')
const ParseInput$json = {
  '1': 'ParseInput',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 11, '6': '.exprml.v1.Value', '10': 'value'},
  ],
};

/// Descriptor for `ParseInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List parseInputDescriptor = $convert.base64Decode(
    'CgpQYXJzZUlucHV0EiYKBXZhbHVlGAEgASgLMhAuZXhwcm1sLnYxLlZhbHVlUgV2YWx1ZQ==');

@$core.Deprecated('Use parseOutputDescriptor instead')
const ParseOutput$json = {
  '1': 'ParseOutput',
  '2': [
    {'1': 'is_error', '3': 1, '4': 1, '5': 8, '10': 'isError'},
    {'1': 'error_message', '3': 2, '4': 1, '5': 9, '10': 'errorMessage'},
    {'1': 'expr', '3': 3, '4': 1, '5': 11, '6': '.exprml.v1.Expr', '10': 'expr'},
  ],
};

/// Descriptor for `ParseOutput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List parseOutputDescriptor = $convert.base64Decode(
    'CgtQYXJzZU91dHB1dBIZCghpc19lcnJvchgBIAEoCFIHaXNFcnJvchIjCg1lcnJvcl9tZXNzYW'
    'dlGAIgASgJUgxlcnJvck1lc3NhZ2USIwoEZXhwchgDIAEoCzIPLmV4cHJtbC52MS5FeHByUgRl'
    'eHBy');

const $core.Map<$core.String, $core.dynamic> ParserServiceBase$json = {
  '1': 'Parser',
  '2': [
    {'1': 'Parse', '2': '.exprml.v1.ParseInput', '3': '.exprml.v1.ParseOutput', '4': {}},
  ],
};

@$core.Deprecated('Use parserServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> ParserServiceBase$messageJson = {
  '.exprml.v1.ParseInput': ParseInput$json,
  '.exprml.v1.Value': $0.Value$json,
  '.exprml.v1.Value.ObjEntry': $0.Value_ObjEntry$json,
  '.exprml.v1.ParseOutput': ParseOutput$json,
  '.exprml.v1.Expr': $3.Expr$json,
  '.exprml.v1.Expr.Path': $3.Expr_Path$json,
  '.exprml.v1.Expr.Path.Pos': $3.Expr_Path_Pos$json,
  '.exprml.v1.Eval': $3.Eval$json,
  '.exprml.v1.Eval.Definition': $3.Eval_Definition$json,
  '.exprml.v1.Scalar': $3.Scalar$json,
  '.exprml.v1.Ref': $3.Ref$json,
  '.exprml.v1.Obj': $3.Obj$json,
  '.exprml.v1.Obj.ObjEntry': $3.Obj_ObjEntry$json,
  '.exprml.v1.Arr': $3.Arr$json,
  '.exprml.v1.Json': $3.Json$json,
  '.exprml.v1.Iter': $3.Iter$json,
  '.exprml.v1.Elem': $3.Elem$json,
  '.exprml.v1.Call': $3.Call$json,
  '.exprml.v1.Call.ArgsEntry': $3.Call_ArgsEntry$json,
  '.exprml.v1.Cases': $3.Cases$json,
  '.exprml.v1.Cases.Case': $3.Cases_Case$json,
  '.exprml.v1.OpUnary': $3.OpUnary$json,
  '.exprml.v1.OpBinary': $3.OpBinary$json,
  '.exprml.v1.OpVariadic': $3.OpVariadic$json,
};

/// Descriptor for `Parser`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List parserServiceDescriptor = $convert.base64Decode(
    'CgZQYXJzZXISOAoFUGFyc2USFS5leHBybWwudjEuUGFyc2VJbnB1dBoWLmV4cHJtbC52MS5QYX'
    'JzZU91dHB1dCIA');

