enum enNodeType {
	BinOp,Num,UnaryOp
}

enum enBinOp {
	Type,Left,Token,Op,Right
}

enum enNum {
	Type,Token,Value
}

enum enUnaryOp {
	Type,Token,Op,Expr
}

enum enParser {
	Lexer,CurrentToken
}