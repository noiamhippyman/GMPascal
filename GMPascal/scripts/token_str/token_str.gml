/// @func token_str
/// @args id
var token = argument0;

var type = token[@enToken.Type];
var value = token[@enToken.Value];

switch (type) {
	case enTokenType.INTEGER: type = "INTEGER"; break;
	case enTokenType.PLUS: type = "PLUS"; break;
	case enTokenType.EOF: type = "EOF"; break;
}

return "Token(" + string(type) + ", " + string(value) + ")";