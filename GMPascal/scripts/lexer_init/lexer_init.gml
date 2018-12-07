/// @func lexer_init
/// @args text
var text = argument0;

var lexer;

lexer[enLexer.Text] = text;
lexer[enLexer.Pos] = 1;
lexer[enLexer.CurrentChar] = string_char_at(text,1);

return lexer;