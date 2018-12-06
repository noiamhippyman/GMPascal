/// @func interpreter_init
/// @args text
var text = argument0;
show_debug_message("Interpreter init");

var interpreter;

interpreter[enInterpreter.Text] = text;
interpreter[enInterpreter.Pos] = 1;
interpreter[enInterpreter.CurrentToken] = noone;
interpreter[enInterpreter.CurrentChar] = string_char_at(text, 1);

return interpreter;