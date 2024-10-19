import 'package:fixnum/fixnum.dart';

import 'gen/pb/exprml/v1/expr.pb.dart';

extension ExprPathExtension on Expr_Path {
  String format() {
    if (pos.isEmpty) {
      return "/";
    } else {
      return pos.map((p) {
        if (p.hasIndex()) {
          return "/${p.index}";
        } else {
          return "/${p.key}";
        }
      }).join();
    }
  }

  Expr_Path append(List<dynamic> pos) => Expr_Path(pos: [
        ...this.pos,
        ...pos.map((e) => switch (e.runtimeType) {
              int => Expr_Path_Pos(index: Int64(e as int)),
              double => Expr_Path_Pos(index: Int64((e as double).toInt())),
              num => Expr_Path_Pos(index: Int64((e as num).toInt())),
              String => Expr_Path_Pos(key: e),
              _ => throw ArgumentError('Unsupported type: ${e.runtimeType}')
            })
      ]);
}
