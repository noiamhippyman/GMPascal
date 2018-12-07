/// @func parser_factor
/// @args id
var parser = argument0;

var currentToken = parser[enParser.CurrentToken];
switch (token_get_type(currentToken)) {
	case enTokenType.ADD:
		parser_eat(parser,enTokenType.ADD);
		return unary_op_init(currentToken,parser_factor(parser));
	break;
	case enTokenType.SUB:
		parser_eat(parser,enTokenType.SUB);
		return unary_op_init(currentToken,parser_factor(parser));
	break;
	
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