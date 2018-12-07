/// @func interpreter_init
/// @args lexer
var lexer = argument0;

var interpreter;

interpreter[enInterpreter.Lexer] = lexer;
interpreter[enInterpreter.CurrentToken] = lexer_get_next_token(lexer);

return interpreter;