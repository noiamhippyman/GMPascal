/// @func interpreter_parser_eat
/// @args id,tokenType
var interpreter = argument0;
var tokenType = argument1;
show_debug_message("Interpreter eat");
var currentToken = interpreter[enInterpreter.CurrentToken];

if (currentToken[enToken.Type] == tokenType) {
	interpreter[@enInterpreter.CurrentToken] = interpreter_lexer_get_next_token(interpreter);
} else {
	interpreter_lexer_error();
}