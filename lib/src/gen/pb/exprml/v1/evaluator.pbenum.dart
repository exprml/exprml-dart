//
//  Generated code. Do not modify.
//  source: exprml/v1/evaluator.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Status of the evaluation.
class EvaluateOutput_Status extends $pb.ProtobufEnum {
  static const EvaluateOutput_Status OK = EvaluateOutput_Status._(0, _omitEnumNames ? '' : 'OK');
  static const EvaluateOutput_Status INVALID_INDEX = EvaluateOutput_Status._(100, _omitEnumNames ? '' : 'INVALID_INDEX');
  static const EvaluateOutput_Status INVALID_KEY = EvaluateOutput_Status._(101, _omitEnumNames ? '' : 'INVALID_KEY');
  static const EvaluateOutput_Status UNEXPECTED_TYPE = EvaluateOutput_Status._(102, _omitEnumNames ? '' : 'UNEXPECTED_TYPE');
  static const EvaluateOutput_Status ARGUMENT_MISMATCH = EvaluateOutput_Status._(103, _omitEnumNames ? '' : 'ARGUMENT_MISMATCH');
  static const EvaluateOutput_Status CASES_NOT_EXHAUSTIVE = EvaluateOutput_Status._(104, _omitEnumNames ? '' : 'CASES_NOT_EXHAUSTIVE');
  static const EvaluateOutput_Status REFERENCE_NOT_FOUND = EvaluateOutput_Status._(105, _omitEnumNames ? '' : 'REFERENCE_NOT_FOUND');
  static const EvaluateOutput_Status NOT_COMPARABLE = EvaluateOutput_Status._(106, _omitEnumNames ? '' : 'NOT_COMPARABLE');
  static const EvaluateOutput_Status NOT_FINITE_NUMBER = EvaluateOutput_Status._(107, _omitEnumNames ? '' : 'NOT_FINITE_NUMBER');
  static const EvaluateOutput_Status ABORTED = EvaluateOutput_Status._(108, _omitEnumNames ? '' : 'ABORTED');
  static const EvaluateOutput_Status UNKNOWN_ERROR = EvaluateOutput_Status._(109, _omitEnumNames ? '' : 'UNKNOWN_ERROR');

  static const $core.List<EvaluateOutput_Status> values = <EvaluateOutput_Status> [
    OK,
    INVALID_INDEX,
    INVALID_KEY,
    UNEXPECTED_TYPE,
    ARGUMENT_MISMATCH,
    CASES_NOT_EXHAUSTIVE,
    REFERENCE_NOT_FOUND,
    NOT_COMPARABLE,
    NOT_FINITE_NUMBER,
    ABORTED,
    UNKNOWN_ERROR,
  ];

  static final $core.Map<$core.int, EvaluateOutput_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EvaluateOutput_Status? valueOf($core.int value) => _byValue[value];

  const EvaluateOutput_Status._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
