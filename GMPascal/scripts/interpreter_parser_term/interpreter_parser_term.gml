/// @func interpreter_parser_term
/// @args id
var interpreter = argument0;

var token = interpreter[enInterpreter.CurrentToken];
interpreter_parser_eat(interpreter,enTokenType.INTEGER);
return real(token[enToken.Value]);