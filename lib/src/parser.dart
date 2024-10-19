import 'package:exprml_dart/src/path.dart';
import 'package:exprml_dart/src/value.dart';

import 'gen/pb/exprml/v1/expr.pb.dart';
import 'gen/pb/exprml/v1/parser.pb.dart';
import 'gen/pb/exprml/v1/value.pb.dart';

class Parser {
  Parser();

  final identRegexp = RegExp(r'^\$[a-zA-Z_][a-zA-Z0-9_]*$');

  ParseOutput parse(ParseInput input) {
    try {
      return ParseOutput(expr: _parse(Expr_Path(), input.value));
    } catch (e) {
      return ParseOutput(isError: true, errorMessage: 'fail to parse: $e');
    }
  }

  Expr _parse(Expr_Path path, Value value) {
    switch (value.type) {
      case Value_Type.STR:
        final s = value.str;
        if (identRegexp.hasMatch(s)) {
          return Expr(kind: Expr_Kind.REF, path: path, ref: Ref(ident: s));
        }
        if (s.length > 1 && s.startsWith('`') && s.endsWith('`')) {
          return Expr(
              kind: Expr_Kind.SCALAR,
              path: path,
              scalar: Scalar(scalar: strValue(s.substring(1, s.length - 1))));
        }
        throw ArgumentError(
            'invalid Scalar: ${path.format()}: string literal must be enclosed by "`"');
      case Value_Type.BOOL || Value_Type.NUM:
        return Expr(
            kind: Expr_Kind.SCALAR, path: path, scalar: Scalar(scalar: value));
      case Value_Type.OBJ:
        if (value.obj.containsKey("eval")) {
          return _parseEval(path, value);
        }
        if (value.obj.containsKey("obj")) {
          final objVal = value.obj['obj']!;
          if (objVal.type != Value_Type.OBJ) {
            final p = path.append(['obj']).format();
            throw ArgumentError(
                'invalid Obj: $p: "obj" property must be an object');
          }
          final obj = objVal.obj.map((key, val) => MapEntry(
                key,
                _parse(path.append(['obj', key]), val),
              ));
          return Expr(kind: Expr_Kind.OBJ, path: path, obj: Obj(obj: obj));
        }
        if (value.obj.containsKey("arr")) {
          final arrVal = value.obj['arr']!;
          if (arrVal.type != Value_Type.ARR) {
            final p = path.append(['arr']).format();
            throw ArgumentError(
                'invalid Arr: $p: "arr" property must be an array');
          }
          final arr =
              arrVal.arr.map((val) => _parse(path.append(['arr']), val));
          return Expr(kind: Expr_Kind.ARR, path: path, arr: Arr(arr: arr));
        }
        if (value.obj.containsKey("json")) {
          if (_includesNull(value.obj['json']!)) {
            final p = path.append(['json']).format();
            throw ArgumentError(
                'invalid Json: $p: "json" property cannot contain null');
          }
          return Expr(
              kind: Expr_Kind.JSON,
              path: path,
              json: Json(json: value.obj['json']!));
        }
        if (value.obj.containsKey("do")) {
          return _parseIter(value, path);
        }
        if (value.obj.containsKey("get")) {
          if (!value.obj.containsKey("from")) {
            throw ArgumentError(
                'invalid Elem: ${path.format()}: "from" property is required');
          }
          return Expr(
            kind: Expr_Kind.ELEM,
            path: path,
            elem: Elem(
              get: _parse(path.append(['get']), value.obj['get']!),
              from: _parse(path.append(['from']), value.obj['from']!),
            ),
          );
        }
        if (value.obj.containsKey("cases")) {
          return _parseCases(value, path);
        }

        if (value.obj.length != 1) {
          throw ArgumentError(
              'invalid Expr: ${path.format()}: operation or function call must contain only one property');
        }
        var prop = value.obj.keys.first;
        {
          final expr = _tryParseOpUnary(value, path, prop);
          if (expr != null) {
            return expr;
          }
        }
        {
          final expr = _tryParseOpBinary(value, path, prop);
          if (expr != null) {
            return expr;
          }
        }
        {
          final expr = _tryParseOpVariadic(value, path, prop);
          if (expr != null) {
            return expr;
          }
        }

        return _parseCall(prop, path, value);
      default:
        throw ArgumentError(
            'invalid Expr: ${path.format}: one of string, number, boolean, or object required but got ${value.type}');
    }
  }

  Expr _parseCall(String prop, Expr_Path path, Value value) {
    if (!identRegexp.hasMatch(prop)) {
      throw ArgumentError(
          'invalid Call: ${path.format()}: function call property "$prop" must match "${identRegexp.pattern}"');
    }
    var argsVal = value.obj[prop]!;
    if (argsVal.type != Value_Type.OBJ) {
      final p = path.append([prop]).format();
      throw ArgumentError(
          'invalid Call: $p: arguments must be given as an object');
    }
    final args = <String, Expr>{};
    for (var key in argsVal.obj.keys) {
      if (!identRegexp.hasMatch(key)) {
        final p = path.append([prop, key]).format();
        throw ArgumentError(
            'invalid Call: $p: argument property "$key" must match "${identRegexp.pattern}"');
      }
      args[key] = _parse(path.append([prop, key]), argsVal.obj[key]!);
    }
    return Expr(
        kind: Expr_Kind.CALL, path: path, call: Call(ident: prop, args: args));
  }

  Expr _parseCases(Value value, Expr_Path path) {
    final casesVal = value.obj['cases']!;
    if (casesVal.type != Value_Type.ARR) {
      final p = path.append(['cases']).format();
      throw ArgumentError(
          'invalid Cases: $p: "cases" property must be an array');
    }
    final cases = Cases();
    for (var (i, caseVal) in casesVal.arr.indexed) {
      if (caseVal.type != Value_Type.OBJ) {
        final p = path.append(['cases', i]).format();
        throw ArgumentError(
            'invalid Cases: $p: "cases" property must contain only objects');
      }
      if (caseVal.obj.containsKey('otherwise')) {
        final otherwise = _parse(
            path.append(['cases', i, 'otherwise']), caseVal.obj['otherwise']!);
        cases.cases.add(Cases_Case(isOtherwise: true, otherwise: otherwise));
      } else {
        if (!caseVal.obj.containsKey('when')) {
          final p = path.append(['cases', i]).format();
          throw ArgumentError('invalid Case: $p: "when" property is required');
        }
        if (!caseVal.obj.containsKey('then')) {
          final p = path.append(['cases', i]).format();
          throw ArgumentError('invalid Case: $p: "then" property is required');
        }
        final when =
            _parse(path.append(['cases', i, 'when']), caseVal.obj['when']!);
        final then =
            _parse(path.append(['cases', i, 'then']), caseVal.obj['then']!);
        cases.cases.add(Cases_Case(when: when, then: then));
      }
    }
    return Expr(kind: Expr_Kind.CASES, path: path, cases: cases);
  }

  Expr _parseIter(Value value, Expr_Path path) {
    // `for($a, $b)`: Match
    final r = RegExp(
        r'^for\(\s*\$[_a-zA-Z][_a-zA-Z0-9]*\s*,\s*\$[_a-zA-Z][_a-zA-Z0-9]*\s*\)$');
    final iter = Iter();
    for (var prop in value.obj.keys) {
      switch (prop) {
        case 'do':
          iter.do_4 = _parse(path.append(['do']), value.obj['do']!);
        case 'if':
          iter.if_5 = _parse(path.append(['if']), value.obj['if']!);
        default:
          if (!r.hasMatch(prop)) {
            final p = path.append(['do', prop]).format();
            throw ArgumentError('invalid Iter: $p: invalid property "$prop"');
          }
          final idents = prop
              .replaceAll(RegExp(r'[^$_a-zA-Z0-9]'), "")
              .split("\$")
              .map((e) => "\$$e")
              .toList();
          iter
            ..posIdent = idents[1]
            ..elemIdent = idents[2]
            ..col = _parse(path.append([prop]), value.obj[prop]!);
      }
    }
    if (!iter.hasCol()) {
      throw ArgumentError(
          'invalid Iter: ${path.format()}: "for(...vars...)" property is required');
    }
    return Expr(kind: Expr_Kind.ITER, path: path, iter: iter);
  }

  Expr _parseEval(Expr_Path path, Value value) {
    final eval = _parse(path.append(['eval']), value.obj['eval']!);
    final expr = Expr(kind: Expr_Kind.EVAL, path: path, eval: Eval(eval: eval));
    if (value.obj.containsKey("where")) {
      final whereVal = value.obj['where']!;
      if (whereVal.type != Value_Type.ARR) {
        final p = path.append(['where']).format();
        throw ArgumentError('invalid Expr: $p: where clause must be an array');
      }
      final defs = <Eval_Definition>[];
      for (var (i, defVal) in whereVal.arr.indexed) {
        if (defVal.type != Value_Type.OBJ) {
          final p = path.append(['where', i]).format();
          throw ArgumentError(
              'invalid definition: $p: where clause must contain only objects but got ${defVal.type}');
        }
        var keys = defVal.obj.keys.toList();
        if (keys.length != 1) {
          final p = path.append(['where', i]).format();
          throw ArgumentError(
              'invalid definition: $p: definition must contain one property');
        }
        var prop = keys[0];
        var r = RegExp(
            r'^\$[_a-zA-Z][_a-zA-Z0-9]*(\(\s*\)|\(\s*\$[_a-zA-Z][_a-zA-Z0-9]*(\s*,\s*\$[_a-zA-Z][_a-zA-Z0-9]*)*(\s*,)?\s*\))?$');
        if (!r.hasMatch(prop)) {
          final p = path.append(['where', i, prop]).format();
          throw ArgumentError(
              'invalid definition: $p: definition must match ${r.pattern}');
        }
        var body = _parse(path.append(['where', i, prop]), defVal.obj[prop]!);
        final idents = prop
            .replaceAll(RegExp(r"[^$_a-zA-Z0-9]"), "")
            .split("\$")
            .map((e) => "\$$e")
            .toList();
        defs.add(Eval_Definition(
            ident: idents[1], args: idents.sublist(2), body: body));
      }
      expr.eval.where.addAll(defs);
    }
    return expr;
  }

  Expr? _tryParseOpUnary(Value value, Expr_Path path, String prop) {
    final op = {
      'len': OpUnary_Op.LEN,
      'not': OpUnary_Op.NOT,
      'flat': OpUnary_Op.FLAT,
      'floor': OpUnary_Op.FLOOR,
      'ceil': OpUnary_Op.CEIL,
      'abort': OpUnary_Op.ABORT,
    }[prop];
    if (op == null) {
      return null;
    }
    final operand = _parse(path.append([prop]), value.obj[prop]!);
    return Expr(
        kind: Expr_Kind.OP_UNARY,
        path: path,
        opUnary: OpUnary(op: op, operand: operand));
  }

  Expr? _tryParseOpBinary(Value value, Expr_Path path, String prop) {
    final op = {
      'sub': OpBinary_Op.SUB,
      'div': OpBinary_Op.DIV,
      'eq': OpBinary_Op.EQ,
      'neq': OpBinary_Op.NEQ,
      'lt': OpBinary_Op.LT,
      'lte': OpBinary_Op.LTE,
      'gt': OpBinary_Op.GT,
      'gte': OpBinary_Op.GTE,
    }[prop];
    if (op == null) {
      return null;
    }
    if (value.obj[prop]!.type != Value_Type.ARR) {
      final p = path.append([prop]).format();
      throw ArgumentError(
          'invalid OpBinary: $p: "$prop" property must be an array');
    }
    if (value.obj[prop]!.arr.length != 2) {
      final p = path.append([prop]).format();
      throw ArgumentError(
          'invalid OpBinary: $p: "$prop" property must contain two elements');
    }
    final [left, right] = [
      for (var (i, v) in value.obj[prop]!.arr.indexed)
        _parse(path.append([prop, i]), v)
    ];
    return Expr(
        kind: Expr_Kind.OP_BINARY,
        path: path,
        opBinary: OpBinary(op: op, left: left, right: right));
  }

  Expr? _tryParseOpVariadic(Value value, Expr_Path path, String prop) {
    final op = {
      'add': OpVariadic_Op.ADD,
      'mul': OpVariadic_Op.MUL,
      'and': OpVariadic_Op.AND,
      'or': OpVariadic_Op.OR,
      'cat': OpVariadic_Op.CAT,
      'min': OpVariadic_Op.MIN,
      'max': OpVariadic_Op.MAX,
      'merge': OpVariadic_Op.MERGE,
    }[prop];
    if (op == null) {
      return null;
    }
    if (value.obj[prop]!.type != Value_Type.ARR) {
      final p = path.append([prop]).format();
      throw ArgumentError(
          'invalid OpVariadic: $p: "$prop" property must be an array');
    }
    if ((prop == 'min' || prop == 'max') && value.obj[prop]!.arr.isEmpty) {
      final p = path.append([prop]).format();
      throw ArgumentError(
          'invalid OpVariadic: $p: "$prop" property must contain at least one element');
    }
    final operands = [
      for (var (i, v) in value.obj[prop]!.arr.indexed)
        _parse(path.append([prop, i]), v)
    ];
    return Expr(
        kind: Expr_Kind.OP_VARIADIC,
        path: path,
        opVariadic: OpVariadic(op: op, operands: operands));
  }

  bool _includesNull(Value value) {
    if (value.type == Value_Type.NULL) {
      return true;
    }
    return value.obj.values.any(_includesNull) || value.arr.any(_includesNull);
  }
}
