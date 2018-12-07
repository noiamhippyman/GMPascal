/// @func interpreter_eat
/// @args id,tokenType
var interpreter = argument0;
var tokenType = argument1;

if (token_get_type(interpreter[enInterpreter.CurrentToken]) == tokenType) {
	interpreter[@enInterpreter.CurrentToken] = lexer_get_next_token(interpreter[enInterpreter.Lexer]);
} else {
	interpreter_error();
}