/// @func interpreter_skip_whitespace
/// @args id
var interpreter = argument0;
show_debug_message("Interpreter skip whitespace");

while (interpreter[enInterpreter.CurrentChar] != noone && string_is_whitespace(interpreter[enInterpreter.CurrentChar])) interpreter_advance(interpreter);