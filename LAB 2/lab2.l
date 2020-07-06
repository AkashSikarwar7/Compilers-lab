%{
#include <stdio.h>
#include <string.h>
int largestlength=0;
char largestword[20];
%}

%%
[\ ]
[a-zA-Z]+ {printf("%s = %d\n",yytext,yyleng); 
	if(yyleng > largestlength) {
		largestlength=yyleng;
		strcpy(largestword,yytext);
		}
	}
[\n] {printf("\nLargest length = %d",largestlength);
        printf("\nLargest word = %s",largestword);
        }
%%

int yywrap(){
return 1;
}

main(){
printf("Enter the String\n");
yylex();
}