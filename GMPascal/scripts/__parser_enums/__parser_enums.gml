enum enNodeType {
	BinOp,Num
}

enum enBinOp {
	Type,Left,Token,Op,Right
}

enum enNum {
	Type,Token,Value
}

enum enParser {
	Lexer,CurrentToken
}