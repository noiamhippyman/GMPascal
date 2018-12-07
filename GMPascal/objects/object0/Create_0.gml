text = "(5 + 5) * (2 + (12 / (3 + 3)))";
lexer = lexer_init(text);
interpreter = interpreter_init(lexer);
show_message(interpreter_expr(interpreter));


game_end();