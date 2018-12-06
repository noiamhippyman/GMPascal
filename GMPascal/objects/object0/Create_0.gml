var text = @"4000000 + 123456";

interpreter = interpreter_init(text);
show_message(interpreter_expr(interpreter));

game_end();