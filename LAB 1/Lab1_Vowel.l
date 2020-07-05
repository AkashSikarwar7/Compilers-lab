%{
#include <stdio.h>
int Vowel = 0 ;
int Consonent = 0 ;
%}

%%
[aeiouAEIOU] {Vowel++;}
[a-zA-Z] {Consonent++;}
%%

int yywrap(){
return 1;
}
main(){
printf("Enter the String\n");
yylex();
printf("Vowel = %d \nConsonent = %d",Vowel,Consonent);
}