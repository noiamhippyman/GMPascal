text = "14 + 2 * 3 - 6 / 2";
lexer = lexer_init(text);
interpreter = interpreter_init(lexer);
show_message(interpreter_expr(interpreter));


game_end();