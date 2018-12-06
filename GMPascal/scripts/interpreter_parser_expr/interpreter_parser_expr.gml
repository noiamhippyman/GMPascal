/// @func interpreter_parser_expr
/// @args id
var interpreter = argument0;
show_debug_message("Interpreter expr");
interpreter[@enInterpreter.CurrentToken] = interpreter_lexer_get_next_token(interpreter);


var result = interpreter_parser_term(interpreter);

while (token_is_op(interpreter[enInterpreter.CurrentToken])) {
	var token = interpreter[enInterpreter.CurrentToken];
	
	switch (token[enToken.Type]) {
		case enTokenType.PLUS:
			interpreter_parser_eat(interpreter,enTokenType.PLUS);
			result += interpreter_parser_term(interpreter);
		break;
		case enTokenType.MINUS:
			interpreter_parser_eat(interpreter,enTokenType.MINUS);
			result -= interpreter_parser_term(interpreter);
		break;
		case enTokenType.MULTIPLY:
			interpreter_parser_eat(interpreter,enTokenType.MULTIPLY);
			result *= interpreter_parser_term(interpreter);
		break;
		case enTokenType.DIVIDE:
			interpreter_parser_eat(interpreter,enTokenType.DIVIDE);
			result /= interpreter_parser_term(interpreter);
		break;
	}
}

return floor(result);