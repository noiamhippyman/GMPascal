/// @func interpreter_visit_node
/// @args id,node

var interpreter = argument0;
var node = argument1;

switch (node[0]) {
	case enNodeType.BinOp:
		return interpreter_visit_bin_op(interpreter,node);
	break;
	
	case enNodeType.Num:
		return interpreter_visit_num(interpreter,node);
	break;
	
	case enNodeType.UnaryOp:
		return interpreter_visit_unary_op(interpreter,node);
	break;
	
	default:
		show_error("INTERPRETER ERROR::No visit method found",true);
	break;
}