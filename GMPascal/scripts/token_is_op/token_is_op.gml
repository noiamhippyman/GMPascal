/// @func token_is_op
/// @args id,[ops]
var token = argument[0];
var ops = argument_count == 2 ? argument[1] : [enTokenType.ADD,enTokenType.SUB,enTokenType.MUL,enTokenType.DIV];
var type = token_get_type(token);

for (var i = 0; i < array_length_1d(ops); ++i) {
	if (type == ops[i]) return true;
}

return false;