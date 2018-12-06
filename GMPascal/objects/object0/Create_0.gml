var text = @"1+9";

interpreter = interpreter_init(text);
show_message(interpreter_expr(interpreter));

game_end();