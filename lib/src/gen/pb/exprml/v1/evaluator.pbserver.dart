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
  $async.Future<$4.EvaluateOutput> evaluateExpr($pb.ServerContext ctx, $4.EvaluateInput request);
  $async.Future<$4.EvaluateOutput> evaluateEval($pb.ServerContext ctx, $4.EvaluateInput request);
  $async.Future<$4.EvaluateOutput> evaluateScalar($pb.ServerContext ctx, $4.EvaluateInput request);
  $async.Future<$4.EvaluateOutput> evaluateRef($pb.ServerContext ctx, $4.EvaluateInput request);
  $async.Future<$4.EvaluateOutput> evaluateObj($pb.ServerContext ctx, $4.EvaluateInput request);
  $async.Future<$4.EvaluateOutput> evaluateArr($pb.ServerContext ctx, $4.EvaluateInput request);
  $async.Future<$4.EvaluateOutput> evaluateJson($pb.ServerContext ctx, $4.EvaluateInput request);
  $async.Future<$4.EvaluateOutput> evaluateIter($pb.ServerContext ctx, $4.EvaluateInput request);
  $async.Future<$4.EvaluateOutput> evaluateElem($pb.ServerContext ctx, $4.EvaluateInput request);
  $async.Future<$4.EvaluateOutput> evaluateCall($pb.ServerContext ctx, $4.EvaluateInput request);
  $async.Future<$4.EvaluateOutput> evaluateCases($pb.ServerContext ctx, $4.EvaluateInput request);
  $async.Future<$4.EvaluateOutput> evaluateOpUnary($pb.ServerContext ctx, $4.EvaluateInput request);
  $async.Future<$4.EvaluateOutput> evaluateOpBinary($pb.ServerContext ctx, $4.EvaluateInput request);
  $async.Future<$4.EvaluateOutput> evaluateOpVariadic($pb.ServerContext ctx, $4.EvaluateInput request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'EvaluateExpr': return $4.EvaluateInput();
      case 'EvaluateEval': return $4.EvaluateInput();
      case 'EvaluateScalar': return $4.EvaluateInput();
      case 'EvaluateRef': return $4.EvaluateInput();
      case 'EvaluateObj': return $4.EvaluateInput();
      case 'EvaluateArr': return $4.EvaluateInput();
      case 'EvaluateJson': return $4.EvaluateInput();
      case 'EvaluateIter': return $4.EvaluateInput();
      case 'EvaluateElem': return $4.EvaluateInput();
      case 'EvaluateCall': return $4.EvaluateInput();
      case 'EvaluateCases': return $4.EvaluateInput();
      case 'EvaluateOpUnary': return $4.EvaluateInput();
      case 'EvaluateOpBinary': return $4.EvaluateInput();
      case 'EvaluateOpVariadic': return $4.EvaluateInput();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'EvaluateExpr': return this.evaluateExpr(ctx, request as $4.EvaluateInput);
      case 'EvaluateEval': return this.evaluateEval(ctx, request as $4.EvaluateInput);
      case 'EvaluateScalar': return this.evaluateScalar(ctx, request as $4.EvaluateInput);
      case 'EvaluateRef': return this.evaluateRef(ctx, request as $4.EvaluateInput);
      case 'EvaluateObj': return this.evaluateObj(ctx, request as $4.EvaluateInput);
      case 'EvaluateArr': return this.evaluateArr(ctx, request as $4.EvaluateInput);
      case 'EvaluateJson': return this.evaluateJson(ctx, request as $4.EvaluateInput);
      case 'EvaluateIter': return this.evaluateIter(ctx, request as $4.EvaluateInput);
      case 'EvaluateElem': return this.evaluateElem(ctx, request as $4.EvaluateInput);
      case 'EvaluateCall': return this.evaluateCall(ctx, request as $4.EvaluateInput);
      case 'EvaluateCases': return this.evaluateCases(ctx, request as $4.EvaluateInput);
      case 'EvaluateOpUnary': return this.evaluateOpUnary(ctx, request as $4.EvaluateInput);
      case 'EvaluateOpBinary': return this.evaluateOpBinary(ctx, request as $4.EvaluateInput);
      case 'EvaluateOpVariadic': return this.evaluateOpVariadic(ctx, request as $4.EvaluateInput);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => EvaluatorServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => EvaluatorServiceBase$messageJson;
}

