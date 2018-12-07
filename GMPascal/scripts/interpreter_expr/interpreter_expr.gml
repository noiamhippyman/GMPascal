/// @func interpreter_expr
/// @args id
var interpreter = argument0;

var result = interpreter_term(interpreter);

while (token_is_op(interpreter[enInterpreter.CurrentToken],[enTokenType.ADD,enTokenType.SUB])) {
	switch (token_get_type(interpreter[enInterpreter.CurrentToken])) {
		case enTokenType.ADD:
			interpreter_eat(interpreter,enTokenType.ADD);
			result = result + interpreter_term(interpreter);
		break;
		case enTokenType.SUB:
			interpreter_eat(interpreter,enTokenType.SUB);
			result = result - interpreter_term(interpreter);
		break;
	}
}

return result;