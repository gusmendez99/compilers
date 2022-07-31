lexer grammar Lex;

NEWLINE: '\r'? '\n' -> skip;
WS:  [ \t\f\r\n]+ -> skip;

LINECOMMENT: '--' (~ '\n')* '\n' -> skip;
LINECOMMENTEOF: '--' (~ '\n')* EOF -> skip;
BEGINCOMMENT: '(*' -> skip ;
ENDCOMMENT:  '*)' -> skip;

TRUE: [t][rR][uU][eE];
FALSE: [f][aA][lL][sS][eE];

CLASS: [cC][lL][aA][sS][sS];
FI: [fF][iI];
IF: [iI][fF];
IN: [iI][nN];
INHERITS: [iI][nN][hH][eE][rR][iI][tT][sS];
ISVOID: [iI][sS][vV][oO][iI][dD];
LET: [lL][eE][tT];
LOOP: [lL][oO][oO][pP];
POOL: [pP][oO][oO][lL];
THEN: [tT][hH][eE][nN];
ELSE: [eE][lL][sS][eE];
WHILE: [wW][hH][iI][lL][eE];
CASE: [cC][aA][sS][eE];
ESAC: [eE][sS][aA][cC];
NEW: [nN][eE][wW];
OF: [oO][fF];
NOT: [nN][oO][tT];

TYPE: [A-Z][_A-Za-z0-9]*;
ID:  [a-z][_A-Za-z0-9]*;
INT_CONST: [0-9][0-9]*;

LPAREN: '(';
RPAREN: ')';
LBRACE: '{';
RBRACE: '}';
SEMI: ';';
COLON: ':';
ASSIGN: '<-';
DARROW: '=>';
NEG: '~';
COMMA: ',';
PERIOD: '.';
AT: '@';
MUL: '*';
ADD: '+';
MINUS: '-';
DIV: '/';
LT: '<';
LEQ: '<=';
EQ: '=';
ERROR: . ;


fragment
ESC: '\\"' | '\\\\' ;

STR_CONST:   '"' ( ESC | .)*? '"';