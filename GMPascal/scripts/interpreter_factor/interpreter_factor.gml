/// @func interpreter_factor
/// @args id
var interpreter = argument0;

var token = interpreter[enInterpreter.CurrentToken];
interpreter_eat(interpreter,enTokenType.INT);
return token[enToken.Value];