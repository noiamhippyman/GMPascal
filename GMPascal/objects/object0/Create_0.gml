text = "(5 + 5) * (2 + (12 / (3 + 3)))";
lexer = lexer_init(text);
parser = parser_init(lexer);
interpreter = interpreter_init(parser);
show_message(interpreter_interpret(interpreter));

text = "(10 - 50) * 4 / 2";
lexer = lexer_init(text);
parser = parser_init(lexer);
interpreter = interpreter_init(parser);
show_message(interpreter_interpret(interpreter));

text = "5 * 5 + 1 * 5 + 2 * 6";
lexer = lexer_init(text);
parser = parser_init(lexer);
interpreter = interpreter_init(parser);
show_message(interpreter_interpret(interpreter));

game_end();