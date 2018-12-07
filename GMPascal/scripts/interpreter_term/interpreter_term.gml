/// @func interpreter_term
/// @args id
var interpreter = argument0;

var result = interpreter_factor(interpreter);

while (token_is_op(interpreter[enInterpreter.CurrentToken],[enTokenType.MUL,enTokenType.DIV])) {
	switch (token_get_type(interpreter[enInterpreter.CurrentToken])) {
		case enTokenType.MUL:
			interpreter_eat(interpreter,enTokenType.MUL);
			result = result * interpreter_factor(interpreter);
		break;
		
		case enTokenType.DIV:
			interpreter_eat(interpreter,enTokenType.DIV);
			result = result / interpreter_factor(interpreter);
		break;
	}
}

return result;