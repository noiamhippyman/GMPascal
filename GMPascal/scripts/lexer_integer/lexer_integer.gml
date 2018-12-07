/// @func lexer_integer
/// @args id
var lexer = argument0;

var result = "";

while (lexer[enLexer.CurrentChar] != noone && string_is_digits(lexer[enLexer.CurrentChar])) {
	result += lexer[enLexer.CurrentChar];
	lexer_advance(lexer);
}

return real(result);