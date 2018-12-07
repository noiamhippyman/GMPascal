/// @func num_init
/// @args token
var token = argument0;

var num;

num[enNum.Type] = enNodeType.Num;
num[enNum.Token] = token;
num[enNum.Value] = token[enToken.Value];

return num;