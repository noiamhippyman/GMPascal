/// @func token_init
/// @args type,value
var type = argument0;
var value = argument1;

var token;
token[enToken.Type] = type;
token[enToken.Value] = value;
return token;