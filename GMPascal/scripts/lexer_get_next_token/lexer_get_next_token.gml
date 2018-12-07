/// @func lexer_get_next_token
/// @args id
var lexer = argument0;

while (lexer[enLexer.CurrentChar] != noone) {
	if (string_is_whitespace(lexer[enLexer.CurrentChar])) {
		lexer_skip_whitespace(lexer);
		continue;
	}
	
	if (string_is_digits(lexer[enLexer.CurrentChar])) {
		return token_init(enTokenType.INT,lexer_integer(lexer));
	}
	
	/*
	if (lexer[enLexer.CurrentChar] == "*") {
		lexer_advance(lexer);
		return token_init(enTokenType.MUL,"*");
	}
	
	if (lexer[enLexer.CurrentChar] == "/") {
		lexer_advance(lexer);
		return token_init(enTokenType.DIV,"/");
	}
	
	if (lexer[enLexer.CurrentChar] == "+") {
		lexer_advance(lexer);
		return token_init(enTokenType.ADD,"+");
	}
	
	if (lexer[enLexer.CurrentChar] == "-") {
		lexer_advance(lexer);
		return token_init(enTokenType.SUB,"-");
	}
	*/
	
	switch (lexer[enLexer.CurrentChar]) {
		case "*":
			lexer_advance(lexer);
			return token_init(enTokenType.MUL,"*");
		break;
		case "/":
			lexer_advance(lexer);
			return token_init(enTokenType.DIV,"/");
		break;
		case "+":
			lexer_advance(lexer);
			return token_init(enTokenType.ADD,"+");
		break;
		case "-":
			lexer_advance(lexer);
			return token_init(enTokenType.SUB,"-");
		break;
		case "(":
			lexer_advance(lexer);
			return token_init(enTokenType.LPAREN,"(");
		break;
		case ")":
			lexer_advance(lexer);
			return token_init(enTokenType.RPAREN,")");
		break;
	}
	
	lexer_error();
}

return token_init(enTokenType.EOF,noone);