/// @func token_string
/// @args id
var token = argument0;
var type = "unknown";
switch (token[enToken.Type]) {
	case enTokenType.INT: type = "INT"; break;
	case enTokenType.ADD: type = "ADD"; break;
	case enTokenType.SUB: type = "SUB"; break;
	case enTokenType.MUL: type = "MUL"; break;
	case enTokenType.DIV: type = "DIV"; break;
	case enTokenType.EOF: type = "EOF"; break;
}
var value = token[enToken.Value] == noone ? "noone" : string(token[enToken.Value]);

return "Token("+type+","+value+")";