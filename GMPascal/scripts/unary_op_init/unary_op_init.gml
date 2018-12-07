/// @func unary_op_init
/// @args op,expr
var op = argument0;
var expr = argument1;

var unaryOp;

unaryOp[enUnaryOp.Type] = enNodeType.UnaryOp;
unaryOp[enUnaryOp.Token] = op;
unaryOp[enUnaryOp.Op] = op;
unaryOp[enUnaryOp.Expr] = expr;

return unaryOp;