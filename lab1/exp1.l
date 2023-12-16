%{
#include<stdio.h>
%}
DIGIT [0-9]
LETTER [a-zA-Z]
ID {LETTER}({LETTER}|{DIGIT})*
NUM {DIGIT}+(\.{DIGIT}+)?
WS [\t\n]

%%
#.* {printf("Preprocessor directive:%s\n",yytext);}
(if|else|while|int|return) {printf("keyword:%s\n",yytext);}
{ID} {printf("ID:%s\n",yytext);}
{NUM} {printf("NUM:%s\n",yytext);}
[+\-*/=] {printf("operator:%s\n",yytext);}
[(){},"]    { printf("CHARACTER: %s\n", yytext); }
{WS};
.           { printf("INVALID CHARACTER: %s\n", yytext); }
%%

int main(){
yylex();
return 0;
}
