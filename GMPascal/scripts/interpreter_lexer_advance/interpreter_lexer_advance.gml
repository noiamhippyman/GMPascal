/// @func interpreter_lexer_advance
/// @args id
var interpreter = argument0;
show_debug_message("Interpreter advance");
interpreter[@enInterpreter.Pos] += 1;
var pos = interpreter[enInterpreter.Pos];
var text = interpreter[enInterpreter.Text];
if (pos > string_length(text)) {
	interpreter[@enInterpreter.CurrentChar] = noone;
} else {
	interpreter[@enInterpreter.CurrentChar] = string_char_at(text, pos);
}