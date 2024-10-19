import 'gen/pb/exprml/v1/evaluator.pb.dart';
import 'gen/pb/exprml/v1/expr.pb.dart';
import 'gen/pb/exprml/v1/value.pb.dart';

extension DefStackExtension on DefStack {

  DefStack register(Eval_Definition def) => DefStack(parent: this, def: def);

  DefStack? find(String ident) {
    if (hasDef()) {
      return null;
    }
    if (def.ident == ident) {
      return this;
    }
    return find(ident);
  }

  Eval_Definition newDefinition(Expr_Path path, String ident, Value value) =>
      Eval_Definition(
        ident: ident,
        body: Expr(
          path: path,
          kind: Expr_Kind.JSON,
          value: value,
          json: Json(json: value),
        ),
      );
}
