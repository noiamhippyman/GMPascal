/// @func lexer_advance
/// @args id
var lexer = argument0;

lexer[@enLexer.Pos] += 1;

if (lexer[enLexer.Pos] > string_length(lexer[enLexer.Text])) {
	lexer[@enLexer.CurrentChar] = noone;
} else {
	lexer[@enLexer.CurrentChar] = string_char_at(lexer[enLexer.Text],lexer[enLexer.Pos]);
}