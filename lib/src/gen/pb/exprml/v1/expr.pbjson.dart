//
//  Generated code. Do not modify.
//  source: exprml/v1/expr.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use exprDescriptor instead')
const Expr$json = {
  '1': 'Expr',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 11, '6': '.exprml.v1.Expr.Path', '10': 'path'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.exprml.v1.Value', '10': 'value'},
    {'1': 'kind', '3': 3, '4': 1, '5': 14, '6': '.exprml.v1.Expr.Kind', '10': 'kind'},
    {'1': 'eval', '3': 10, '4': 1, '5': 11, '6': '.exprml.v1.Eval', '10': 'eval'},
    {'1': 'scalar', '3': 11, '4': 1, '5': 11, '6': '.exprml.v1.Scalar', '10': 'scalar'},
    {'1': 'ref', '3': 12, '4': 1, '5': 11, '6': '.exprml.v1.Ref', '10': 'ref'},
    {'1': 'obj', '3': 13, '4': 1, '5': 11, '6': '.exprml.v1.Obj', '10': 'obj'},
    {'1': 'arr', '3': 14, '4': 1, '5': 11, '6': '.exprml.v1.Arr', '10': 'arr'},
    {'1': 'json', '3': 15, '4': 1, '5': 11, '6': '.exprml.v1.Json', '10': 'json'},
    {'1': 'iter', '3': 16, '4': 1, '5': 11, '6': '.exprml.v1.Iter', '10': 'iter'},
    {'1': 'elem', '3': 17, '4': 1, '5': 11, '6': '.exprml.v1.Elem', '10': 'elem'},
    {'1': 'call', '3': 18, '4': 1, '5': 11, '6': '.exprml.v1.Call', '10': 'call'},
    {'1': 'cases', '3': 19, '4': 1, '5': 11, '6': '.exprml.v1.Cases', '10': 'cases'},
    {'1': 'op_unary', '3': 20, '4': 1, '5': 11, '6': '.exprml.v1.OpUnary', '10': 'opUnary'},
    {'1': 'op_binary', '3': 21, '4': 1, '5': 11, '6': '.exprml.v1.OpBinary', '10': 'opBinary'},
    {'1': 'op_variadic', '3': 22, '4': 1, '5': 11, '6': '.exprml.v1.OpVariadic', '10': 'opVariadic'},
  ],
  '3': [Expr_Path$json],
  '4': [Expr_Kind$json],
};

@$core.Deprecated('Use exprDescriptor instead')
const Expr_Path$json = {
  '1': 'Path',
  '2': [
    {'1': 'pos', '3': 1, '4': 3, '5': 11, '6': '.exprml.v1.Expr.Path.Pos', '10': 'pos'},
  ],
  '3': [Expr_Path_Pos$json],
};

@$core.Deprecated('Use exprDescriptor instead')
const Expr_Path_Pos$json = {
  '1': 'Pos',
  '2': [
    {'1': 'index', '3': 1, '4': 1, '5': 3, '10': 'index'},
    {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
  ],
};

@$core.Deprecated('Use exprDescriptor instead')
const Expr_Kind$json = {
  '1': 'Kind',
  '2': [
    {'1': 'UNSPECIFIED', '2': 0},
    {'1': 'EVAL', '2': 10},
    {'1': 'SCALAR', '2': 11},
    {'1': 'REF', '2': 12},
    {'1': 'OBJ', '2': 13},
    {'1': 'ARR', '2': 14},
    {'1': 'JSON', '2': 15},
    {'1': 'ITER', '2': 16},
    {'1': 'ELEM', '2': 17},
    {'1': 'CALL', '2': 18},
    {'1': 'CASES', '2': 19},
    {'1': 'OP_UNARY', '2': 20},
    {'1': 'OP_BINARY', '2': 21},
    {'1': 'OP_VARIADIC', '2': 22},
  ],
};

/// Descriptor for `Expr`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exprDescriptor = $convert.base64Decode(
    'CgRFeHByEigKBHBhdGgYASABKAsyFC5leHBybWwudjEuRXhwci5QYXRoUgRwYXRoEiYKBXZhbH'
    'VlGAIgASgLMhAuZXhwcm1sLnYxLlZhbHVlUgV2YWx1ZRIoCgRraW5kGAMgASgOMhQuZXhwcm1s'
    'LnYxLkV4cHIuS2luZFIEa2luZBIjCgRldmFsGAogASgLMg8uZXhwcm1sLnYxLkV2YWxSBGV2YW'
    'wSKQoGc2NhbGFyGAsgASgLMhEuZXhwcm1sLnYxLlNjYWxhclIGc2NhbGFyEiAKA3JlZhgMIAEo'
    'CzIOLmV4cHJtbC52MS5SZWZSA3JlZhIgCgNvYmoYDSABKAsyDi5leHBybWwudjEuT2JqUgNvYm'
    'oSIAoDYXJyGA4gASgLMg4uZXhwcm1sLnYxLkFyclIDYXJyEiMKBGpzb24YDyABKAsyDy5leHBy'
    'bWwudjEuSnNvblIEanNvbhIjCgRpdGVyGBAgASgLMg8uZXhwcm1sLnYxLkl0ZXJSBGl0ZXISIw'
    'oEZWxlbRgRIAEoCzIPLmV4cHJtbC52MS5FbGVtUgRlbGVtEiMKBGNhbGwYEiABKAsyDy5leHBy'
    'bWwudjEuQ2FsbFIEY2FsbBImCgVjYXNlcxgTIAEoCzIQLmV4cHJtbC52MS5DYXNlc1IFY2FzZX'
    'MSLQoIb3BfdW5hcnkYFCABKAsyEi5leHBybWwudjEuT3BVbmFyeVIHb3BVbmFyeRIwCglvcF9i'
    'aW5hcnkYFSABKAsyEy5leHBybWwudjEuT3BCaW5hcnlSCG9wQmluYXJ5EjYKC29wX3ZhcmlhZG'
    'ljGBYgASgLMhUuZXhwcm1sLnYxLk9wVmFyaWFkaWNSCm9wVmFyaWFkaWMaYQoEUGF0aBIqCgNw'
    'b3MYASADKAsyGC5leHBybWwudjEuRXhwci5QYXRoLlBvc1IDcG9zGi0KA1BvcxIUCgVpbmRleB'
    'gBIAEoA1IFaW5kZXgSEAoDa2V5GAIgASgJUgNrZXkiqQEKBEtpbmQSDwoLVU5TUEVDSUZJRUQQ'
    'ABIICgRFVkFMEAoSCgoGU0NBTEFSEAsSBwoDUkVGEAwSBwoDT0JKEA0SBwoDQVJSEA4SCAoESl'
    'NPThAPEggKBElURVIQEBIICgRFTEVNEBESCAoEQ0FMTBASEgkKBUNBU0VTEBMSDAoIT1BfVU5B'
    'UlkQFBINCglPUF9CSU5BUlkQFRIPCgtPUF9WQVJJQURJQxAW');

@$core.Deprecated('Use evalDescriptor instead')
const Eval$json = {
  '1': 'Eval',
  '2': [
    {'1': 'eval', '3': 1, '4': 1, '5': 11, '6': '.exprml.v1.Expr', '10': 'eval'},
    {'1': 'where', '3': 2, '4': 3, '5': 11, '6': '.exprml.v1.Eval.Definition', '10': 'where'},
  ],
  '3': [Eval_Definition$json],
};

@$core.Deprecated('Use evalDescriptor instead')
const Eval_Definition$json = {
  '1': 'Definition',
  '2': [
    {'1': 'ident', '3': 1, '4': 1, '5': 9, '10': 'ident'},
    {'1': 'args', '3': 2, '4': 3, '5': 9, '10': 'args'},
    {'1': 'body', '3': 3, '4': 1, '5': 11, '6': '.exprml.v1.Expr', '10': 'body'},
  ],
};

/// Descriptor for `Eval`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List evalDescriptor = $convert.base64Decode(
    'CgRFdmFsEiMKBGV2YWwYASABKAsyDy5leHBybWwudjEuRXhwclIEZXZhbBIwCgV3aGVyZRgCIA'
    'MoCzIaLmV4cHJtbC52MS5FdmFsLkRlZmluaXRpb25SBXdoZXJlGlsKCkRlZmluaXRpb24SFAoF'
    'aWRlbnQYASABKAlSBWlkZW50EhIKBGFyZ3MYAiADKAlSBGFyZ3MSIwoEYm9keRgDIAEoCzIPLm'
    'V4cHJtbC52MS5FeHByUgRib2R5');

@$core.Deprecated('Use scalarDescriptor instead')
const Scalar$json = {
  '1': 'Scalar',
  '2': [
    {'1': 'scalar', '3': 1, '4': 1, '5': 11, '6': '.exprml.v1.Value', '10': 'scalar'},
  ],
};

/// Descriptor for `Scalar`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scalarDescriptor = $convert.base64Decode(
    'CgZTY2FsYXISKAoGc2NhbGFyGAEgASgLMhAuZXhwcm1sLnYxLlZhbHVlUgZzY2FsYXI=');

@$core.Deprecated('Use refDescriptor instead')
const Ref$json = {
  '1': 'Ref',
  '2': [
    {'1': 'ident', '3': 1, '4': 1, '5': 9, '10': 'ident'},
  ],
};

/// Descriptor for `Ref`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refDescriptor = $convert.base64Decode(
    'CgNSZWYSFAoFaWRlbnQYASABKAlSBWlkZW50');

@$core.Deprecated('Use objDescriptor instead')
const Obj$json = {
  '1': 'Obj',
  '2': [
    {'1': 'obj', '3': 1, '4': 3, '5': 11, '6': '.exprml.v1.Obj.ObjEntry', '10': 'obj'},
  ],
  '3': [Obj_ObjEntry$json],
};

@$core.Deprecated('Use objDescriptor instead')
const Obj_ObjEntry$json = {
  '1': 'ObjEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.exprml.v1.Expr', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `Obj`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List objDescriptor = $convert.base64Decode(
    'CgNPYmoSKQoDb2JqGAEgAygLMhcuZXhwcm1sLnYxLk9iai5PYmpFbnRyeVIDb2JqGkcKCE9iak'
    'VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EiUKBXZhbHVlGAIgASgLMg8uZXhwcm1sLnYxLkV4cHJS'
    'BXZhbHVlOgI4AQ==');

@$core.Deprecated('Use arrDescriptor instead')
const Arr$json = {
  '1': 'Arr',
  '2': [
    {'1': 'arr', '3': 1, '4': 3, '5': 11, '6': '.exprml.v1.Expr', '10': 'arr'},
  ],
};

/// Descriptor for `Arr`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List arrDescriptor = $convert.base64Decode(
    'CgNBcnISIQoDYXJyGAEgAygLMg8uZXhwcm1sLnYxLkV4cHJSA2Fycg==');

@$core.Deprecated('Use jsonDescriptor instead')
const Json$json = {
  '1': 'Json',
  '2': [
    {'1': 'json', '3': 1, '4': 1, '5': 11, '6': '.exprml.v1.Value', '10': 'json'},
  ],
};

/// Descriptor for `Json`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jsonDescriptor = $convert.base64Decode(
    'CgRKc29uEiQKBGpzb24YASABKAsyEC5leHBybWwudjEuVmFsdWVSBGpzb24=');

@$core.Deprecated('Use iterDescriptor instead')
const Iter$json = {
  '1': 'Iter',
  '2': [
    {'1': 'pos_ident', '3': 1, '4': 1, '5': 9, '10': 'posIdent'},
    {'1': 'elem_ident', '3': 2, '4': 1, '5': 9, '10': 'elemIdent'},
    {'1': 'col', '3': 3, '4': 1, '5': 11, '6': '.exprml.v1.Expr', '10': 'col'},
    {'1': 'do', '3': 4, '4': 1, '5': 11, '6': '.exprml.v1.Expr', '10': 'do'},
    {'1': 'if', '3': 5, '4': 1, '5': 11, '6': '.exprml.v1.Expr', '10': 'if'},
  ],
};

/// Descriptor for `Iter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iterDescriptor = $convert.base64Decode(
    'CgRJdGVyEhsKCXBvc19pZGVudBgBIAEoCVIIcG9zSWRlbnQSHQoKZWxlbV9pZGVudBgCIAEoCV'
    'IJZWxlbUlkZW50EiEKA2NvbBgDIAEoCzIPLmV4cHJtbC52MS5FeHByUgNjb2wSHwoCZG8YBCAB'
    'KAsyDy5leHBybWwudjEuRXhwclICZG8SHwoCaWYYBSABKAsyDy5leHBybWwudjEuRXhwclICaW'
    'Y=');

@$core.Deprecated('Use elemDescriptor instead')
const Elem$json = {
  '1': 'Elem',
  '2': [
    {'1': 'get', '3': 1, '4': 1, '5': 11, '6': '.exprml.v1.Expr', '10': 'get'},
    {'1': 'from', '3': 2, '4': 1, '5': 11, '6': '.exprml.v1.Expr', '10': 'from'},
  ],
};

/// Descriptor for `Elem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List elemDescriptor = $convert.base64Decode(
    'CgRFbGVtEiEKA2dldBgBIAEoCzIPLmV4cHJtbC52MS5FeHByUgNnZXQSIwoEZnJvbRgCIAEoCz'
    'IPLmV4cHJtbC52MS5FeHByUgRmcm9t');

@$core.Deprecated('Use callDescriptor instead')
const Call$json = {
  '1': 'Call',
  '2': [
    {'1': 'ident', '3': 1, '4': 1, '5': 9, '10': 'ident'},
    {'1': 'args', '3': 2, '4': 3, '5': 11, '6': '.exprml.v1.Call.ArgsEntry', '10': 'args'},
  ],
  '3': [Call_ArgsEntry$json],
};

@$core.Deprecated('Use callDescriptor instead')
const Call_ArgsEntry$json = {
  '1': 'ArgsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.exprml.v1.Expr', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `Call`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List callDescriptor = $convert.base64Decode(
    'CgRDYWxsEhQKBWlkZW50GAEgASgJUgVpZGVudBItCgRhcmdzGAIgAygLMhkuZXhwcm1sLnYxLk'
    'NhbGwuQXJnc0VudHJ5UgRhcmdzGkgKCUFyZ3NFbnRyeRIQCgNrZXkYASABKAlSA2tleRIlCgV2'
    'YWx1ZRgCIAEoCzIPLmV4cHJtbC52MS5FeHByUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use casesDescriptor instead')
const Cases$json = {
  '1': 'Cases',
  '2': [
    {'1': 'cases', '3': 1, '4': 3, '5': 11, '6': '.exprml.v1.Cases.Case', '10': 'cases'},
  ],
  '3': [Cases_Case$json],
};

@$core.Deprecated('Use casesDescriptor instead')
const Cases_Case$json = {
  '1': 'Case',
  '2': [
    {'1': 'is_otherwise', '3': 1, '4': 1, '5': 8, '10': 'isOtherwise'},
    {'1': 'when', '3': 2, '4': 1, '5': 11, '6': '.exprml.v1.Expr', '10': 'when'},
    {'1': 'then', '3': 3, '4': 1, '5': 11, '6': '.exprml.v1.Expr', '10': 'then'},
    {'1': 'otherwise', '3': 4, '4': 1, '5': 11, '6': '.exprml.v1.Expr', '10': 'otherwise'},
  ],
};

/// Descriptor for `Cases`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List casesDescriptor = $convert.base64Decode(
    'CgVDYXNlcxIrCgVjYXNlcxgBIAMoCzIVLmV4cHJtbC52MS5DYXNlcy5DYXNlUgVjYXNlcxqiAQ'
    'oEQ2FzZRIhCgxpc19vdGhlcndpc2UYASABKAhSC2lzT3RoZXJ3aXNlEiMKBHdoZW4YAiABKAsy'
    'Dy5leHBybWwudjEuRXhwclIEd2hlbhIjCgR0aGVuGAMgASgLMg8uZXhwcm1sLnYxLkV4cHJSBH'
    'RoZW4SLQoJb3RoZXJ3aXNlGAQgASgLMg8uZXhwcm1sLnYxLkV4cHJSCW90aGVyd2lzZQ==');

@$core.Deprecated('Use opUnaryDescriptor instead')
const OpUnary$json = {
  '1': 'OpUnary',
  '2': [
    {'1': 'op', '3': 1, '4': 1, '5': 14, '6': '.exprml.v1.OpUnary.Op', '10': 'op'},
    {'1': 'operand', '3': 2, '4': 1, '5': 11, '6': '.exprml.v1.Expr', '10': 'operand'},
  ],
  '4': [OpUnary_Op$json],
};

@$core.Deprecated('Use opUnaryDescriptor instead')
const OpUnary_Op$json = {
  '1': 'Op',
  '2': [
    {'1': 'UNSPECIFIED', '2': 0},
    {'1': 'LEN', '2': 1},
    {'1': 'NOT', '2': 2},
    {'1': 'FLAT', '2': 3},
    {'1': 'FLOOR', '2': 4},
    {'1': 'CEIL', '2': 5},
    {'1': 'ABORT', '2': 6},
  ],
};

/// Descriptor for `OpUnary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List opUnaryDescriptor = $convert.base64Decode(
    'CgdPcFVuYXJ5EiUKAm9wGAEgASgOMhUuZXhwcm1sLnYxLk9wVW5hcnkuT3BSAm9wEikKB29wZX'
    'JhbmQYAiABKAsyDy5leHBybWwudjEuRXhwclIHb3BlcmFuZCJRCgJPcBIPCgtVTlNQRUNJRklF'
    'RBAAEgcKA0xFThABEgcKA05PVBACEggKBEZMQVQQAxIJCgVGTE9PUhAEEggKBENFSUwQBRIJCg'
    'VBQk9SVBAG');

@$core.Deprecated('Use opBinaryDescriptor instead')
const OpBinary$json = {
  '1': 'OpBinary',
  '2': [
    {'1': 'op', '3': 1, '4': 1, '5': 14, '6': '.exprml.v1.OpBinary.Op', '10': 'op'},
    {'1': 'left', '3': 2, '4': 1, '5': 11, '6': '.exprml.v1.Expr', '10': 'left'},
    {'1': 'right', '3': 3, '4': 1, '5': 11, '6': '.exprml.v1.Expr', '10': 'right'},
  ],
  '4': [OpBinary_Op$json],
};

@$core.Deprecated('Use opBinaryDescriptor instead')
const OpBinary_Op$json = {
  '1': 'Op',
  '2': [
    {'1': 'UNSPECIFIED', '2': 0},
    {'1': 'SUB', '2': 1},
    {'1': 'DIV', '2': 2},
    {'1': 'EQ', '2': 3},
    {'1': 'NEQ', '2': 4},
    {'1': 'LT', '2': 5},
    {'1': 'LTE', '2': 6},
    {'1': 'GT', '2': 7},
    {'1': 'GTE', '2': 8},
  ],
};

/// Descriptor for `OpBinary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List opBinaryDescriptor = $convert.base64Decode(
    'CghPcEJpbmFyeRImCgJvcBgBIAEoDjIWLmV4cHJtbC52MS5PcEJpbmFyeS5PcFICb3ASIwoEbG'
    'VmdBgCIAEoCzIPLmV4cHJtbC52MS5FeHByUgRsZWZ0EiUKBXJpZ2h0GAMgASgLMg8uZXhwcm1s'
    'LnYxLkV4cHJSBXJpZ2h0IloKAk9wEg8KC1VOU1BFQ0lGSUVEEAASBwoDU1VCEAESBwoDRElWEA'
    'ISBgoCRVEQAxIHCgNORVEQBBIGCgJMVBAFEgcKA0xURRAGEgYKAkdUEAcSBwoDR1RFEAg=');

@$core.Deprecated('Use opVariadicDescriptor instead')
const OpVariadic$json = {
  '1': 'OpVariadic',
  '2': [
    {'1': 'op', '3': 1, '4': 1, '5': 14, '6': '.exprml.v1.OpVariadic.Op', '10': 'op'},
    {'1': 'operands', '3': 2, '4': 3, '5': 11, '6': '.exprml.v1.Expr', '10': 'operands'},
  ],
  '4': [OpVariadic_Op$json],
};

@$core.Deprecated('Use opVariadicDescriptor instead')
const OpVariadic_Op$json = {
  '1': 'Op',
  '2': [
    {'1': 'UNSPECIFIED', '2': 0},
    {'1': 'ADD', '2': 1},
    {'1': 'MUL', '2': 2},
    {'1': 'AND', '2': 3},
    {'1': 'OR', '2': 4},
    {'1': 'CAT', '2': 5},
    {'1': 'MIN', '2': 6},
    {'1': 'MAX', '2': 7},
    {'1': 'MERGE', '2': 8},
  ],
};

/// Descriptor for `OpVariadic`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List opVariadicDescriptor = $convert.base64Decode(
    'CgpPcFZhcmlhZGljEigKAm9wGAEgASgOMhguZXhwcm1sLnYxLk9wVmFyaWFkaWMuT3BSAm9wEi'
    'sKCG9wZXJhbmRzGAIgAygLMg8uZXhwcm1sLnYxLkV4cHJSCG9wZXJhbmRzIl4KAk9wEg8KC1VO'
    'U1BFQ0lGSUVEEAASBwoDQUREEAESBwoDTVVMEAISBwoDQU5EEAMSBgoCT1IQBBIHCgNDQVQQBR'
    'IHCgNNSU4QBhIHCgNNQVgQBxIJCgVNRVJHRRAI');

