text = "- 3";
expectedText = "-3";
lexer = lexer_init(text);
parser = parser_init(lexer);
interpreter = interpreter_init(parser);
show_message("Expected: " + expectedText + " :: " + string(interpreter_interpret(interpreter)) + "\nEquation: " + text);

text = "+ 3";
expectedText = "3";
lexer = lexer_init(text);
parser = parser_init(lexer);
interpreter = interpreter_init(parser);
show_message("Expected: " + expectedText + " :: " + string(interpreter_interpret(interpreter)) + "\nEquation: " + text);

text = "5 - - - + - 3";
expectedText = "8";
lexer = lexer_init(text);
parser = parser_init(lexer);
interpreter = interpreter_init(parser);
show_message("Expected: " + expectedText + " :: " + string(interpreter_interpret(interpreter)) + "\nEquation: " + text);

text = "5 - - - + - (3 + 4) - +2";
expectedText = "10";
lexer = lexer_init(text);
parser = parser_init(lexer);
interpreter = interpreter_init(parser);
show_message("Expected: " + expectedText + " :: " + string(interpreter_interpret(interpreter)) + "\nEquation: " + text);

text = "5 - ++++----++-+-2";
expectedText = "3";
lexer = lexer_init(text);
parser = parser_init(lexer);
interpreter = interpreter_init(parser);
show_message("Expected: " + expectedText + " :: " + string(interpreter_interpret(interpreter)) + "\nEquation: " + text);

game_end();