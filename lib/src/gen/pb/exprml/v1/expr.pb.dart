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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'expr.pbenum.dart';
import 'value.pb.dart' as $0;

export 'expr.pbenum.dart';

/// Pos represents a position in the path.
class Expr_Path_Pos extends $pb.GeneratedMessage {
  factory Expr_Path_Pos({
    $fixnum.Int64? index,
    $core.String? key,
  }) {
    final $result = create();
    if (index != null) {
      $result.index = index;
    }
    if (key != null) {
      $result.key = key;
    }
    return $result;
  }
  Expr_Path_Pos._() : super();
  factory Expr_Path_Pos.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Expr_Path_Pos.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Expr.Path.Pos', package: const $pb.PackageName(_omitMessageNames ? '' : 'exprml.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'index')
    ..aOS(2, _omitFieldNames ? '' : 'key')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Expr_Path_Pos clone() => Expr_Path_Pos()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Expr_Path_Pos copyWith(void Function(Expr_Path_Pos) updates) => super.copyWith((message) => updates(message as Expr_Path_Pos)) as Expr_Path_Pos;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Expr_Path_Pos create() => Expr_Path_Pos._();
  Expr_Path_Pos createEmptyInstance() => create();
  static $pb.PbList<Expr_Path_Pos> createRepeated() => $pb.PbList<Expr_Path_Pos>();
  @$core.pragma('dart2js:noInline')
  static Expr_Path_Pos getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Expr_Path_Pos>(create);
  static Expr_Path_Pos? _defaultInstance;

  /// Index is the index of the position.
  @$pb.TagNumber(1)
  $fixnum.Int64 get index => $_getI64(0);
  @$pb.TagNumber(1)
  set index($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearIndex() => clearField(1);

  /// Key is the key of the position.
  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);
}

/// Path represents a path to the Node.
class Expr_Path extends $pb.GeneratedMessage {
  factory Expr_Path({
    $core.Iterable<Expr_Path_Pos>? pos,
  }) {
    final $result = create();
    if (pos != null) {
      $result.pos.addAll(pos);
    }
    return $result;
  }
  Expr_Path._() : super();
  factory Expr_Path.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Expr_Path.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Expr.Path', package: const $pb.PackageName(_omitMessageNames ? '' : 'exprml.v1'), createEmptyInstance: create)
    ..pc<Expr_Path_Pos>(1, _omitFieldNames ? '' : 'pos', $pb.PbFieldType.PM, subBuilder: Expr_Path_Pos.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Expr_Path clone() => Expr_Path()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Expr_Path copyWith(void Function(Expr_Path) updates) => super.copyWith((message) => updates(message as Expr_Path)) as Expr_Path;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Expr_Path create() => Expr_Path._();
  Expr_Path createEmptyInstance() => create();
  static $pb.PbList<Expr_Path> createRepeated() => $pb.PbList<Expr_Path>();
  @$core.pragma('dart2js:noInline')
  static Expr_Path getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Expr_Path>(create);
  static Expr_Path? _defaultInstance;

  /// Pos is a position in the path.
  @$pb.TagNumber(1)
  $core.List<Expr_Path_Pos> get pos => $_getList(0);
}

class Expr extends $pb.GeneratedMessage {
  factory Expr({
    Expr_Path? path,
    $0.Value? value,
    Expr_Kind? kind,
    Eval? eval,
    Scalar? scalar,
    Ref? ref,
    Obj? obj,
    Arr? arr,
    Json? json,
    Iter? iter,
    Elem? elem,
    Call? call,
    Cases? cases,
    OpUnary? opUnary,
    OpBinary? opBinary,
    OpVariadic? opVariadic,
  }) {
    final $result = create();
    if (path != null) {
      $result.path = path;
    }
    if (value != null) {
      $result.value = value;
    }
    if (kind != null) {
      $result.kind = kind;
    }
    if (eval != null) {
      $result.eval = eval;
    }
    if (scalar != null) {
      $result.scalar = scalar;
    }
    if (ref != null) {
      $result.ref = ref;
    }
    if (obj != null) {
      $result.obj = obj;
    }
    if (arr != null) {
      $result.arr = arr;
    }
    if (json != null) {
      $result.json = json;
    }
    if (iter != null) {
      $result.iter = iter;
    }
    if (elem != null) {
      $result.elem = elem;
    }
    if (call != null) {
      $result.call = call;
    }
    if (cases != null) {
      $result.cases = cases;
    }
    if (opUnary != null) {
      $result.opUnary = opUnary;
    }
    if (opBinary != null) {
      $result.opBinary = opBinary;
    }
    if (opVariadic != null) {
      $result.opVariadic = opVariadic;
    }
    return $result;
  }
  Expr._() : super();
  factory Expr.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Expr.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Expr', package: const $pb.PackageName(_omitMessageNames ? '' : 'exprml.v1'), createEmptyInstance: create)
    ..aOM<Expr_Path>(1, _omitFieldNames ? '' : 'path', subBuilder: Expr_Path.create)
    ..aOM<$0.Value>(2, _omitFieldNames ? '' : 'value', subBuilder: $0.Value.create)
    ..e<Expr_Kind>(3, _omitFieldNames ? '' : 'kind', $pb.PbFieldType.OE, defaultOrMaker: Expr_Kind.UNSPECIFIED, valueOf: Expr_Kind.valueOf, enumValues: Expr_Kind.values)
    ..aOM<Eval>(10, _omitFieldNames ? '' : 'eval', subBuilder: Eval.create)
    ..aOM<Scalar>(11, _omitFieldNames ? '' : 'scalar', subBuilder: Scalar.create)
    ..aOM<Ref>(12, _omitFieldNames ? '' : 'ref', subBuilder: Ref.create)
    ..aOM<Obj>(13, _omitFieldNames ? '' : 'obj', subBuilder: Obj.create)
    ..aOM<Arr>(14, _omitFieldNames ? '' : 'arr', subBuilder: Arr.create)
    ..aOM<Json>(15, _omitFieldNames ? '' : 'json', subBuilder: Json.create)
    ..aOM<Iter>(16, _omitFieldNames ? '' : 'iter', subBuilder: Iter.create)
    ..aOM<Elem>(17, _omitFieldNames ? '' : 'elem', subBuilder: Elem.create)
    ..aOM<Call>(18, _omitFieldNames ? '' : 'call', subBuilder: Call.create)
    ..aOM<Cases>(19, _omitFieldNames ? '' : 'cases', subBuilder: Cases.create)
    ..aOM<OpUnary>(20, _omitFieldNames ? '' : 'opUnary', subBuilder: OpUnary.create)
    ..aOM<OpBinary>(21, _omitFieldNames ? '' : 'opBinary', subBuilder: OpBinary.create)
    ..aOM<OpVariadic>(22, _omitFieldNames ? '' : 'opVariadic', subBuilder: OpVariadic.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Expr clone() => Expr()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Expr copyWith(void Function(Expr) updates) => super.copyWith((message) => updates(message as Expr)) as Expr;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Expr create() => Expr._();
  Expr createEmptyInstance() => create();
  static $pb.PbList<Expr> createRepeated() => $pb.PbList<Expr>();
  @$core.pragma('dart2js:noInline')
  static Expr getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Expr>(create);
  static Expr? _defaultInstance;

  /// Path is the path to the Node.
  @$pb.TagNumber(1)
  Expr_Path get path => $_getN(0);
  @$pb.TagNumber(1)
  set path(Expr_Path v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => clearField(1);
  @$pb.TagNumber(1)
  Expr_Path ensurePath() => $_ensure(0);

  /// Value is the JSON value of the Node.
  @$pb.TagNumber(2)
  $0.Value get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($0.Value v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
  @$pb.TagNumber(2)
  $0.Value ensureValue() => $_ensure(1);

  /// Kind is the kind of the Expr.
  @$pb.TagNumber(3)
  Expr_Kind get kind => $_getN(2);
  @$pb.TagNumber(3)
  set kind(Expr_Kind v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasKind() => $_has(2);
  @$pb.TagNumber(3)
  void clearKind() => clearField(3);

  /// Eval is an Eval Expr.
  @$pb.TagNumber(10)
  Eval get eval => $_getN(3);
  @$pb.TagNumber(10)
  set eval(Eval v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasEval() => $_has(3);
  @$pb.TagNumber(10)
  void clearEval() => clearField(10);
  @$pb.TagNumber(10)
  Eval ensureEval() => $_ensure(3);

  /// Scalar is a Scalar Expr.
  @$pb.TagNumber(11)
  Scalar get scalar => $_getN(4);
  @$pb.TagNumber(11)
  set scalar(Scalar v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasScalar() => $_has(4);
  @$pb.TagNumber(11)
  void clearScalar() => clearField(11);
  @$pb.TagNumber(11)
  Scalar ensureScalar() => $_ensure(4);

  /// Ref is a Ref Expr.
  @$pb.TagNumber(12)
  Ref get ref => $_getN(5);
  @$pb.TagNumber(12)
  set ref(Ref v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasRef() => $_has(5);
  @$pb.TagNumber(12)
  void clearRef() => clearField(12);
  @$pb.TagNumber(12)
  Ref ensureRef() => $_ensure(5);

  /// Obj is an Obj Expr.
  @$pb.TagNumber(13)
  Obj get obj => $_getN(6);
  @$pb.TagNumber(13)
  set obj(Obj v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasObj() => $_has(6);
  @$pb.TagNumber(13)
  void clearObj() => clearField(13);
  @$pb.TagNumber(13)
  Obj ensureObj() => $_ensure(6);

  /// Arr is an Arr Expr.
  @$pb.TagNumber(14)
  Arr get arr => $_getN(7);
  @$pb.TagNumber(14)
  set arr(Arr v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasArr() => $_has(7);
  @$pb.TagNumber(14)
  void clearArr() => clearField(14);
  @$pb.TagNumber(14)
  Arr ensureArr() => $_ensure(7);

  /// Json is a Json Expr.
  @$pb.TagNumber(15)
  Json get json => $_getN(8);
  @$pb.TagNumber(15)
  set json(Json v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasJson() => $_has(8);
  @$pb.TagNumber(15)
  void clearJson() => clearField(15);
  @$pb.TagNumber(15)
  Json ensureJson() => $_ensure(8);

  /// Iter is an Iter Expr.
  @$pb.TagNumber(16)
  Iter get iter => $_getN(9);
  @$pb.TagNumber(16)
  set iter(Iter v) { setField(16, v); }
  @$pb.TagNumber(16)
  $core.bool hasIter() => $_has(9);
  @$pb.TagNumber(16)
  void clearIter() => clearField(16);
  @$pb.TagNumber(16)
  Iter ensureIter() => $_ensure(9);

  /// Elem is an Elem Expr.
  @$pb.TagNumber(17)
  Elem get elem => $_getN(10);
  @$pb.TagNumber(17)
  set elem(Elem v) { setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasElem() => $_has(10);
  @$pb.TagNumber(17)
  void clearElem() => clearField(17);
  @$pb.TagNumber(17)
  Elem ensureElem() => $_ensure(10);

  /// Call is a Call Expr.
  @$pb.TagNumber(18)
  Call get call => $_getN(11);
  @$pb.TagNumber(18)
  set call(Call v) { setField(18, v); }
  @$pb.TagNumber(18)
  $core.bool hasCall() => $_has(11);
  @$pb.TagNumber(18)
  void clearCall() => clearField(18);
  @$pb.TagNumber(18)
  Call ensureCall() => $_ensure(11);

  /// Cases is a Cases Expr.
  @$pb.TagNumber(19)
  Cases get cases => $_getN(12);
  @$pb.TagNumber(19)
  set cases(Cases v) { setField(19, v); }
  @$pb.TagNumber(19)
  $core.bool hasCases() => $_has(12);
  @$pb.TagNumber(19)
  void clearCases() => clearField(19);
  @$pb.TagNumber(19)
  Cases ensureCases() => $_ensure(12);

  /// OpUnary is an OpUnary Expr.
  @$pb.TagNumber(20)
  OpUnary get opUnary => $_getN(13);
  @$pb.TagNumber(20)
  set opUnary(OpUnary v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasOpUnary() => $_has(13);
  @$pb.TagNumber(20)
  void clearOpUnary() => clearField(20);
  @$pb.TagNumber(20)
  OpUnary ensureOpUnary() => $_ensure(13);

  /// OpBinary is an OpBinary Expr.
  @$pb.TagNumber(21)
  OpBinary get opBinary => $_getN(14);
  @$pb.TagNumber(21)
  set opBinary(OpBinary v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasOpBinary() => $_has(14);
  @$pb.TagNumber(21)
  void clearOpBinary() => clearField(21);
  @$pb.TagNumber(21)
  OpBinary ensureOpBinary() => $_ensure(14);

  /// OpVariadic is an OpVariadic Expr.
  @$pb.TagNumber(22)
  OpVariadic get opVariadic => $_getN(15);
  @$pb.TagNumber(22)
  set opVariadic(OpVariadic v) { setField(22, v); }
  @$pb.TagNumber(22)
  $core.bool hasOpVariadic() => $_has(15);
  @$pb.TagNumber(22)
  void clearOpVariadic() => clearField(22);
  @$pb.TagNumber(22)
  OpVariadic ensureOpVariadic() => $_ensure(15);
}

/// Definition is a function or variable definition.
class Eval_Definition extends $pb.GeneratedMessage {
  factory Eval_Definition({
    $core.String? ident,
    $core.Iterable<$core.String>? args,
    Expr? body,
  }) {
    final $result = create();
    if (ident != null) {
      $result.ident = ident;
    }
    if (args != null) {
      $result.args.addAll(args);
    }
    if (body != null) {
      $result.body = body;
    }
    return $result;
  }
  Eval_Definition._() : super();
  factory Eval_Definition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Eval_Definition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Eval.Definition', package: const $pb.PackageName(_omitMessageNames ? '' : 'exprml.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ident')
    ..pPS(2, _omitFieldNames ? '' : 'args')
    ..aOM<Expr>(3, _omitFieldNames ? '' : 'body', subBuilder: Expr.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Eval_Definition clone() => Eval_Definition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Eval_Definition copyWith(void Function(Eval_Definition) updates) => super.copyWith((message) => updates(message as Eval_Definition)) as Eval_Definition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Eval_Definition create() => Eval_Definition._();
  Eval_Definition createEmptyInstance() => create();
  static $pb.PbList<Eval_Definition> createRepeated() => $pb.PbList<Eval_Definition>();
  @$core.pragma('dart2js:noInline')
  static Eval_Definition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Eval_Definition>(create);
  static Eval_Definition? _defaultInstance;

  /// Ident is the identifier of the definition.
  @$pb.TagNumber(1)
  $core.String get ident => $_getSZ(0);
  @$pb.TagNumber(1)
  set ident($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdent() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdent() => clearField(1);

  /// Args is the list of arguments.
  @$pb.TagNumber(2)
  $core.List<$core.String> get args => $_getList(1);

  /// Body is the body of the definition.
  @$pb.TagNumber(3)
  Expr get body => $_getN(2);
  @$pb.TagNumber(3)
  set body(Expr v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasBody() => $_has(2);
  @$pb.TagNumber(3)
  void clearBody() => clearField(3);
  @$pb.TagNumber(3)
  Expr ensureBody() => $_ensure(2);
}

/// Eval is an Eval expression.
class Eval extends $pb.GeneratedMessage {
  factory Eval({
    Expr? eval,
    $core.Iterable<Eval_Definition>? where,
  }) {
    final $result = create();
    if (eval != null) {
      $result.eval = eval;
    }
    if (where != null) {
      $result.where.addAll(where);
    }
    return $result;
  }
  Eval._() : super();
  factory Eval.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Eval.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Eval', package: const $pb.PackageName(_omitMessageNames ? '' : 'exprml.v1'), createEmptyInstance: create)
    ..aOM<Expr>(1, _omitFieldNames ? '' : 'eval', subBuilder: Expr.create)
    ..pc<Eval_Definition>(2, _omitFieldNames ? '' : 'where', $pb.PbFieldType.PM, subBuilder: Eval_Definition.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Eval clone() => Eval()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Eval copyWith(void Function(Eval) updates) => super.copyWith((message) => updates(message as Eval)) as Eval;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Eval create() => Eval._();
  Eval createEmptyInstance() => create();
  static $pb.PbList<Eval> createRepeated() => $pb.PbList<Eval>();
  @$core.pragma('dart2js:noInline')
  static Eval getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Eval>(create);
  static Eval? _defaultInstance;

  /// Eval is an expression to evaluate.
  @$pb.TagNumber(1)
  Expr get eval => $_getN(0);
  @$pb.TagNumber(1)
  set eval(Expr v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEval() => $_has(0);
  @$pb.TagNumber(1)
  void clearEval() => clearField(1);
  @$pb.TagNumber(1)
  Expr ensureEval() => $_ensure(0);

  /// Where is a list of definitions.
  @$pb.TagNumber(2)
  $core.List<Eval_Definition> get where => $_getList(1);
}

/// Scalar is a Scalar expression.
class Scalar extends $pb.GeneratedMessage {
  factory Scalar({
    $0.Value? scalar,
  }) {
    final $result = create();
    if (scalar != null) {
      $result.scalar = scalar;
    }
    return $result;
  }
  Scalar._() : super();
  factory Scalar.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Scalar.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Scalar', package: const $pb.PackageName(_omitMessageNames ? '' : 'exprml.v1'), createEmptyInstance: create)
    ..aOM<$0.Value>(1, _omitFieldNames ? '' : 'scalar', subBuilder: $0.Value.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Scalar clone() => Scalar()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Scalar copyWith(void Function(Scalar) updates) => super.copyWith((message) => updates(message as Scalar)) as Scalar;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Scalar create() => Scalar._();
  Scalar createEmptyInstance() => create();
  static $pb.PbList<Scalar> createRepeated() => $pb.PbList<Scalar>();
  @$core.pragma('dart2js:noInline')
  static Scalar getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Scalar>(create);
  static Scalar? _defaultInstance;

  /// Scalar is a scalar value.
  @$pb.TagNumber(1)
  $0.Value get scalar => $_getN(0);
  @$pb.TagNumber(1)
  set scalar($0.Value v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasScalar() => $_has(0);
  @$pb.TagNumber(1)
  void clearScalar() => clearField(1);
  @$pb.TagNumber(1)
  $0.Value ensureScalar() => $_ensure(0);
}

/// Ref is a Ref expression.
class Ref extends $pb.GeneratedMessage {
  factory Ref({
    $core.String? ident,
  }) {
    final $result = create();
    if (ident != null) {
      $result.ident = ident;
    }
    return $result;
  }
  Ref._() : super();
  factory Ref.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Ref.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Ref', package: const $pb.PackageName(_omitMessageNames ? '' : 'exprml.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ident')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Ref clone() => Ref()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Ref copyWith(void Function(Ref) updates) => super.copyWith((message) => updates(message as Ref)) as Ref;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Ref create() => Ref._();
  Ref createEmptyInstance() => create();
  static $pb.PbList<Ref> createRepeated() => $pb.PbList<Ref>();
  @$core.pragma('dart2js:noInline')
  static Ref getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Ref>(create);
  static Ref? _defaultInstance;

  /// Ident is the identifier of the reference.
  @$pb.TagNumber(1)
  $core.String get ident => $_getSZ(0);
  @$pb.TagNumber(1)
  set ident($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdent() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdent() => clearField(1);
}

/// Obj is an Obj expression.
class Obj extends $pb.GeneratedMessage {
  factory Obj({
    $core.Map<$core.String, Expr>? obj,
  }) {
    final $result = create();
    if (obj != null) {
      $result.obj.addAll(obj);
    }
    return $result;
  }
  Obj._() : super();
  factory Obj.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Obj.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Obj', package: const $pb.PackageName(_omitMessageNames ? '' : 'exprml.v1'), createEmptyInstance: create)
    ..m<$core.String, Expr>(1, _omitFieldNames ? '' : 'obj', entryClassName: 'Obj.ObjEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: Expr.create, valueDefaultOrMaker: Expr.getDefault, packageName: const $pb.PackageName('exprml.v1'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Obj clone() => Obj()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Obj copyWith(void Function(Obj) updates) => super.copyWith((message) => updates(message as Obj)) as Obj;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Obj create() => Obj._();
  Obj createEmptyInstance() => create();
  static $pb.PbList<Obj> createRepeated() => $pb.PbList<Obj>();
  @$core.pragma('dart2js:noInline')
  static Obj getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Obj>(create);
  static Obj? _defaultInstance;

  /// Obj is an object.
  @$pb.TagNumber(1)
  $core.Map<$core.String, Expr> get obj => $_getMap(0);
}

/// Arr is an Arr expression.
class Arr extends $pb.GeneratedMessage {
  factory Arr({
    $core.Iterable<Expr>? arr,
  }) {
    final $result = create();
    if (arr != null) {
      $result.arr.addAll(arr);
    }
    return $result;
  }
  Arr._() : super();
  factory Arr.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Arr.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Arr', package: const $pb.PackageName(_omitMessageNames ? '' : 'exprml.v1'), createEmptyInstance: create)
    ..pc<Expr>(1, _omitFieldNames ? '' : 'arr', $pb.PbFieldType.PM, subBuilder: Expr.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Arr clone() => Arr()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Arr copyWith(void Function(Arr) updates) => super.copyWith((message) => updates(message as Arr)) as Arr;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Arr create() => Arr._();
  Arr createEmptyInstance() => create();
  static $pb.PbList<Arr> createRepeated() => $pb.PbList<Arr>();
  @$core.pragma('dart2js:noInline')
  static Arr getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Arr>(create);
  static Arr? _defaultInstance;

  /// Arr is an array.
  @$pb.TagNumber(1)
  $core.List<Expr> get arr => $_getList(0);
}

/// Json is a Json expression.
class Json extends $pb.GeneratedMessage {
  factory Json({
    $0.Value? json,
  }) {
    final $result = create();
    if (json != null) {
      $result.json = json;
    }
    return $result;
  }
  Json._() : super();
  factory Json.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Json.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Json', package: const $pb.PackageName(_omitMessageNames ? '' : 'exprml.v1'), createEmptyInstance: create)
    ..aOM<$0.Value>(1, _omitFieldNames ? '' : 'json', subBuilder: $0.Value.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Json clone() => Json()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Json copyWith(void Function(Json) updates) => super.copyWith((message) => updates(message as Json)) as Json;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Json create() => Json._();
  Json createEmptyInstance() => create();
  static $pb.PbList<Json> createRepeated() => $pb.PbList<Json>();
  @$core.pragma('dart2js:noInline')
  static Json getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Json>(create);
  static Json? _defaultInstance;

  /// Json is a JSON value.
  @$pb.TagNumber(1)
  $0.Value get json => $_getN(0);
  @$pb.TagNumber(1)
  set json($0.Value v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasJson() => $_has(0);
  @$pb.TagNumber(1)
  void clearJson() => clearField(1);
  @$pb.TagNumber(1)
  $0.Value ensureJson() => $_ensure(0);
}

/// Iter is an Iter expression.
class Iter extends $pb.GeneratedMessage {
  factory Iter({
    $core.String? posIdent,
    $core.String? elemIdent,
    Expr? col,
    Expr? do_4,
    Expr? if_5,
  }) {
    final $result = create();
    if (posIdent != null) {
      $result.posIdent = posIdent;
    }
    if (elemIdent != null) {
      $result.elemIdent = elemIdent;
    }
    if (col != null) {
      $result.col = col;
    }
    if (do_4 != null) {
      $result.do_4 = do_4;
    }
    if (if_5 != null) {
      $result.if_5 = if_5;
    }
    return $result;
  }
  Iter._() : super();
  factory Iter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Iter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Iter', package: const $pb.PackageName(_omitMessageNames ? '' : 'exprml.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'posIdent')
    ..aOS(2, _omitFieldNames ? '' : 'elemIdent')
    ..aOM<Expr>(3, _omitFieldNames ? '' : 'col', subBuilder: Expr.create)
    ..aOM<Expr>(4, _omitFieldNames ? '' : 'do', subBuilder: Expr.create)
    ..aOM<Expr>(5, _omitFieldNames ? '' : 'if', subBuilder: Expr.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Iter clone() => Iter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Iter copyWith(void Function(Iter) updates) => super.copyWith((message) => updates(message as Iter)) as Iter;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Iter create() => Iter._();
  Iter createEmptyInstance() => create();
  static $pb.PbList<Iter> createRepeated() => $pb.PbList<Iter>();
  @$core.pragma('dart2js:noInline')
  static Iter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Iter>(create);
  static Iter? _defaultInstance;

  /// PosIdent is the identifier of the position.
  @$pb.TagNumber(1)
  $core.String get posIdent => $_getSZ(0);
  @$pb.TagNumber(1)
  set posIdent($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPosIdent() => $_has(0);
  @$pb.TagNumber(1)
  void clearPosIdent() => clearField(1);

  /// ElemIdent is the identifier of the element.
  @$pb.TagNumber(2)
  $core.String get elemIdent => $_getSZ(1);
  @$pb.TagNumber(2)
  set elemIdent($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasElemIdent() => $_has(1);
  @$pb.TagNumber(2)
  void clearElemIdent() => clearField(2);

  /// Col is the collection to iterate.
  @$pb.TagNumber(3)
  Expr get col => $_getN(2);
  @$pb.TagNumber(3)
  set col(Expr v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCol() => $_has(2);
  @$pb.TagNumber(3)
  void clearCol() => clearField(3);
  @$pb.TagNumber(3)
  Expr ensureCol() => $_ensure(2);

  /// Do is the body of the iteration.
  @$pb.TagNumber(4)
  Expr get do_4 => $_getN(3);
  @$pb.TagNumber(4)
  set do_4(Expr v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasDo_4() => $_has(3);
  @$pb.TagNumber(4)
  void clearDo_4() => clearField(4);
  @$pb.TagNumber(4)
  Expr ensureDo_4() => $_ensure(3);

  /// If is the condition of the iteration.
  @$pb.TagNumber(5)
  Expr get if_5 => $_getN(4);
  @$pb.TagNumber(5)
  set if_5(Expr v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasIf_5() => $_has(4);
  @$pb.TagNumber(5)
  void clearIf_5() => clearField(5);
  @$pb.TagNumber(5)
  Expr ensureIf_5() => $_ensure(4);
}

/// Elem is an Elem expression.
class Elem extends $pb.GeneratedMessage {
  factory Elem({
    Expr? get,
    Expr? from,
  }) {
    final $result = create();
    if (get != null) {
      $result.get = get;
    }
    if (from != null) {
      $result.from = from;
    }
    return $result;
  }
  Elem._() : super();
  factory Elem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Elem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Elem', package: const $pb.PackageName(_omitMessageNames ? '' : 'exprml.v1'), createEmptyInstance: create)
    ..aOM<Expr>(1, _omitFieldNames ? '' : 'get', subBuilder: Expr.create)
    ..aOM<Expr>(2, _omitFieldNames ? '' : 'from', subBuilder: Expr.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Elem clone() => Elem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Elem copyWith(void Function(Elem) updates) => super.copyWith((message) => updates(message as Elem)) as Elem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Elem create() => Elem._();
  Elem createEmptyInstance() => create();
  static $pb.PbList<Elem> createRepeated() => $pb.PbList<Elem>();
  @$core.pragma('dart2js:noInline')
  static Elem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Elem>(create);
  static Elem? _defaultInstance;

  /// Get is the expression to get the element.
  @$pb.TagNumber(1)
  Expr get get => $_getN(0);
  @$pb.TagNumber(1)
  set get(Expr v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGet() => $_has(0);
  @$pb.TagNumber(1)
  void clearGet() => clearField(1);
  @$pb.TagNumber(1)
  Expr ensureGet() => $_ensure(0);

  /// From is the index to get the element.
  @$pb.TagNumber(2)
  Expr get from => $_getN(1);
  @$pb.TagNumber(2)
  set from(Expr v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFrom() => $_has(1);
  @$pb.TagNumber(2)
  void clearFrom() => clearField(2);
  @$pb.TagNumber(2)
  Expr ensureFrom() => $_ensure(1);
}

/// Call is a Call expression.
class Call extends $pb.GeneratedMessage {
  factory Call({
    $core.String? ident,
    $core.Map<$core.String, Expr>? args,
  }) {
    final $result = create();
    if (ident != null) {
      $result.ident = ident;
    }
    if (args != null) {
      $result.args.addAll(args);
    }
    return $result;
  }
  Call._() : super();
  factory Call.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Call.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Call', package: const $pb.PackageName(_omitMessageNames ? '' : 'exprml.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ident')
    ..m<$core.String, Expr>(2, _omitFieldNames ? '' : 'args', entryClassName: 'Call.ArgsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: Expr.create, valueDefaultOrMaker: Expr.getDefault, packageName: const $pb.PackageName('exprml.v1'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Call clone() => Call()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Call copyWith(void Function(Call) updates) => super.copyWith((message) => updates(message as Call)) as Call;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Call create() => Call._();
  Call createEmptyInstance() => create();
  static $pb.PbList<Call> createRepeated() => $pb.PbList<Call>();
  @$core.pragma('dart2js:noInline')
  static Call getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Call>(create);
  static Call? _defaultInstance;

  /// Ident is the identifier of the call.
  @$pb.TagNumber(1)
  $core.String get ident => $_getSZ(0);
  @$pb.TagNumber(1)
  set ident($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdent() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdent() => clearField(1);

  /// Args is the list of arguments.
  @$pb.TagNumber(2)
  $core.Map<$core.String, Expr> get args => $_getMap(1);
}

/// Case is a conditional branch.
class Cases_Case extends $pb.GeneratedMessage {
  factory Cases_Case({
    $core.bool? isOtherwise,
    Expr? when,
    Expr? then,
    Expr? otherwise,
  }) {
    final $result = create();
    if (isOtherwise != null) {
      $result.isOtherwise = isOtherwise;
    }
    if (when != null) {
      $result.when = when;
    }
    if (then != null) {
      $result.then = then;
    }
    if (otherwise != null) {
      $result.otherwise = otherwise;
    }
    return $result;
  }
  Cases_Case._() : super();
  factory Cases_Case.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Cases_Case.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Cases.Case', package: const $pb.PackageName(_omitMessageNames ? '' : 'exprml.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isOtherwise')
    ..aOM<Expr>(2, _omitFieldNames ? '' : 'when', subBuilder: Expr.create)
    ..aOM<Expr>(3, _omitFieldNames ? '' : 'then', subBuilder: Expr.create)
    ..aOM<Expr>(4, _omitFieldNames ? '' : 'otherwise', subBuilder: Expr.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Cases_Case clone() => Cases_Case()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Cases_Case copyWith(void Function(Cases_Case) updates) => super.copyWith((message) => updates(message as Cases_Case)) as Cases_Case;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Cases_Case create() => Cases_Case._();
  Cases_Case createEmptyInstance() => create();
  static $pb.PbList<Cases_Case> createRepeated() => $pb.PbList<Cases_Case>();
  @$core.pragma('dart2js:noInline')
  static Cases_Case getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Cases_Case>(create);
  static Cases_Case? _defaultInstance;

  /// Whether the case is otherwise.
  @$pb.TagNumber(1)
  $core.bool get isOtherwise => $_getBF(0);
  @$pb.TagNumber(1)
  set isOtherwise($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsOtherwise() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsOtherwise() => clearField(1);

  /// When is the condition of the case.
  @$pb.TagNumber(2)
  Expr get when => $_getN(1);
  @$pb.TagNumber(2)
  set when(Expr v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasWhen() => $_has(1);
  @$pb.TagNumber(2)
  void clearWhen() => clearField(2);
  @$pb.TagNumber(2)
  Expr ensureWhen() => $_ensure(1);

  /// Then is the body of the case.
  @$pb.TagNumber(3)
  Expr get then => $_getN(2);
  @$pb.TagNumber(3)
  set then(Expr v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasThen() => $_has(2);
  @$pb.TagNumber(3)
  void clearThen() => clearField(3);
  @$pb.TagNumber(3)
  Expr ensureThen() => $_ensure(2);

  /// Otherwise is the body of the case.
  @$pb.TagNumber(4)
  Expr get otherwise => $_getN(3);
  @$pb.TagNumber(4)
  set otherwise(Expr v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasOtherwise() => $_has(3);
  @$pb.TagNumber(4)
  void clearOtherwise() => clearField(4);
  @$pb.TagNumber(4)
  Expr ensureOtherwise() => $_ensure(3);
}

/// Cases is a Cases expression.
class Cases extends $pb.GeneratedMessage {
  factory Cases({
    $core.Iterable<Cases_Case>? cases,
  }) {
    final $result = create();
    if (cases != null) {
      $result.cases.addAll(cases);
    }
    return $result;
  }
  Cases._() : super();
  factory Cases.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Cases.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Cases', package: const $pb.PackageName(_omitMessageNames ? '' : 'exprml.v1'), createEmptyInstance: create)
    ..pc<Cases_Case>(1, _omitFieldNames ? '' : 'cases', $pb.PbFieldType.PM, subBuilder: Cases_Case.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Cases clone() => Cases()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Cases copyWith(void Function(Cases) updates) => super.copyWith((message) => updates(message as Cases)) as Cases;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Cases create() => Cases._();
  Cases createEmptyInstance() => create();
  static $pb.PbList<Cases> createRepeated() => $pb.PbList<Cases>();
  @$core.pragma('dart2js:noInline')
  static Cases getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Cases>(create);
  static Cases? _defaultInstance;

  /// Cases is a list of cases.
  @$pb.TagNumber(1)
  $core.List<Cases_Case> get cases => $_getList(0);
}

/// OpUnary is an OpUnary expression.
class OpUnary extends $pb.GeneratedMessage {
  factory OpUnary({
    OpUnary_Op? op,
    Expr? operand,
  }) {
    final $result = create();
    if (op != null) {
      $result.op = op;
    }
    if (operand != null) {
      $result.operand = operand;
    }
    return $result;
  }
  OpUnary._() : super();
  factory OpUnary.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OpUnary.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OpUnary', package: const $pb.PackageName(_omitMessageNames ? '' : 'exprml.v1'), createEmptyInstance: create)
    ..e<OpUnary_Op>(1, _omitFieldNames ? '' : 'op', $pb.PbFieldType.OE, defaultOrMaker: OpUnary_Op.UNSPECIFIED, valueOf: OpUnary_Op.valueOf, enumValues: OpUnary_Op.values)
    ..aOM<Expr>(2, _omitFieldNames ? '' : 'operand', subBuilder: Expr.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OpUnary clone() => OpUnary()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OpUnary copyWith(void Function(OpUnary) updates) => super.copyWith((message) => updates(message as OpUnary)) as OpUnary;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OpUnary create() => OpUnary._();
  OpUnary createEmptyInstance() => create();
  static $pb.PbList<OpUnary> createRepeated() => $pb.PbList<OpUnary>();
  @$core.pragma('dart2js:noInline')
  static OpUnary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OpUnary>(create);
  static OpUnary? _defaultInstance;

  /// Op is the operator.
  @$pb.TagNumber(1)
  OpUnary_Op get op => $_getN(0);
  @$pb.TagNumber(1)
  set op(OpUnary_Op v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOp() => $_has(0);
  @$pb.TagNumber(1)
  void clearOp() => clearField(1);

  /// Operand is the operand.
  @$pb.TagNumber(2)
  Expr get operand => $_getN(1);
  @$pb.TagNumber(2)
  set operand(Expr v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOperand() => $_has(1);
  @$pb.TagNumber(2)
  void clearOperand() => clearField(2);
  @$pb.TagNumber(2)
  Expr ensureOperand() => $_ensure(1);
}

/// OpBinary is an OpBinary expression.
class OpBinary extends $pb.GeneratedMessage {
  factory OpBinary({
    OpBinary_Op? op,
    Expr? left,
    Expr? right,
  }) {
    final $result = create();
    if (op != null) {
      $result.op = op;
    }
    if (left != null) {
      $result.left = left;
    }
    if (right != null) {
      $result.right = right;
    }
    return $result;
  }
  OpBinary._() : super();
  factory OpBinary.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OpBinary.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OpBinary', package: const $pb.PackageName(_omitMessageNames ? '' : 'exprml.v1'), createEmptyInstance: create)
    ..e<OpBinary_Op>(1, _omitFieldNames ? '' : 'op', $pb.PbFieldType.OE, defaultOrMaker: OpBinary_Op.UNSPECIFIED, valueOf: OpBinary_Op.valueOf, enumValues: OpBinary_Op.values)
    ..aOM<Expr>(2, _omitFieldNames ? '' : 'left', subBuilder: Expr.create)
    ..aOM<Expr>(3, _omitFieldNames ? '' : 'right', subBuilder: Expr.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OpBinary clone() => OpBinary()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OpBinary copyWith(void Function(OpBinary) updates) => super.copyWith((message) => updates(message as OpBinary)) as OpBinary;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OpBinary create() => OpBinary._();
  OpBinary createEmptyInstance() => create();
  static $pb.PbList<OpBinary> createRepeated() => $pb.PbList<OpBinary>();
  @$core.pragma('dart2js:noInline')
  static OpBinary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OpBinary>(create);
  static OpBinary? _defaultInstance;

  /// Op is the operator.
  @$pb.TagNumber(1)
  OpBinary_Op get op => $_getN(0);
  @$pb.TagNumber(1)
  set op(OpBinary_Op v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOp() => $_has(0);
  @$pb.TagNumber(1)
  void clearOp() => clearField(1);

  /// Left is the left operand.
  @$pb.TagNumber(2)
  Expr get left => $_getN(1);
  @$pb.TagNumber(2)
  set left(Expr v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLeft() => $_has(1);
  @$pb.TagNumber(2)
  void clearLeft() => clearField(2);
  @$pb.TagNumber(2)
  Expr ensureLeft() => $_ensure(1);

  /// Right is the right operand.
  @$pb.TagNumber(3)
  Expr get right => $_getN(2);
  @$pb.TagNumber(3)
  set right(Expr v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRight() => $_has(2);
  @$pb.TagNumber(3)
  void clearRight() => clearField(3);
  @$pb.TagNumber(3)
  Expr ensureRight() => $_ensure(2);
}

/// OpVariadic is an OpVariadic expression.
class OpVariadic extends $pb.GeneratedMessage {
  factory OpVariadic({
    OpVariadic_Op? op,
    $core.Iterable<Expr>? operands,
  }) {
    final $result = create();
    if (op != null) {
      $result.op = op;
    }
    if (operands != null) {
      $result.operands.addAll(operands);
    }
    return $result;
  }
  OpVariadic._() : super();
  factory OpVariadic.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OpVariadic.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OpVariadic', package: const $pb.PackageName(_omitMessageNames ? '' : 'exprml.v1'), createEmptyInstance: create)
    ..e<OpVariadic_Op>(1, _omitFieldNames ? '' : 'op', $pb.PbFieldType.OE, defaultOrMaker: OpVariadic_Op.UNSPECIFIED, valueOf: OpVariadic_Op.valueOf, enumValues: OpVariadic_Op.values)
    ..pc<Expr>(2, _omitFieldNames ? '' : 'operands', $pb.PbFieldType.PM, subBuilder: Expr.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OpVariadic clone() => OpVariadic()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OpVariadic copyWith(void Function(OpVariadic) updates) => super.copyWith((message) => updates(message as OpVariadic)) as OpVariadic;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OpVariadic create() => OpVariadic._();
  OpVariadic createEmptyInstance() => create();
  static $pb.PbList<OpVariadic> createRepeated() => $pb.PbList<OpVariadic>();
  @$core.pragma('dart2js:noInline')
  static OpVariadic getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OpVariadic>(create);
  static OpVariadic? _defaultInstance;

  /// Op is the operator.
  @$pb.TagNumber(1)
  OpVariadic_Op get op => $_getN(0);
  @$pb.TagNumber(1)
  set op(OpVariadic_Op v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOp() => $_has(0);
  @$pb.TagNumber(1)
  void clearOp() => clearField(1);

  /// Operands is the list of operands.
  @$pb.TagNumber(2)
  $core.List<Expr> get operands => $_getList(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
