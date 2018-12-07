/// @func parser_init
/// @args lexer
var lexer = argument0;

var parser;

parser[enParser.Lexer] = lexer;
parser[enParser.CurrentToken] = lexer_get_next_token(lexer);

return parser;