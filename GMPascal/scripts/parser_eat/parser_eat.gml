/// @func parser_eat
/// @args id,tokenType
var parser = argument0;
var tokenType = argument1;

if (token_get_type(parser[enParser.CurrentToken]) == tokenType) {
	parser[@enParser.CurrentToken] = lexer_get_next_token(parser[enParser.Lexer]);
} else {
	parser_error();
}