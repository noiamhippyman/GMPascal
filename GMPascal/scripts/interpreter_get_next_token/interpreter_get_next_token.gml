/// @func interpreter_get_next_token
/// @args id
var interpreter = argument0;
show_debug_message("Interpreter get next token");

while (interpreter[enInterpreter.CurrentChar] != noone) {
	if (string_is_whitespace(interpreter[enInterpreter.CurrentChar])) {
		interpreter_skip_whitespace(interpreter);
		continue;
	}
	
	if (string_is_digits(interpreter[enInterpreter.CurrentChar])) return token_init(enTokenType.INTEGER,interpreter_integer(interpreter));
	
	if (interpreter[enInterpreter.CurrentChar] == "+") {
		interpreter_advance(interpreter);
		return token_init(enTokenType.PLUS,"+");
	}
	
	if (interpreter[enInterpreter.CurrentChar] == "-") {
		interpreter_advance(interpreter);
		return token_init(enTokenType.MINUS,"-");
	}
	
	if (interpreter[enInterpreter.CurrentChar] == "*") {
		interpreter_advance(interpreter);
		return token_init(enTokenType.MULTIPLY,"*");
	}
	
	if (interpreter[enInterpreter.CurrentChar] == "/") {
		interpreter_advance(interpreter);
		return token_init(enTokenType.DIVIDE,"/");
	}
	
	interpreter_error();
}

return token_init(enTokenType.EOF,noone);