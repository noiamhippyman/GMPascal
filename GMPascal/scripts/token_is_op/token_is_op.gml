/// @func token_is_op
/// @args id
var token = argument0;

switch (token_get_type(token)) {
	case enTokenType.ADD:
	case enTokenType.SUB:
	case enTokenType.MUL:
	case enTokenType.DIV:
	return true;
}

return false;