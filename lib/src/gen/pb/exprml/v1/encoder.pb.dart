//
//  Generated code. Do not modify.
//  source: exprml/v1/encoder.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'encoder.pbenum.dart';
import 'value.pb.dart' as $0;

export 'encoder.pbenum.dart';

/// EncodeInput is the input message for the Encode method.
class EncodeInput extends $pb.GeneratedMessage {
  factory EncodeInput({
    EncodeInput_Format? format,
    $0.Value? value,
  }) {
    final $result = create();
    if (format != null) {
      $result.format = format;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  EncodeInput._() : super();
  factory EncodeInput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncodeInput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncodeInput', package: const $pb.PackageName(_omitMessageNames ? '' : 'exprml.v1'), createEmptyInstance: create)
    ..e<EncodeInput_Format>(1, _omitFieldNames ? '' : 'format', $pb.PbFieldType.OE, defaultOrMaker: EncodeInput_Format.JSON, valueOf: EncodeInput_Format.valueOf, enumValues: EncodeInput_Format.values)
    ..aOM<$0.Value>(3, _omitFieldNames ? '' : 'value', subBuilder: $0.Value.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncodeInput clone() => EncodeInput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncodeInput copyWith(void Function(EncodeInput) updates) => super.copyWith((message) => updates(message as EncodeInput)) as EncodeInput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncodeInput create() => EncodeInput._();
  EncodeInput createEmptyInstance() => create();
  static $pb.PbList<EncodeInput> createRepeated() => $pb.PbList<EncodeInput>();
  @$core.pragma('dart2js:noInline')
  static EncodeInput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncodeInput>(create);
  static EncodeInput? _defaultInstance;

  /// Format of the output string.
  @$pb.TagNumber(1)
  EncodeInput_Format get format => $_getN(0);
  @$pb.TagNumber(1)
  set format(EncodeInput_Format v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFormat() => $_has(0);
  @$pb.TagNumber(1)
  void clearFormat() => clearField(1);

  /// JSON value to encode.
  @$pb.TagNumber(3)
  $0.Value get value => $_getN(1);
  @$pb.TagNumber(3)
  set value($0.Value v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);
  @$pb.TagNumber(3)
  $0.Value ensureValue() => $_ensure(1);
}

/// EncodeOutput is the output message for the Encode method.
class EncodeOutput extends $pb.GeneratedMessage {
  factory EncodeOutput({
    $core.bool? isError,
    $core.String? errorMessage,
    $core.String? text,
  }) {
    final $result = create();
    if (isError != null) {
      $result.isError = isError;
    }
    if (errorMessage != null) {
      $result.errorMessage = errorMessage;
    }
    if (text != null) {
      $result.text = text;
    }
    return $result;
  }
  EncodeOutput._() : super();
  factory EncodeOutput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncodeOutput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncodeOutput', package: const $pb.PackageName(_omitMessageNames ? '' : 'exprml.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isError')
    ..aOS(2, _omitFieldNames ? '' : 'errorMessage')
    ..aOS(3, _omitFieldNames ? '' : 'text')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncodeOutput clone() => EncodeOutput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncodeOutput copyWith(void Function(EncodeOutput) updates) => super.copyWith((message) => updates(message as EncodeOutput)) as EncodeOutput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncodeOutput create() => EncodeOutput._();
  EncodeOutput createEmptyInstance() => create();
  static $pb.PbList<EncodeOutput> createRepeated() => $pb.PbList<EncodeOutput>();
  @$core.pragma('dart2js:noInline')
  static EncodeOutput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncodeOutput>(create);
  static EncodeOutput? _defaultInstance;

  /// Whether an error occurred during encoding.
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

  /// Encoded string in JSON (or JSON-compatible YAML).
  @$pb.TagNumber(3)
  $core.String get text => $_getSZ(2);
  @$pb.TagNumber(3)
  set text($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasText() => $_has(2);
  @$pb.TagNumber(3)
  void clearText() => clearField(3);
}

class EncoderApi {
  $pb.RpcClient _client;
  EncoderApi(this._client);

  $async.Future<EncodeOutput> encode($pb.ClientContext? ctx, EncodeInput request) =>
    _client.invoke<EncodeOutput>(ctx, 'Encoder', 'Encode', request, EncodeOutput())
  ;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
