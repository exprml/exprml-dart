//
//  Generated code. Do not modify.
//  source: exprml/v1/expr.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Kind is the kind of the Node.
class Expr_Kind extends $pb.ProtobufEnum {
  static const Expr_Kind UNSPECIFIED = Expr_Kind._(0, _omitEnumNames ? '' : 'UNSPECIFIED');
  static const Expr_Kind EVAL = Expr_Kind._(10, _omitEnumNames ? '' : 'EVAL');
  static const Expr_Kind SCALAR = Expr_Kind._(11, _omitEnumNames ? '' : 'SCALAR');
  static const Expr_Kind REF = Expr_Kind._(12, _omitEnumNames ? '' : 'REF');
  static const Expr_Kind OBJ = Expr_Kind._(13, _omitEnumNames ? '' : 'OBJ');
  static const Expr_Kind ARR = Expr_Kind._(14, _omitEnumNames ? '' : 'ARR');
  static const Expr_Kind JSON = Expr_Kind._(15, _omitEnumNames ? '' : 'JSON');
  static const Expr_Kind ITER = Expr_Kind._(16, _omitEnumNames ? '' : 'ITER');
  static const Expr_Kind ELEM = Expr_Kind._(17, _omitEnumNames ? '' : 'ELEM');
  static const Expr_Kind CALL = Expr_Kind._(18, _omitEnumNames ? '' : 'CALL');
  static const Expr_Kind CASES = Expr_Kind._(19, _omitEnumNames ? '' : 'CASES');
  static const Expr_Kind OP_UNARY = Expr_Kind._(20, _omitEnumNames ? '' : 'OP_UNARY');
  static const Expr_Kind OP_BINARY = Expr_Kind._(21, _omitEnumNames ? '' : 'OP_BINARY');
  static const Expr_Kind OP_VARIADIC = Expr_Kind._(22, _omitEnumNames ? '' : 'OP_VARIADIC');

  static const $core.List<Expr_Kind> values = <Expr_Kind> [
    UNSPECIFIED,
    EVAL,
    SCALAR,
    REF,
    OBJ,
    ARR,
    JSON,
    ITER,
    ELEM,
    CALL,
    CASES,
    OP_UNARY,
    OP_BINARY,
    OP_VARIADIC,
  ];

  static final $core.Map<$core.int, Expr_Kind> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Expr_Kind? valueOf($core.int value) => _byValue[value];

  const Expr_Kind._($core.int v, $core.String n) : super(v, n);
}

/// Op is a operator.
class OpUnary_Op extends $pb.ProtobufEnum {
  static const OpUnary_Op UNSPECIFIED = OpUnary_Op._(0, _omitEnumNames ? '' : 'UNSPECIFIED');
  static const OpUnary_Op LEN = OpUnary_Op._(1, _omitEnumNames ? '' : 'LEN');
  static const OpUnary_Op NOT = OpUnary_Op._(2, _omitEnumNames ? '' : 'NOT');
  static const OpUnary_Op FLAT = OpUnary_Op._(3, _omitEnumNames ? '' : 'FLAT');
  static const OpUnary_Op FLOOR = OpUnary_Op._(4, _omitEnumNames ? '' : 'FLOOR');
  static const OpUnary_Op CEIL = OpUnary_Op._(5, _omitEnumNames ? '' : 'CEIL');
  static const OpUnary_Op ABORT = OpUnary_Op._(6, _omitEnumNames ? '' : 'ABORT');

  static const $core.List<OpUnary_Op> values = <OpUnary_Op> [
    UNSPECIFIED,
    LEN,
    NOT,
    FLAT,
    FLOOR,
    CEIL,
    ABORT,
  ];

  static final $core.Map<$core.int, OpUnary_Op> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OpUnary_Op? valueOf($core.int value) => _byValue[value];

  const OpUnary_Op._($core.int v, $core.String n) : super(v, n);
}

/// Op is a operator.
class OpBinary_Op extends $pb.ProtobufEnum {
  static const OpBinary_Op UNSPECIFIED = OpBinary_Op._(0, _omitEnumNames ? '' : 'UNSPECIFIED');
  static const OpBinary_Op SUB = OpBinary_Op._(1, _omitEnumNames ? '' : 'SUB');
  static const OpBinary_Op DIV = OpBinary_Op._(2, _omitEnumNames ? '' : 'DIV');
  static const OpBinary_Op EQ = OpBinary_Op._(3, _omitEnumNames ? '' : 'EQ');
  static const OpBinary_Op NEQ = OpBinary_Op._(4, _omitEnumNames ? '' : 'NEQ');
  static const OpBinary_Op LT = OpBinary_Op._(5, _omitEnumNames ? '' : 'LT');
  static const OpBinary_Op LTE = OpBinary_Op._(6, _omitEnumNames ? '' : 'LTE');
  static const OpBinary_Op GT = OpBinary_Op._(7, _omitEnumNames ? '' : 'GT');
  static const OpBinary_Op GTE = OpBinary_Op._(8, _omitEnumNames ? '' : 'GTE');

  static const $core.List<OpBinary_Op> values = <OpBinary_Op> [
    UNSPECIFIED,
    SUB,
    DIV,
    EQ,
    NEQ,
    LT,
    LTE,
    GT,
    GTE,
  ];

  static final $core.Map<$core.int, OpBinary_Op> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OpBinary_Op? valueOf($core.int value) => _byValue[value];

  const OpBinary_Op._($core.int v, $core.String n) : super(v, n);
}

/// Op is a operator.
class OpVariadic_Op extends $pb.ProtobufEnum {
  static const OpVariadic_Op UNSPECIFIED = OpVariadic_Op._(0, _omitEnumNames ? '' : 'UNSPECIFIED');
  static const OpVariadic_Op ADD = OpVariadic_Op._(1, _omitEnumNames ? '' : 'ADD');
  static const OpVariadic_Op MUL = OpVariadic_Op._(2, _omitEnumNames ? '' : 'MUL');
  static const OpVariadic_Op AND = OpVariadic_Op._(3, _omitEnumNames ? '' : 'AND');
  static const OpVariadic_Op OR = OpVariadic_Op._(4, _omitEnumNames ? '' : 'OR');
  static const OpVariadic_Op CAT = OpVariadic_Op._(5, _omitEnumNames ? '' : 'CAT');
  static const OpVariadic_Op MIN = OpVariadic_Op._(6, _omitEnumNames ? '' : 'MIN');
  static const OpVariadic_Op MAX = OpVariadic_Op._(7, _omitEnumNames ? '' : 'MAX');
  static const OpVariadic_Op MERGE = OpVariadic_Op._(8, _omitEnumNames ? '' : 'MERGE');

  static const $core.List<OpVariadic_Op> values = <OpVariadic_Op> [
    UNSPECIFIED,
    ADD,
    MUL,
    AND,
    OR,
    CAT,
    MIN,
    MAX,
    MERGE,
  ];

  static final $core.Map<$core.int, OpVariadic_Op> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OpVariadic_Op? valueOf($core.int value) => _byValue[value];

  const OpVariadic_Op._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
