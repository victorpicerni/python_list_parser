

%{
#include <stdio.h>
  #include <stdlib.h>
void yyerror(char *c);
int yylex(void);
%}

%token '[' ']' ',' '"' INT STR '\n'

%%
S: 
 L '\n' {printf("OK\n");}
;
L :
  '[' C ']'
;
C :
 A {}
 | {}
;

A:
 INT {}
 |STR {}
 |'"' STR '"' {}
 |L {}
 |A ',' A {}
;

%%

void yyerror(char *s) {
printf("ERRO\n");
}

int main() {
  yyparse();
    return 0;

}

