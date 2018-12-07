text = "5 - - - + - 3";
expectedText = "8";
lexer = lexer_init(text);
parser = parser_init(lexer);
interpreter = interpreter_init(parser);
show_debug_message("Expected: " + expectedText + " :: " + string(interpreter_interpret(interpreter)) + "\nEquation: " + text);