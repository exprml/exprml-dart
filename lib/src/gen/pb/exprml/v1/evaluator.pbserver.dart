//
//  Generated code. Do not modify.
//  source: exprml/v1/evaluator.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'evaluator.pb.dart' as $4;
import 'evaluator.pbjson.dart';

export 'evaluator.pb.dart';

abstract class EvaluatorServiceBase extends $pb.GeneratedService {
  $async.Future<$4.EvaluateOutput> evaluate($pb.ServerContext ctx, $4.EvaluateInput request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'Evaluate': return $4.EvaluateInput();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'Evaluate': return this.evaluate(ctx, request as $4.EvaluateInput);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => EvaluatorServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => EvaluatorServiceBase$messageJson;
}

