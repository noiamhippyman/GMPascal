/// @func interpreter_eat
/// @args id,tokenType
var interpreter = argument0;
var tokenType = argument1;

var currentToken = interpreter[enInterpreter.CurrentToken];

if (currentToken[enToken.Type] == tokenType) {
	interpreter[@enInterpreter.CurrentToken] = interpreter_get_next_token(interpreter);
} else {
	interpreter_error();
}