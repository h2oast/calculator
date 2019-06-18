%{
#include "calculator.tab.h"

int yylval;
%}

%option noyywrap

%%

"+"        { return ADD; }
"-"        { return SUB; }
"*"        { return MUL; }
"/"        { return DIV; }
"|"        { return ABS; }
[0-9]+     { yylval = atoi(yytext); return NUMBER; }
\n         { return EOL; }
[ \t]      { /* 忽略空白字符 */ }
.          { printf("Mystery charactor %c\n", *yytext); }

%%
