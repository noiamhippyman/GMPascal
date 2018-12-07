/// @func interpreter_visit_bin_op
/// @args id,node
var interpreter = argument0;
var node = argument1;

switch (token_get_type(node[enBinOp.Op])) {
	case enTokenType.ADD:
		return interpreter_visit_node(interpreter,node[enBinOp.Left]) + interpreter_visit_node(interpreter,node[enBinOp.Right]);
	break;
	case enTokenType.SUB:
		return interpreter_visit_node(interpreter,node[enBinOp.Left]) - interpreter_visit_node(interpreter,node[enBinOp.Right]);
	break;
	case enTokenType.MUL:
		return interpreter_visit_node(interpreter,node[enBinOp.Left]) * interpreter_visit_node(interpreter,node[enBinOp.Right]);
	break;
	case enTokenType.DIV:
		return interpreter_visit_node(interpreter,node[enBinOp.Left]) / interpreter_visit_node(interpreter,node[enBinOp.Right]);
	break;
}