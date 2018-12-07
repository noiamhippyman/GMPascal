/// @func parser_term
/// @args id
var parser = argument0;

var node = parser_factor(parser);

while (token_is_op(parser[enParser.CurrentToken],[enTokenType.MUL,enTokenType.DIV])) {
	var token = parser[enParser.CurrentToken];
	switch (token_get_type(token)) {
		case enTokenType.MUL:
			parser_eat(parser,enTokenType.MUL);
		break;
		
		case enTokenType.DIV:
			parser_eat(parser,enTokenType.DIV);
		break;
	}
	
	node = bin_op_init(node, token, parser_factor(parser));
}

return node;