/// @func parser_factor
/// @args id
var parser = argument0;

var currentToken = parser[enParser.CurrentToken];
switch (token_get_type(currentToken)) {
	case enTokenType.INT:
		parser_eat(parser,enTokenType.INT);
		return num_init(currentToken);
	break;
	
	case enTokenType.LPAREN:
		parser_eat(parser,enTokenType.LPAREN);
		var node = parser_expr(parser);
		parser_eat(parser,enTokenType.RPAREN);
		return node;
	break;
}