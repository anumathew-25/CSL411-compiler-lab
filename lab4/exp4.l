%{
#include<stdio.h>
int v_count=0;
int c_count=0;
%}
%%
[aeiouAEIOU] {v_count++;}
[a-zA-Z] {c_count++;}
%%
int main(){

printf("Enter a string: ");
yylex();
printf("vowels:%d\nConsonants:%d\n",v_count,c_count);
}
