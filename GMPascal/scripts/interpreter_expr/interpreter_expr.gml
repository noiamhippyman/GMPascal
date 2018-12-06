/// @func interpreter_expr
/// @args id
var interpreter = argument0;

interpreter[@enInterpreter.CurrentToken] = interpreter_get_next_token(interpreter);

var left = interpreter[enInterpreter.CurrentToken];
interpreter_eat(interpreter,enTokenType.INTEGER);

var op = interpreter[enInterpreter.CurrentToken];
interpreter_eat(interpreter,enTokenType.PLUS);

var right = interpreter[enInterpreter.CurrentToken];
interpreter_eat(interpreter,enTokenType.INTEGER);

var result = left[enToken.Value] + right[enToken.Value];
return result;