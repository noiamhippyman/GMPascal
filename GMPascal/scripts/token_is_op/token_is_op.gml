/// @func token_is_op
/// @args id
var token = argument0;

var result = false;
switch (token[enToken.Type]) {
	case enTokenType.PLUS:
	case enTokenType.MINUS:
	case enTokenType.MULTIPLY:
	case enTokenType.DIVIDE:
		result = true;
	break;
}

return result;