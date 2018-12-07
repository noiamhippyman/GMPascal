/// @func interpreter_factor
/// @args id
var interpreter = argument0;

var token = interpreter[enInterpreter.CurrentToken];
switch(token_get_type(token)) {
	case enTokenType.INT:
		interpreter_eat(interpreter,enTokenType.INT);
		return token[enToken.Value];
	break;
	
	case enTokenType.LPAREN:
		interpreter_eat(interpreter,enTokenType.LPAREN);
		var result = interpreter_expr(interpreter);
		interpreter_eat(interpreter,enTokenType.RPAREN);
		return result;
	break;
}