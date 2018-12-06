/// @func interpreter_expr
/// @args id
var interpreter = argument0;
show_debug_message("Interpreter expr");
interpreter[@enInterpreter.CurrentToken] = interpreter_get_next_token(interpreter);

var left = interpreter[enInterpreter.CurrentToken];
interpreter_eat(interpreter,enTokenType.INTEGER);

var op = interpreter[enInterpreter.CurrentToken];
var opType = op[enToken.Type];
switch (opType) {
	case enTokenType.PLUS:
		interpreter_eat(interpreter,enTokenType.PLUS);
	break;
	case enTokenType.MINUS:
		interpreter_eat(interpreter,enTokenType.MINUS);
	break;
	case enTokenType.MULTIPLY:
		interpreter_eat(interpreter,enTokenType.MULTIPLY);
	break;
	case enTokenType.DIVIDE:
		interpreter_eat(interpreter,enTokenType.DIVIDE);
	break;
}

var right = interpreter[enInterpreter.CurrentToken];
interpreter_eat(interpreter,enTokenType.INTEGER);

var result = "ERROR";
switch (opType) {
	case enTokenType.PLUS:
		result = real(left[enToken.Value]) + real(right[enToken.Value]);
	break;
	case enTokenType.MINUS:
		result = real(left[enToken.Value]) - real(right[enToken.Value]);
	break;
	case enTokenType.MULTIPLY:
		result = real(left[enToken.Value]) * real(right[enToken.Value]);
	break;
	case enTokenType.DIVIDE:
		result = real(left[enToken.Value]) / real(right[enToken.Value]);
	break;
}

return result;