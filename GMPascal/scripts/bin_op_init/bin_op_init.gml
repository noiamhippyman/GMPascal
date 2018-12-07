/// @func bin_op_init
/// @args left,op,right
var left = argument0;
var op = argument1;
var right = argument2;

var binOp;

binOp[enBinOp.Type] = enNodeType.BinOp;
binOp[enBinOp.Left] = left;
binOp[enBinOp.Token] = op;
binOp[enBinOp.Op] = op;
binOp[enBinOp.Right] = right;

return binOp;