text = "9 / 4";
interpreter = interpreter_init(text);
show_message(text + ": " + string(interpreter_parser_expr(interpreter)));
text = "9 + 4 - 4";
interpreter = interpreter_init(text);
show_message(text + ": " + string(interpreter_parser_expr(interpreter)));
text = "9 * 4";
interpreter = interpreter_init(text);
show_message(text + ": " + string(interpreter_parser_expr(interpreter)));

game_end();