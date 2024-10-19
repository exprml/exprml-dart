import 'dart:math';

import 'package:collection/collection.dart';
import 'package:exprml_dart/src/path.dart';

import 'def_stack.dart';
import 'gen/pb/exprml/v1/evaluator.pb.dart';
import 'gen/pb/exprml/v1/expr.pb.dart';
import 'gen/pb/exprml/v1/value.pb.dart';
import 'value.dart';

class Config {
  Map<String, EvaluateOutput Function(Expr_Path path, Map<String, Value>)>
      extension = {};
  void Function(EvaluateInput) beforeEvaluate = (EvaluateInput i) {};
  void Function(EvaluateInput, EvaluateOutput) afterEvaluate =
      (EvaluateInput i, EvaluateOutput o) {};
}

class Evaluator {
  Evaluator([Config? config]) : config = config ?? Config();

  final Config config;

  EvaluateOutput evaluateExpr(EvaluateInput input) {
    try {
      config.beforeEvaluate(input);
    } catch (e) {
      return EvaluateOutput(
        status: EvaluateOutput_Status.UNKNOWN_ERROR,
        errorPath: input.expr.path,
        errorMessage: 'beforeEvaluate failed: ${e.toString()}',
      );
    }

    late EvaluateOutput output;
    switch (input.expr.kind) {
      case Expr_Kind.EVAL:
        output = evaluateEval(input);
      case Expr_Kind.SCALAR:
        output = evaluateScalar(input);
      case Expr_Kind.REF:
        output = evaluateRef(input);
      case Expr_Kind.OBJ:
        output = evaluateObj(input);
      case Expr_Kind.ARR:
        output = evaluateArr(input);
      case Expr_Kind.JSON:
        output = evaluateJson(input);
      case Expr_Kind.ITER:
        output = evaluateIter(input);
      case Expr_Kind.ELEM:
        output = evaluateElem(input);
      case Expr_Kind.CALL:
        output = evaluateCall(input);
      case Expr_Kind.CASES:
        output = evaluateCases(input);
      case Expr_Kind.OP_UNARY:
        output = evaluateOpUnary(input);
      case Expr_Kind.OP_BINARY:
        output = evaluateOpBinary(input);
      case Expr_Kind.OP_VARIADIC:
        output = evaluateOpVariadic(input);
      default:
        throw ArgumentError('given expression must be validated');
    }

    try {
      config.afterEvaluate(input, output);
    } catch (e) {
      return EvaluateOutput(
        status: EvaluateOutput_Status.UNKNOWN_ERROR,
        errorPath: input.expr.path,
        errorMessage: 'afterEvaluate failed: ${e.toString()}',
      );
    }

    return output;
  }

  EvaluateOutput evaluateEval(EvaluateInput input) {
    var st = input.defStack;
    for (final def in input.expr.eval.where) {
      st = st.register(def);
    }
    return evaluateExpr(
        EvaluateInput(defStack: st, expr: input.expr.eval.eval));
  }

  EvaluateOutput evaluateScalar(EvaluateInput input) {
    return EvaluateOutput(value: input.expr.scalar.scalar);
  }

  EvaluateOutput evaluateRef(EvaluateInput input) {
    final ref = input.expr.ref;
    final st = input.defStack.find(ref.ident);
    if (st == null) {
      final ext = config.extension[ref.ident];
      if (ext == null) {
        return _errorReferenceNotFound(input.expr.path, ref.ident);
      }
      return ext(input.expr.path, {});
    }
    return evaluateExpr(EvaluateInput(defStack: st, expr: st.def.body));
  }

  EvaluateOutput evaluateObj(EvaluateInput input) {
    final result = <String, Value>{};
    for (final entry in input.expr.obj.obj.entries) {
      final val = evaluateExpr(
          EvaluateInput(defStack: input.defStack, expr: entry.value));
      if (val.status != EvaluateOutput_Status.OK) {
        return val;
      }
      result[entry.key] = val.value;
    }
    return EvaluateOutput(value: objValue(result));
  }

  EvaluateOutput evaluateArr(EvaluateInput input) {
    final result = <Value>[];
    for (final expr in input.expr.arr.arr) {
      final val =
          evaluateExpr(EvaluateInput(defStack: input.defStack, expr: expr));
      if (val.status != EvaluateOutput_Status.OK) {
        return val;
      }
      result.add(val.value);
    }
    return EvaluateOutput(value: arrValue(result));
  }

  EvaluateOutput evaluateJson(EvaluateInput input) {
    return EvaluateOutput(value: input.expr.json.json);
  }

  EvaluateOutput evaluateIter(EvaluateInput input) {
    final iter = input.expr.iter;
    final forPos = iter.posIdent;
    final forElem = iter.elemIdent;
    final inVal =
        evaluateExpr(EvaluateInput(defStack: input.defStack, expr: iter.col));

    switch (inVal.value.type) {
      case Value_Type.STR:
        final result = <Value>[];
        for (final (i, c) in inVal.value.str.runes.indexed) {
          final st = input.defStack
              .register(newDefinition(
                  input.expr.path, forPos, numValue(i.toDouble())))
              .register(newDefinition(
                  input.expr.path, forElem, strValue(String.fromCharCode(c))));
          if (iter.hasIf_5()) {
            final ifVal =
                evaluateExpr(EvaluateInput(defStack: st, expr: iter.if_5));
            if (ifVal.status != EvaluateOutput_Status.OK) {
              return ifVal;
            }
            if (ifVal.value.type != Value_Type.BOOL) {
              return _errorUnexpectedType(
                  iter.if_5.path, ifVal.value.type, [Value_Type.BOOL]);
            }
            if (!ifVal.value.bool_2) {
              continue;
            }
          }
          final v = evaluateExpr(EvaluateInput(defStack: st, expr: iter.do_4));
          if (v.status != EvaluateOutput_Status.OK) {
            return v;
          }
          result.add(v.value);
        }
        return EvaluateOutput(value: arrValue(result));
      case Value_Type.ARR:
        final result = <Value>[];
        for (final (i, elemVal) in inVal.value.arr.indexed) {
          final st = input.defStack
              .register(newDefinition(
                  input.expr.path, forPos, numValue(i.toDouble())))
              .register(newDefinition(input.expr.path, forElem, elemVal));
          if (iter.hasIf_5()) {
            final ifVal =
                evaluateExpr(EvaluateInput(defStack: st, expr: iter.if_5));
            if (ifVal.status != EvaluateOutput_Status.OK) {
              return ifVal;
            }
            if (ifVal.value.type != Value_Type.BOOL) {
              return _errorUnexpectedType(
                  iter.if_5.path, ifVal.value.type, [Value_Type.BOOL]);
            }
            if (!ifVal.value.bool_2) {
              continue;
            }
          }
          final v = evaluateExpr(EvaluateInput(defStack: st, expr: iter.do_4));
          if (v.status != EvaluateOutput_Status.OK) {
            return v;
          }
          result.add(v.value);
        }
        return EvaluateOutput(value: arrValue(result));
      case Value_Type.OBJ:
        final result = <String, Value>{};
        for (final key in _sortedKeys(inVal.value.obj)) {
          final st = input.defStack
              .register(newDefinition(input.expr.path, forPos, strValue(key)))
              .register(newDefinition(
                  input.expr.path, forElem, inVal.value.obj[key]!));
          if (iter.hasIf_5()) {
            final ifVal =
                evaluateExpr(EvaluateInput(defStack: st, expr: iter.if_5));
            if (ifVal.status != EvaluateOutput_Status.OK) {
              return ifVal;
            }
            if (ifVal.value.type != Value_Type.BOOL) {
              return _errorUnexpectedType(
                  iter.if_5.path, ifVal.value.type, [Value_Type.BOOL]);
            }
            if (!ifVal.value.bool_2) {
              continue;
            }
          }
          final v = evaluateExpr(EvaluateInput(defStack: st, expr: iter.do_4));
          if (v.status != EvaluateOutput_Status.OK) {
            return v;
          }
          result[key] = v.value;
        }
        return EvaluateOutput(value: objValue(result));
      default:
        return _errorUnexpectedType(iter.col.path, inVal.value.type,
            [Value_Type.STR, Value_Type.ARR, Value_Type.OBJ]);
    }
  }

  EvaluateOutput evaluateElem(EvaluateInput input) {
    final elem = input.expr.elem;
    final getVal =
        evaluateExpr(EvaluateInput(defStack: input.defStack, expr: elem.get));
    if (getVal.status != EvaluateOutput_Status.OK) {
      return getVal;
    }
    final pos = getVal.value;
    final fromVal =
        evaluateExpr(EvaluateInput(defStack: input.defStack, expr: elem.from));
    if (fromVal.status != EvaluateOutput_Status.OK) {
      return fromVal;
    }
    final col = fromVal.value;

    switch (col.type) {
      case Value_Type.STR:
        if (pos.type != Value_Type.NUM) {
          return _errorUnexpectedType(
              elem.get.path, pos.type, [Value_Type.NUM]);
        }
        if (!_canInt(pos)) {
          return _errorIndexNotInteger(elem.get.path, pos.num);
        }
        final idx = pos.num.toInt();
        final runes = col.str.runes.toList();
        if (idx < 0 || idx >= runes.length) {
          return _errorIndexOutOfBounds(elem.get.path, pos, 0, runes.length);
        }
        return EvaluateOutput(value: strValue(String.fromCharCode(runes[idx])));
      case Value_Type.ARR:
        if (pos.type != Value_Type.NUM) {
          return _errorUnexpectedType(
              elem.get.path, pos.type, [Value_Type.NUM]);
        }
        if (!_canInt(pos)) {
          return _errorIndexNotInteger(elem.get.path, pos.num);
        }
        final idx = pos.num.toInt();
        if (idx < 0 || idx >= col.arr.length) {
          return _errorIndexOutOfBounds(elem.get.path, pos, 0, col.arr.length);
        }
        return EvaluateOutput(value: col.arr[idx]);
      case Value_Type.OBJ:
        if (pos.type != Value_Type.STR) {
          return _errorUnexpectedType(
              elem.get.path, pos.type, [Value_Type.STR]);
        }
        final key = pos.str;
        if (!col.obj.containsKey(key)) {
          return _errorInvalidKey(elem.get.path, key, _sortedKeys(col.obj));
        }
        return EvaluateOutput(value: col.obj[key]!);
      default:
        return _errorUnexpectedType(elem.from.path, col.type,
            [Value_Type.STR, Value_Type.ARR, Value_Type.OBJ]);
    }
  }

  EvaluateOutput evaluateCall(EvaluateInput input) {
    final call = input.expr.call;
    final found = input.defStack.find(call.ident);
    if (found == null) {
      final ext = config.extension[call.ident];
      if (ext == null) {
        return _errorReferenceNotFound(input.expr.path, call.ident);
      }
      final args = <String, Value>{};
      for (final entry in call.args.entries) {
        final argVal = evaluateExpr(
            EvaluateInput(defStack: input.defStack, expr: entry.value));
        if (argVal.status != EvaluateOutput_Status.OK) {
          return argVal;
        }
        args[entry.key] = argVal.value;
      }
      return ext(input.expr.path, args);
    }
    var st = found;
    for (final argName in found.def.args) {
      final arg = call.args[argName];
      if (arg == null) {
        return _errorArgumentMismatch(input.expr.path, argName);
      }
      final argVal =
          evaluateExpr(EvaluateInput(defStack: input.defStack, expr: arg));
      if (argVal.status != EvaluateOutput_Status.OK) {
        return argVal;
      }
      st = st.register(newDefinition(
          input.expr.path.append([call.ident, argName]),
          argName,
          argVal.value));
    }
    return evaluateExpr(EvaluateInput(defStack: st, expr: found.def.body));
  }

  EvaluateOutput evaluateCases(EvaluateInput input) {
    final cases = input.expr.cases.cases;
    for (final case_ in cases) {
      if (case_.isOtherwise) {
        return evaluateExpr(
            EvaluateInput(defStack: input.defStack, expr: case_.otherwise));
      } else {
        final boolVal = evaluateExpr(
            EvaluateInput(defStack: input.defStack, expr: case_.when));
        if (boolVal.status != EvaluateOutput_Status.OK) {
          return boolVal;
        }
        if (boolVal.value.type != Value_Type.BOOL) {
          return _errorUnexpectedType(
              case_.when.path, boolVal.value.type, [Value_Type.BOOL]);
        }
        if (boolVal.value.bool_2) {
          return evaluateExpr(
              EvaluateInput(defStack: input.defStack, expr: case_.then));
        }
      }
    }
    return _errorCasesNotExhaustive(input.expr.path.append(['cases']));
  }

  EvaluateOutput evaluateOpUnary(EvaluateInput input) {
    final op = input.expr.opUnary;
    final o =
        evaluateExpr(EvaluateInput(defStack: input.defStack, expr: op.operand));
    if (o.status != EvaluateOutput_Status.OK) {
      return o;
    }
    final operand = o.value;
    switch (op.op) {
      case OpUnary_Op.LEN:
        switch (operand.type) {
          case Value_Type.STR:
            return EvaluateOutput(
                value: numValue(operand.str.runes.length.toDouble()));
          case Value_Type.ARR:
            return EvaluateOutput(
                value: numValue(operand.arr.length.toDouble()));
          case Value_Type.OBJ:
            return EvaluateOutput(
                value: numValue(operand.obj.length.toDouble()));
          default:
            return _errorUnexpectedType(input.expr.path.append(['len']),
                operand.type, [Value_Type.STR, Value_Type.ARR, Value_Type.OBJ]);
        }
      case OpUnary_Op.NOT:
        if (operand.type != Value_Type.BOOL) {
          return _errorUnexpectedType(
              input.expr.path.append(['not']), operand.type, [Value_Type.BOOL]);
        }
        return EvaluateOutput(value: boolValue(!operand.bool_2));
      case OpUnary_Op.FLAT:
        if (operand.type != Value_Type.ARR) {
          return _errorUnexpectedType(
              input.expr.path.append(['flat']), operand.type, [Value_Type.ARR]);
        }
        final v = <Value>[];
        for (final elem in operand.arr) {
          if (elem.type != Value_Type.ARR) {
            return _errorUnexpectedType(
                input.expr.path.append(['flat']), elem.type, [Value_Type.ARR]);
          }
          v.addAll(elem.arr);
        }
        return EvaluateOutput(value: arrValue(v));
      case OpUnary_Op.FLOOR:
        if (operand.type != Value_Type.NUM) {
          return _errorUnexpectedType(input.expr.path.append(['floor']),
              operand.type, [Value_Type.NUM]);
        }
        return EvaluateOutput(value: numValue(operand.num.floorToDouble()));
      case OpUnary_Op.CEIL:
        if (operand.type != Value_Type.NUM) {
          return _errorUnexpectedType(
              input.expr.path.append(['ceil']), operand.type, [Value_Type.NUM]);
        }
        return EvaluateOutput(value: numValue(operand.num.ceilToDouble()));
      case OpUnary_Op.ABORT:
        if (operand.type != Value_Type.STR) {
          return _errorUnexpectedType(input.expr.path.append(['abort']),
              operand.type, [Value_Type.STR]);
        }
        return EvaluateOutput(
            status: EvaluateOutput_Status.ABORTED, errorMessage: operand.str);
      default:
        throw ArgumentError('unexpected unary operator ${op.op}');
    }
  }

  EvaluateOutput evaluateOpBinary(EvaluateInput input) {
    final op = input.expr.opBinary;
    final ol =
        evaluateExpr(EvaluateInput(defStack: input.defStack, expr: op.left));
    if (ol.status != EvaluateOutput_Status.OK) {
      return ol;
    }
    final or =
        evaluateExpr(EvaluateInput(defStack: input.defStack, expr: op.right));
    if (or.status != EvaluateOutput_Status.OK) {
      return or;
    }
    final operandL = ol.value;
    final operandR = or.value;
    switch (op.op) {
      case OpBinary_Op.SUB:
        if (operandL.type != Value_Type.NUM) {
          return _errorUnexpectedType(input.expr.path.append(['sub', 0]),
              operandL.type, [Value_Type.NUM]);
        }
        if (operandR.type != Value_Type.NUM) {
          return _errorUnexpectedType(input.expr.path.append(['sub', 1]),
              operandR.type, [Value_Type.NUM]);
        }
        final v = operandL.num - operandR.num;
        if (!v.isFinite) {
          return _errorNotFiniteNumber(input.expr.path);
        }
        return EvaluateOutput(value: numValue(v));
      case OpBinary_Op.DIV:
        if (operandL.type != Value_Type.NUM) {
          return _errorUnexpectedType(input.expr.path.append(['div', 0]),
              operandL.type, [Value_Type.NUM]);
        }
        if (operandR.type != Value_Type.NUM) {
          return _errorUnexpectedType(input.expr.path.append(['div', 1]),
              operandR.type, [Value_Type.NUM]);
        }
        final v = operandL.num / operandR.num;
        if (!v.isFinite) {
          return _errorNotFiniteNumber(input.expr.path);
        }
        return EvaluateOutput(value: numValue(v));
      case OpBinary_Op.EQ:
        return EvaluateOutput(value: _equal(operandL, operandR));
      case OpBinary_Op.NEQ:
        return EvaluateOutput(
            value: boolValue(!_equal(operandL, operandR).bool_2));
      case OpBinary_Op.LT:
        final cmpVal =
            _compare(input.expr.path.append(['lt']), operandL, operandR);
        if (cmpVal.status != EvaluateOutput_Status.OK) {
          return cmpVal;
        }
        return EvaluateOutput(value: boolValue(cmpVal.value.num < 0));
      case OpBinary_Op.LTE:
        final cmpVal =
            _compare(input.expr.path.append(['lte']), operandL, operandR);
        if (cmpVal.status != EvaluateOutput_Status.OK) {
          return cmpVal;
        }
        return EvaluateOutput(value: boolValue(cmpVal.value.num <= 0));
      case OpBinary_Op.GT:
        final cmpVal =
            _compare(input.expr.path.append(['gt']), operandL, operandR);
        if (cmpVal.status != EvaluateOutput_Status.OK) {
          return cmpVal;
        }
        return EvaluateOutput(value: boolValue(cmpVal.value.num > 0));
      case OpBinary_Op.GTE:
        final cmpVal =
            _compare(input.expr.path.append(['gte']), operandL, operandR);
        if (cmpVal.status != EvaluateOutput_Status.OK) {
          return cmpVal;
        }
        return EvaluateOutput(value: boolValue(cmpVal.value.num >= 0));
      default:
        throw ArgumentError('unexpected binary operator ${op.op}');
    }
  }

  EvaluateOutput evaluateOpVariadic(EvaluateInput input) {
    final op = input.expr.opVariadic;
    final operands = <Value>[];

    for (final elem in op.operands) {
      final val =
          evaluateExpr(EvaluateInput(defStack: input.defStack, expr: elem));
      if (val.status != EvaluateOutput_Status.OK) {
        return val;
      }
      operands.add(val.value);
    }

    switch (op.op) {
      case OpVariadic_Op.ADD:
        var addVal = 0.0;
        for (final (i, operand) in operands.indexed) {
          if (operand.type != Value_Type.NUM) {
            return _errorUnexpectedType(input.expr.path.append(['add', i]),
                operand.type, [Value_Type.NUM]);
          }
          addVal += operand.num;
        }
        if (!addVal.isFinite) {
          return _errorNotFiniteNumber(input.expr.path.append(['add']));
        }
        return EvaluateOutput(value: numValue(addVal));
      case OpVariadic_Op.MUL:
        var mulVal = 1.0;
        for (final (i, operand) in operands.indexed) {
          if (operand.type != Value_Type.NUM) {
            return _errorUnexpectedType(input.expr.path.append(['mul', i]),
                operand.type, [Value_Type.NUM]);
          }
          mulVal *= operand.num;
        }
        if (!mulVal.isFinite) {
          return _errorNotFiniteNumber(input.expr.path.append(['mul']));
        }
        return EvaluateOutput(value: numValue(mulVal));
      case OpVariadic_Op.AND:
        for (final (i, operand) in operands.indexed) {
          if (operand.type != Value_Type.BOOL) {
            return _errorUnexpectedType(input.expr.path.append(['and', i]),
                operand.type, [Value_Type.BOOL]);
          }
          if (!operand.bool_2) {
            return EvaluateOutput(value: boolValue(false));
          }
        }
        return EvaluateOutput(value: boolValue(true));
      case OpVariadic_Op.OR:
        for (final (i, operand) in operands.indexed) {
          if (operand.type != Value_Type.BOOL) {
            return _errorUnexpectedType(input.expr.path.append(['or', i]),
                operand.type, [Value_Type.BOOL]);
          }
          if (operand.bool_2) {
            return EvaluateOutput(value: boolValue(true));
          }
        }
        return EvaluateOutput(value: boolValue(false));
      case OpVariadic_Op.CAT:
        var catVal = '';
        for (final (i, operand) in operands.indexed) {
          if (operand.type != Value_Type.STR) {
            return _errorUnexpectedType(input.expr.path.append(['cat', i]),
                operand.type, [Value_Type.STR]);
          }
          catVal += operand.str;
        }
        return EvaluateOutput(value: strValue(catVal));
      case OpVariadic_Op.MIN:
        var minVal = double.infinity;
        for (final (i, operand) in operands.indexed) {
          if (operand.type != Value_Type.NUM) {
            return _errorUnexpectedType(input.expr.path.append(['min', i]),
                operand.type, [Value_Type.NUM]);
          }
          minVal = min(minVal, operand.num);
        }
        return EvaluateOutput(value: numValue(minVal));
      case OpVariadic_Op.MAX:
        var maxVal = double.negativeInfinity;
        for (final (i, operand) in operands.indexed) {
          if (operand.type != Value_Type.NUM) {
            return _errorUnexpectedType(input.expr.path.append(['max', i]),
                operand.type, [Value_Type.NUM]);
          }
          maxVal = max(maxVal, operand.num);
        }
        return EvaluateOutput(value: numValue(maxVal));
      case OpVariadic_Op.MERGE:
        final mergeVal = <String, Value>{};
        for (final (i, operand) in operands.indexed) {
          if (operand.type != Value_Type.OBJ) {
            return _errorUnexpectedType(input.expr.path.append(['merge', i]),
                operand.type, [Value_Type.OBJ]);
          }
          mergeVal.addEntries(operand.obj.entries);
        }
        return EvaluateOutput(value: objValue(mergeVal));
      default:
        throw ArgumentError('unexpected variadic operator ${op.op}');
    }
  }

  EvaluateOutput _errorIndexOutOfBounds(
      Expr_Path path, Value index, int begin, int end) {
    return EvaluateOutput(
      status: EvaluateOutput_Status.INVALID_INDEX,
      errorPath: path,
      errorMessage:
          'invalid index: index out of bounds: ${index.num.toInt()} not in [$begin, $end)',
    );
  }

  EvaluateOutput _errorIndexNotInteger(Expr_Path path, double index) {
    return EvaluateOutput(
      status: EvaluateOutput_Status.INVALID_INDEX,
      errorPath: path,
      errorMessage: 'invalid index: non integer index: $index',
    );
  }

  EvaluateOutput _errorInvalidKey(
      Expr_Path path, String key, List<String> keys) {
    return EvaluateOutput(
      status: EvaluateOutput_Status.INVALID_INDEX,
      errorPath: path,
      errorMessage: 'invalid key: "$key" not in {${keys.join(",")}}',
    );
  }

  EvaluateOutput _errorUnexpectedType(
      Expr_Path path, Value_Type got, List<Value_Type> want) {
    final wantStr = want.map((t) => t.toString()).join(",");
    return EvaluateOutput(
      status: EvaluateOutput_Status.UNEXPECTED_TYPE,
      errorPath: path,
      errorMessage: 'unexpected type: got $got, want {$wantStr}',
    );
  }

  EvaluateOutput _errorArgumentMismatch(Expr_Path path, String arg) {
    return EvaluateOutput(
      status: EvaluateOutput_Status.ARGUMENT_MISMATCH,
      errorPath: path,
      errorMessage: 'argument mismatch: argument "$arg" required',
    );
  }

  EvaluateOutput _errorReferenceNotFound(Expr_Path path, String ref) {
    return EvaluateOutput(
      status: EvaluateOutput_Status.REFERENCE_NOT_FOUND,
      errorPath: path,
      errorMessage: 'reference not found: "$ref"',
    );
  }

  EvaluateOutput _errorCasesNotExhaustive(Expr_Path path) {
    return EvaluateOutput(
      status: EvaluateOutput_Status.CASES_NOT_EXHAUSTIVE,
      errorPath: path,
      errorMessage: 'cases not exhaustive',
    );
  }

  EvaluateOutput _errorNotComparable(Expr_Path path) {
    return EvaluateOutput(
      status: EvaluateOutput_Status.NOT_COMPARABLE,
      errorPath: path,
      errorMessage: 'not comparable',
    );
  }

  EvaluateOutput _errorNotFiniteNumber(Expr_Path path) {
    return EvaluateOutput(
      status: EvaluateOutput_Status.NOT_FINITE_NUMBER,
      errorPath: path,
      errorMessage: 'not finite number',
    );
  }

  bool _canInt(Value v) {
    return v.type == Value_Type.NUM && v.num == v.num.toInt();
  }

  List<String> _sortedKeys(Map<String, Value> m) {
    return m.keys.toList()..sort();
  }

  Value _equal(Value l, Value r) {
    final falseValue = boolValue(false);
    final trueValue = boolValue(true);
    if (l.type != r.type) return falseValue;
    switch (l.type) {
      case Value_Type.NUM:
        return boolValue(l.num == r.num);
      case Value_Type.BOOL:
        return boolValue(l.bool_2 == r.bool_2);
      case Value_Type.STR:
        return boolValue(l.str == r.str);
      case Value_Type.ARR:
        if (l.arr.length != r.arr.length) return falseValue;
        for (var i = 0; i < l.arr.length; i++) {
          if (!_equal(l.arr[i], r.arr[i]).bool_2) return falseValue;
        }
        return trueValue;
      case Value_Type.OBJ:
        final lk = _sortedKeys(l.obj);
        final rk = _sortedKeys(r.obj);
        if (!ListEquality().equals(lk, rk)) return falseValue;
        for (var k in l.obj.keys) {
          if (!_equal(l.obj[k]!, r.obj[k]!).bool_2) return falseValue;
        }
        return trueValue;
      default:
        throw ArgumentError('unexpected type ${l.type}');
    }
  }

  EvaluateOutput _compare(Expr_Path path, Value l, Value r) {
    final ltValue = EvaluateOutput(value: numValue(-1));
    final gtValue = EvaluateOutput(value: numValue(1));
    final eqValue = EvaluateOutput(value: numValue(0));
    if (l.type != r.type) return _errorNotComparable(path);
    switch (l.type) {
      case Value_Type.NUM:
        if (l.num < r.num) return ltValue;
        if (l.num > r.num) return gtValue;
        return eqValue;
      case Value_Type.BOOL:
        if (!l.bool_2 && r.bool_2) return ltValue;
        if (l.bool_2 && !r.bool_2) return gtValue;
        return eqValue;
      case Value_Type.STR:
        if (l.str.compareTo(r.str) < 0) return ltValue;
        if (l.str.compareTo(r.str) > 0) return gtValue;
        return eqValue;
      case Value_Type.ARR:
        final n = l.arr.length < r.arr.length ? l.arr.length : r.arr.length;
        for (var i = 0; i < n; i++) {
          final cmp = _compare(path, l.arr[i], r.arr[i]);
          if (cmp.status != EvaluateOutput_Status.OK) return cmp;
          if (cmp.value.num != 0) return cmp;
        }
        if (l.arr.length < r.arr.length) return ltValue;
        if (l.arr.length > r.arr.length) return gtValue;
        return eqValue;
      default:
        return _errorNotComparable(path);
    }
  }
}
