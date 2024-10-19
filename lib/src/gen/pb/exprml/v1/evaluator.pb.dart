//
//  Generated code. Do not modify.
//  source: exprml/v1/evaluator.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'evaluator.pbenum.dart';
import 'expr.pb.dart' as $3;
import 'value.pb.dart' as $0;

export 'evaluator.pbenum.dart';

/// FunDefList is a list of function definitions.
class DefStack extends $pb.GeneratedMessage {
  factory DefStack({
    DefStack? parent,
    $3.Eval_Definition? def,
  }) {
    final $result = create();
    if (parent != null) {
      $result.parent = parent;
    }
    if (def != null) {
      $result.def = def;
    }
    return $result;
  }
  DefStack._() : super();
  factory DefStack.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DefStack.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DefStack', package: const $pb.PackageName(_omitMessageNames ? '' : 'exprml.v1'), createEmptyInstance: create)
    ..aOM<DefStack>(1, _omitFieldNames ? '' : 'parent', subBuilder: DefStack.create)
    ..aOM<$3.Eval_Definition>(2, _omitFieldNames ? '' : 'def', subBuilder: $3.Eval_Definition.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DefStack clone() => DefStack()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DefStack copyWith(void Function(DefStack) updates) => super.copyWith((message) => updates(message as DefStack)) as DefStack;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DefStack create() => DefStack._();
  DefStack createEmptyInstance() => create();
  static $pb.PbList<DefStack> createRepeated() => $pb.PbList<DefStack>();
  @$core.pragma('dart2js:noInline')
  static DefStack getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DefStack>(create);
  static DefStack? _defaultInstance;

  /// Parent definition list.
  @$pb.TagNumber(1)
  DefStack get parent => $_getN(0);
  @$pb.TagNumber(1)
  set parent(DefStack v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasParent() => $_has(0);
  @$pb.TagNumber(1)
  void clearParent() => clearField(1);
  @$pb.TagNumber(1)
  DefStack ensureParent() => $_ensure(0);

  /// Definition.
  @$pb.TagNumber(2)
  $3.Eval_Definition get def => $_getN(1);
  @$pb.TagNumber(2)
  set def($3.Eval_Definition v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDef() => $_has(1);
  @$pb.TagNumber(2)
  void clearDef() => clearField(2);
  @$pb.TagNumber(2)
  $3.Eval_Definition ensureDef() => $_ensure(1);
}

/// EvaluateInput is the input message for the EvaluateExpr method.
class EvaluateInput extends $pb.GeneratedMessage {
  factory EvaluateInput({
    DefStack? defStack,
    $3.Expr? expr,
  }) {
    final $result = create();
    if (defStack != null) {
      $result.defStack = defStack;
    }
    if (expr != null) {
      $result.expr = expr;
    }
    return $result;
  }
  EvaluateInput._() : super();
  factory EvaluateInput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvaluateInput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EvaluateInput', package: const $pb.PackageName(_omitMessageNames ? '' : 'exprml.v1'), createEmptyInstance: create)
    ..aOM<DefStack>(1, _omitFieldNames ? '' : 'defStack', subBuilder: DefStack.create)
    ..aOM<$3.Expr>(2, _omitFieldNames ? '' : 'expr', subBuilder: $3.Expr.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EvaluateInput clone() => EvaluateInput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EvaluateInput copyWith(void Function(EvaluateInput) updates) => super.copyWith((message) => updates(message as EvaluateInput)) as EvaluateInput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EvaluateInput create() => EvaluateInput._();
  EvaluateInput createEmptyInstance() => create();
  static $pb.PbList<EvaluateInput> createRepeated() => $pb.PbList<EvaluateInput>();
  @$core.pragma('dart2js:noInline')
  static EvaluateInput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EvaluateInput>(create);
  static EvaluateInput? _defaultInstance;

  /// Function definition stack.
  @$pb.TagNumber(1)
  DefStack get defStack => $_getN(0);
  @$pb.TagNumber(1)
  set defStack(DefStack v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDefStack() => $_has(0);
  @$pb.TagNumber(1)
  void clearDefStack() => clearField(1);
  @$pb.TagNumber(1)
  DefStack ensureDefStack() => $_ensure(0);

  /// Expression to evaluate.
  @$pb.TagNumber(2)
  $3.Expr get expr => $_getN(1);
  @$pb.TagNumber(2)
  set expr($3.Expr v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasExpr() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpr() => clearField(2);
  @$pb.TagNumber(2)
  $3.Expr ensureExpr() => $_ensure(1);
}

/// EvaluateOutput is the output message for the EvaluateExpr method.
class EvaluateOutput extends $pb.GeneratedMessage {
  factory EvaluateOutput({
    EvaluateOutput_Status? status,
    $core.String? errorMessage,
    $3.Expr_Path? errorPath,
    $0.Value? value,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    if (errorMessage != null) {
      $result.errorMessage = errorMessage;
    }
    if (errorPath != null) {
      $result.errorPath = errorPath;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  EvaluateOutput._() : super();
  factory EvaluateOutput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvaluateOutput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EvaluateOutput', package: const $pb.PackageName(_omitMessageNames ? '' : 'exprml.v1'), createEmptyInstance: create)
    ..e<EvaluateOutput_Status>(1, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: EvaluateOutput_Status.OK, valueOf: EvaluateOutput_Status.valueOf, enumValues: EvaluateOutput_Status.values)
    ..aOS(2, _omitFieldNames ? '' : 'errorMessage')
    ..aOM<$3.Expr_Path>(3, _omitFieldNames ? '' : 'errorPath', subBuilder: $3.Expr_Path.create)
    ..aOM<$0.Value>(4, _omitFieldNames ? '' : 'value', subBuilder: $0.Value.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EvaluateOutput clone() => EvaluateOutput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EvaluateOutput copyWith(void Function(EvaluateOutput) updates) => super.copyWith((message) => updates(message as EvaluateOutput)) as EvaluateOutput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EvaluateOutput create() => EvaluateOutput._();
  EvaluateOutput createEmptyInstance() => create();
  static $pb.PbList<EvaluateOutput> createRepeated() => $pb.PbList<EvaluateOutput>();
  @$core.pragma('dart2js:noInline')
  static EvaluateOutput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EvaluateOutput>(create);
  static EvaluateOutput? _defaultInstance;

  /// Status of the evaluation.
  @$pb.TagNumber(1)
  EvaluateOutput_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(EvaluateOutput_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  /// Error message if status is not OK.
  @$pb.TagNumber(2)
  $core.String get errorMessage => $_getSZ(1);
  @$pb.TagNumber(2)
  set errorMessage($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrorMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrorMessage() => clearField(2);

  /// Error path if status is not OK.
  @$pb.TagNumber(3)
  $3.Expr_Path get errorPath => $_getN(2);
  @$pb.TagNumber(3)
  set errorPath($3.Expr_Path v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasErrorPath() => $_has(2);
  @$pb.TagNumber(3)
  void clearErrorPath() => clearField(3);
  @$pb.TagNumber(3)
  $3.Expr_Path ensureErrorPath() => $_ensure(2);

  /// Result of the evaluation.
  @$pb.TagNumber(4)
  $0.Value get value => $_getN(3);
  @$pb.TagNumber(4)
  set value($0.Value v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearValue() => clearField(4);
  @$pb.TagNumber(4)
  $0.Value ensureValue() => $_ensure(3);
}

class EvaluatorApi {
  $pb.RpcClient _client;
  EvaluatorApi(this._client);

  $async.Future<EvaluateOutput> evaluateExpr($pb.ClientContext? ctx, EvaluateInput request) =>
    _client.invoke<EvaluateOutput>(ctx, 'Evaluator', 'EvaluateExpr', request, EvaluateOutput())
  ;
  $async.Future<EvaluateOutput> evaluateEval($pb.ClientContext? ctx, EvaluateInput request) =>
    _client.invoke<EvaluateOutput>(ctx, 'Evaluator', 'EvaluateEval', request, EvaluateOutput())
  ;
  $async.Future<EvaluateOutput> evaluateScalar($pb.ClientContext? ctx, EvaluateInput request) =>
    _client.invoke<EvaluateOutput>(ctx, 'Evaluator', 'EvaluateScalar', request, EvaluateOutput())
  ;
  $async.Future<EvaluateOutput> evaluateRef($pb.ClientContext? ctx, EvaluateInput request) =>
    _client.invoke<EvaluateOutput>(ctx, 'Evaluator', 'EvaluateRef', request, EvaluateOutput())
  ;
  $async.Future<EvaluateOutput> evaluateObj($pb.ClientContext? ctx, EvaluateInput request) =>
    _client.invoke<EvaluateOutput>(ctx, 'Evaluator', 'EvaluateObj', request, EvaluateOutput())
  ;
  $async.Future<EvaluateOutput> evaluateArr($pb.ClientContext? ctx, EvaluateInput request) =>
    _client.invoke<EvaluateOutput>(ctx, 'Evaluator', 'EvaluateArr', request, EvaluateOutput())
  ;
  $async.Future<EvaluateOutput> evaluateJson($pb.ClientContext? ctx, EvaluateInput request) =>
    _client.invoke<EvaluateOutput>(ctx, 'Evaluator', 'EvaluateJson', request, EvaluateOutput())
  ;
  $async.Future<EvaluateOutput> evaluateIter($pb.ClientContext? ctx, EvaluateInput request) =>
    _client.invoke<EvaluateOutput>(ctx, 'Evaluator', 'EvaluateIter', request, EvaluateOutput())
  ;
  $async.Future<EvaluateOutput> evaluateElem($pb.ClientContext? ctx, EvaluateInput request) =>
    _client.invoke<EvaluateOutput>(ctx, 'Evaluator', 'EvaluateElem', request, EvaluateOutput())
  ;
  $async.Future<EvaluateOutput> evaluateCall($pb.ClientContext? ctx, EvaluateInput request) =>
    _client.invoke<EvaluateOutput>(ctx, 'Evaluator', 'EvaluateCall', request, EvaluateOutput())
  ;
  $async.Future<EvaluateOutput> evaluateCases($pb.ClientContext? ctx, EvaluateInput request) =>
    _client.invoke<EvaluateOutput>(ctx, 'Evaluator', 'EvaluateCases', request, EvaluateOutput())
  ;
  $async.Future<EvaluateOutput> evaluateOpUnary($pb.ClientContext? ctx, EvaluateInput request) =>
    _client.invoke<EvaluateOutput>(ctx, 'Evaluator', 'EvaluateOpUnary', request, EvaluateOutput())
  ;
  $async.Future<EvaluateOutput> evaluateOpBinary($pb.ClientContext? ctx, EvaluateInput request) =>
    _client.invoke<EvaluateOutput>(ctx, 'Evaluator', 'EvaluateOpBinary', request, EvaluateOutput())
  ;
  $async.Future<EvaluateOutput> evaluateOpVariadic($pb.ClientContext? ctx, EvaluateInput request) =>
    _client.invoke<EvaluateOutput>(ctx, 'Evaluator', 'EvaluateOpVariadic', request, EvaluateOutput())
  ;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
