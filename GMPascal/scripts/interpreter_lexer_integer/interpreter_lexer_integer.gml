/// @func interpreter_lexer_integer
/// @args id
var interpreter = argument0;
show_debug_message("Interpreter integer");
var result = "";

while (interpreter[enInterpreter.CurrentChar] != noone && string_is_digits(interpreter[enInterpreter.CurrentChar])) {
	result += interpreter[enInterpreter.CurrentChar];
	interpreter_lexer_advance(interpreter);
}

return real(result);