//
//  Generated code. Do not modify.
//  source: exprml/v1/parser.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'expr.pb.dart' as $3;
import 'value.pb.dart' as $0;

/// ParseInput is the input message for the Parse method.
class ParseInput extends $pb.GeneratedMessage {
  factory ParseInput({
    $0.Value? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  ParseInput._() : super();
  factory ParseInput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ParseInput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ParseInput', package: const $pb.PackageName(_omitMessageNames ? '' : 'exprml.v1'), createEmptyInstance: create)
    ..aOM<$0.Value>(1, _omitFieldNames ? '' : 'value', subBuilder: $0.Value.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ParseInput clone() => ParseInput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ParseInput copyWith(void Function(ParseInput) updates) => super.copyWith((message) => updates(message as ParseInput)) as ParseInput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ParseInput create() => ParseInput._();
  ParseInput createEmptyInstance() => create();
  static $pb.PbList<ParseInput> createRepeated() => $pb.PbList<ParseInput>();
  @$core.pragma('dart2js:noInline')
  static ParseInput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ParseInput>(create);
  static ParseInput? _defaultInstance;

  /// JSON value to parse.
  @$pb.TagNumber(1)
  $0.Value get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($0.Value v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
  @$pb.TagNumber(1)
  $0.Value ensureValue() => $_ensure(0);
}

/// ParseOutput is the output message for the Parse method.
class ParseOutput extends $pb.GeneratedMessage {
  factory ParseOutput({
    $core.bool? isError,
    $core.String? errorMessage,
    $3.Expr? expr,
  }) {
    final $result = create();
    if (isError != null) {
      $result.isError = isError;
    }
    if (errorMessage != null) {
      $result.errorMessage = errorMessage;
    }
    if (expr != null) {
      $result.expr = expr;
    }
    return $result;
  }
  ParseOutput._() : super();
  factory ParseOutput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ParseOutput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ParseOutput', package: const $pb.PackageName(_omitMessageNames ? '' : 'exprml.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isError')
    ..aOS(2, _omitFieldNames ? '' : 'errorMessage')
    ..aOM<$3.Expr>(3, _omitFieldNames ? '' : 'expr', subBuilder: $3.Expr.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ParseOutput clone() => ParseOutput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ParseOutput copyWith(void Function(ParseOutput) updates) => super.copyWith((message) => updates(message as ParseOutput)) as ParseOutput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ParseOutput create() => ParseOutput._();
  ParseOutput createEmptyInstance() => create();
  static $pb.PbList<ParseOutput> createRepeated() => $pb.PbList<ParseOutput>();
  @$core.pragma('dart2js:noInline')
  static ParseOutput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ParseOutput>(create);
  static ParseOutput? _defaultInstance;

  /// Whether an error occurred during parsing.
  @$pb.TagNumber(1)
  $core.bool get isError => $_getBF(0);
  @$pb.TagNumber(1)
  set isError($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsError() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsError() => clearField(1);

  /// Error message if is_error is true.
  @$pb.TagNumber(2)
  $core.String get errorMessage => $_getSZ(1);
  @$pb.TagNumber(2)
  set errorMessage($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrorMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrorMessage() => clearField(2);

  /// Parsed Expr.
  @$pb.TagNumber(3)
  $3.Expr get expr => $_getN(2);
  @$pb.TagNumber(3)
  set expr($3.Expr v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasExpr() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpr() => clearField(3);
  @$pb.TagNumber(3)
  $3.Expr ensureExpr() => $_ensure(2);
}

class ParserApi {
  $pb.RpcClient _client;
  ParserApi(this._client);

  $async.Future<ParseOutput> parse($pb.ClientContext? ctx, ParseInput request) =>
    _client.invoke<ParseOutput>(ctx, 'Parser', 'Parse', request, ParseOutput())
  ;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
