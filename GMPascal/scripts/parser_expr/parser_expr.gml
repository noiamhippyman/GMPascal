/// @func parser_expr
/// @args id
var parser = argument0;

var node = parser_term(parser);

while (token_is_op(parser[enParser.CurrentToken],[enTokenType.ADD,enTokenType.SUB])) {
	var token = parser[enParser.CurrentToken];
	switch (token_get_type(token)) {
		case enTokenType.ADD:
			parser_eat(parser,enTokenType.ADD);
		break;
		
		case enTokenType.SUB:
			parser_eat(parser,enTokenType.SUB);
		break;
	}
	
	node = bin_op_init(node, token, parser_term(parser));
}

return node;