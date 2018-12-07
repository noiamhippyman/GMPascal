/// @func interpreter_visit_unary_op
/// @args id,node
var interpreter = argument0;
var node = argument1;

var op = token_get_type(node[enUnaryOp.Op]);
switch (op) {
	case enTokenType.ADD:
		return interpreter_visit_node(interpreter,node[enUnaryOp.Expr]);
	break;
	
	case enTokenType.SUB:
		return -interpreter_visit_node(interpreter,node[enUnaryOp.Expr]);
	break;
}