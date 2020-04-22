
%{
#include <stdlib.h>
void yyerror(char *);

#include "y.tab.h"

%}

%%

[\]] {return ']';}

[\[] {return '[';}

[,]  {return ',';}

[0-9]+ {return INT ;}

[\n] {return '\n' ;}

([a-z]*[A-Z]*)+ {return STR ;}

[\"] {return '"';}

. ;

%%


int yywrap() {
  return 1;
}
