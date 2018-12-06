/// @func interpreter_get_next_token
/// @args id
var interpreter = argument0;

var text = interpreter[enInterpreter.Text];
var pos = interpreter[enInterpreter.Pos];

if (pos > string_length(text)) {
	return token_init(enTokenType.EOF,noone);
}

var currentChar = string_char_at(text,pos);

if (string_is_digits(currentChar)) {
	var token = token_init(enTokenType.INTEGER, real(currentChar));
	interpreter[@enInterpreter.Pos] += 1;
	return token;
}

if (currentChar == "+") {
	var token = token_init(enTokenType.PLUS,currentChar);
	interpreter[@enInterpreter.Pos] += 1;
	return token;
}

interpreter_error();