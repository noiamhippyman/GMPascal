/// @func interpreter_init
/// @args text
var text = argument0;

var interpreter;

interpreter[enInterpreter.Text] = text;
interpreter[enInterpreter.Pos] = 1;
interpreter[enInterpreter.CurrentToken] = noone;

return interpreter;