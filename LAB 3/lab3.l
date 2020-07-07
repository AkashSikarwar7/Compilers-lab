%{
#include <stdio.h>
int positiveInt = 0;
int positiveFrac = 0;
int negetiveInt = 0;
int negetiveFrac = 0;
%}

%%
[\ ]
[-][0-9]+		 {negetiveInt++;}
[0-9]+		 {positiveInt++;}
[-][0-9]+[.][0-9]+	 {negetiveFrac++;}
[0-9]+[.][0-9]+ 	 {positiveFrac++;}
[\n] 		{printf("Positive Int=%d\n
		Negetive Int=%d\nPositive
		 Frac =%d\nNegetive Frac
		=%d\n",positiveInt,negetiveInt,
		positiveFrac,negetiveFrac);}
%%

int yywrap( ){
return 1;
}
void main(){
printf("Enter Values:\n");
yylex();
}