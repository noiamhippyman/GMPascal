/// @func lexer_skip_whitespace
/// @args id
var lexer = argument0;

while (lexer[enLexer.CurrentChar] != noone && string_is_whitespace(lexer[enLexer.CurrentChar])) {
	lexer_advance(lexer);
}