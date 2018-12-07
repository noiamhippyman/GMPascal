/// @func interpreter_interpret
/// @args id
var interpreter = argument0;

var tree = parser_parse(interpreter[enInterpreter.Parser]);
return interpreter_visit_node(interpreter,tree);