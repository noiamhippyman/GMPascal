var text = "50 + 150"
interpreter = interpreter_init(text);
show_message(text + ": " + string(interpreter_expr(interpreter)));

text = "50 - 150"
interpreter = interpreter_init(text);
show_message(text + ": " + string(interpreter_expr(interpreter)));

text = "150 / 50"
interpreter = interpreter_init(text);
show_message(text + ": " + string(interpreter_expr(interpreter)));

text = "3 * 50"
interpreter = interpreter_init(text);
show_message(text + ": " + string(interpreter_expr(interpreter)));

game_end();