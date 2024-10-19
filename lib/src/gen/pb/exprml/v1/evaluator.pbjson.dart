//
//  Generated code. Do not modify.
//  source: exprml/v1/evaluator.proto
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

@$core.Deprecated('Use defStackDescriptor instead')
const DefStack$json = {
  '1': 'DefStack',
  '2': [
    {'1': 'parent', '3': 1, '4': 1, '5': 11, '6': '.exprml.v1.DefStack', '10': 'parent'},
    {'1': 'def', '3': 2, '4': 1, '5': 11, '6': '.exprml.v1.Eval.Definition', '10': 'def'},
  ],
};

/// Descriptor for `DefStack`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List defStackDescriptor = $convert.base64Decode(
    'CghEZWZTdGFjaxIrCgZwYXJlbnQYASABKAsyEy5leHBybWwudjEuRGVmU3RhY2tSBnBhcmVudB'
    'IsCgNkZWYYAiABKAsyGi5leHBybWwudjEuRXZhbC5EZWZpbml0aW9uUgNkZWY=');

@$core.Deprecated('Use evaluateInputDescriptor instead')
const EvaluateInput$json = {
  '1': 'EvaluateInput',
  '2': [
    {'1': 'def_stack', '3': 1, '4': 1, '5': 11, '6': '.exprml.v1.DefStack', '10': 'defStack'},
    {'1': 'expr', '3': 2, '4': 1, '5': 11, '6': '.exprml.v1.Expr', '10': 'expr'},
  ],
};

/// Descriptor for `EvaluateInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List evaluateInputDescriptor = $convert.base64Decode(
    'Cg1FdmFsdWF0ZUlucHV0EjAKCWRlZl9zdGFjaxgBIAEoCzITLmV4cHJtbC52MS5EZWZTdGFja1'
    'IIZGVmU3RhY2sSIwoEZXhwchgCIAEoCzIPLmV4cHJtbC52MS5FeHByUgRleHBy');

@$core.Deprecated('Use evaluateOutputDescriptor instead')
const EvaluateOutput$json = {
  '1': 'EvaluateOutput',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.exprml.v1.EvaluateOutput.Status', '10': 'status'},
    {'1': 'error_message', '3': 2, '4': 1, '5': 9, '10': 'errorMessage'},
    {'1': 'error_path', '3': 3, '4': 1, '5': 11, '6': '.exprml.v1.Expr.Path', '10': 'errorPath'},
    {'1': 'value', '3': 4, '4': 1, '5': 11, '6': '.exprml.v1.Value', '10': 'value'},
  ],
  '4': [EvaluateOutput_Status$json],
};

@$core.Deprecated('Use evaluateOutputDescriptor instead')
const EvaluateOutput_Status$json = {
  '1': 'Status',
  '2': [
    {'1': 'OK', '2': 0},
    {'1': 'INVALID_INDEX', '2': 100},
    {'1': 'INVALID_KEY', '2': 101},
    {'1': 'UNEXPECTED_TYPE', '2': 102},
    {'1': 'ARGUMENT_MISMATCH', '2': 103},
    {'1': 'CASES_NOT_EXHAUSTIVE', '2': 104},
    {'1': 'REFERENCE_NOT_FOUND', '2': 105},
    {'1': 'NOT_COMPARABLE', '2': 106},
    {'1': 'NOT_FINITE_NUMBER', '2': 107},
    {'1': 'ABORTED', '2': 108},
    {'1': 'UNKNOWN_ERROR', '2': 109},
  ],
};

/// Descriptor for `EvaluateOutput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List evaluateOutputDescriptor = $convert.base64Decode(
    'Cg5FdmFsdWF0ZU91dHB1dBI4CgZzdGF0dXMYASABKA4yIC5leHBybWwudjEuRXZhbHVhdGVPdX'
    'RwdXQuU3RhdHVzUgZzdGF0dXMSIwoNZXJyb3JfbWVzc2FnZRgCIAEoCVIMZXJyb3JNZXNzYWdl'
    'EjMKCmVycm9yX3BhdGgYAyABKAsyFC5leHBybWwudjEuRXhwci5QYXRoUgllcnJvclBhdGgSJg'
    'oFdmFsdWUYBCABKAsyEC5leHBybWwudjEuVmFsdWVSBXZhbHVlIt4BCgZTdGF0dXMSBgoCT0sQ'
    'ABIRCg1JTlZBTElEX0lOREVYEGQSDwoLSU5WQUxJRF9LRVkQZRITCg9VTkVYUEVDVEVEX1RZUE'
    'UQZhIVChFBUkdVTUVOVF9NSVNNQVRDSBBnEhgKFENBU0VTX05PVF9FWEhBVVNUSVZFEGgSFwoT'
    'UkVGRVJFTkNFX05PVF9GT1VORBBpEhIKDk5PVF9DT01QQVJBQkxFEGoSFQoRTk9UX0ZJTklURV'
    '9OVU1CRVIQaxILCgdBQk9SVEVEEGwSEQoNVU5LTk9XTl9FUlJPUhBt');

const $core.Map<$core.String, $core.dynamic> EvaluatorServiceBase$json = {
  '1': 'Evaluator',
  '2': [
    {'1': 'EvaluateExpr', '2': '.exprml.v1.EvaluateInput', '3': '.exprml.v1.EvaluateOutput', '4': {}},
    {'1': 'EvaluateEval', '2': '.exprml.v1.EvaluateInput', '3': '.exprml.v1.EvaluateOutput', '4': {}},
    {'1': 'EvaluateScalar', '2': '.exprml.v1.EvaluateInput', '3': '.exprml.v1.EvaluateOutput', '4': {}},
    {'1': 'EvaluateRef', '2': '.exprml.v1.EvaluateInput', '3': '.exprml.v1.EvaluateOutput', '4': {}},
    {'1': 'EvaluateObj', '2': '.exprml.v1.EvaluateInput', '3': '.exprml.v1.EvaluateOutput', '4': {}},
    {'1': 'EvaluateArr', '2': '.exprml.v1.EvaluateInput', '3': '.exprml.v1.EvaluateOutput', '4': {}},
    {'1': 'EvaluateJson', '2': '.exprml.v1.EvaluateInput', '3': '.exprml.v1.EvaluateOutput', '4': {}},
    {'1': 'EvaluateIter', '2': '.exprml.v1.EvaluateInput', '3': '.exprml.v1.EvaluateOutput', '4': {}},
    {'1': 'EvaluateElem', '2': '.exprml.v1.EvaluateInput', '3': '.exprml.v1.EvaluateOutput', '4': {}},
    {'1': 'EvaluateCall', '2': '.exprml.v1.EvaluateInput', '3': '.exprml.v1.EvaluateOutput', '4': {}},
    {'1': 'EvaluateCases', '2': '.exprml.v1.EvaluateInput', '3': '.exprml.v1.EvaluateOutput', '4': {}},
    {'1': 'EvaluateOpUnary', '2': '.exprml.v1.EvaluateInput', '3': '.exprml.v1.EvaluateOutput', '4': {}},
    {'1': 'EvaluateOpBinary', '2': '.exprml.v1.EvaluateInput', '3': '.exprml.v1.EvaluateOutput', '4': {}},
    {'1': 'EvaluateOpVariadic', '2': '.exprml.v1.EvaluateInput', '3': '.exprml.v1.EvaluateOutput', '4': {}},
  ],
};

@$core.Deprecated('Use evaluatorServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> EvaluatorServiceBase$messageJson = {
  '.exprml.v1.EvaluateInput': EvaluateInput$json,
  '.exprml.v1.DefStack': DefStack$json,
  '.exprml.v1.Eval.Definition': $3.Eval_Definition$json,
  '.exprml.v1.Expr': $3.Expr$json,
  '.exprml.v1.Expr.Path': $3.Expr_Path$json,
  '.exprml.v1.Expr.Path.Pos': $3.Expr_Path_Pos$json,
  '.exprml.v1.Value': $0.Value$json,
  '.exprml.v1.Value.ObjEntry': $0.Value_ObjEntry$json,
  '.exprml.v1.Eval': $3.Eval$json,
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
  '.exprml.v1.EvaluateOutput': EvaluateOutput$json,
};

/// Descriptor for `Evaluator`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List evaluatorServiceDescriptor = $convert.base64Decode(
    'CglFdmFsdWF0b3ISRQoMRXZhbHVhdGVFeHByEhguZXhwcm1sLnYxLkV2YWx1YXRlSW5wdXQaGS'
    '5leHBybWwudjEuRXZhbHVhdGVPdXRwdXQiABJFCgxFdmFsdWF0ZUV2YWwSGC5leHBybWwudjEu'
    'RXZhbHVhdGVJbnB1dBoZLmV4cHJtbC52MS5FdmFsdWF0ZU91dHB1dCIAEkcKDkV2YWx1YXRlU2'
    'NhbGFyEhguZXhwcm1sLnYxLkV2YWx1YXRlSW5wdXQaGS5leHBybWwudjEuRXZhbHVhdGVPdXRw'
    'dXQiABJECgtFdmFsdWF0ZVJlZhIYLmV4cHJtbC52MS5FdmFsdWF0ZUlucHV0GhkuZXhwcm1sLn'
    'YxLkV2YWx1YXRlT3V0cHV0IgASRAoLRXZhbHVhdGVPYmoSGC5leHBybWwudjEuRXZhbHVhdGVJ'
    'bnB1dBoZLmV4cHJtbC52MS5FdmFsdWF0ZU91dHB1dCIAEkQKC0V2YWx1YXRlQXJyEhguZXhwcm'
    '1sLnYxLkV2YWx1YXRlSW5wdXQaGS5leHBybWwudjEuRXZhbHVhdGVPdXRwdXQiABJFCgxFdmFs'
    'dWF0ZUpzb24SGC5leHBybWwudjEuRXZhbHVhdGVJbnB1dBoZLmV4cHJtbC52MS5FdmFsdWF0ZU'
    '91dHB1dCIAEkUKDEV2YWx1YXRlSXRlchIYLmV4cHJtbC52MS5FdmFsdWF0ZUlucHV0GhkuZXhw'
    'cm1sLnYxLkV2YWx1YXRlT3V0cHV0IgASRQoMRXZhbHVhdGVFbGVtEhguZXhwcm1sLnYxLkV2YW'
    'x1YXRlSW5wdXQaGS5leHBybWwudjEuRXZhbHVhdGVPdXRwdXQiABJFCgxFdmFsdWF0ZUNhbGwS'
    'GC5leHBybWwudjEuRXZhbHVhdGVJbnB1dBoZLmV4cHJtbC52MS5FdmFsdWF0ZU91dHB1dCIAEk'
    'YKDUV2YWx1YXRlQ2FzZXMSGC5leHBybWwudjEuRXZhbHVhdGVJbnB1dBoZLmV4cHJtbC52MS5F'
    'dmFsdWF0ZU91dHB1dCIAEkgKD0V2YWx1YXRlT3BVbmFyeRIYLmV4cHJtbC52MS5FdmFsdWF0ZU'
    'lucHV0GhkuZXhwcm1sLnYxLkV2YWx1YXRlT3V0cHV0IgASSQoQRXZhbHVhdGVPcEJpbmFyeRIY'
    'LmV4cHJtbC52MS5FdmFsdWF0ZUlucHV0GhkuZXhwcm1sLnYxLkV2YWx1YXRlT3V0cHV0IgASSw'
    'oSRXZhbHVhdGVPcFZhcmlhZGljEhguZXhwcm1sLnYxLkV2YWx1YXRlSW5wdXQaGS5leHBybWwu'
    'djEuRXZhbHVhdGVPdXRwdXQiAA==');

