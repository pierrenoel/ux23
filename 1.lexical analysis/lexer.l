%{
    
%}

%%
fn {printf("The function in C \n");}

[0-9] {printf("Integer: %s\n", yytext);}
[a-zA-Z] {printf("String: %s\n",yytext);}

if {printf("The if condition in C\n");}
else {printf("The else condition in C\n");}
elseif {printf("The else if condition in C\n");}

[+] {printf("The addition operation\n");}
[-] {printf("The negative operation\n");}
[=] {printf("The symbol equals\n");}

[(] {printf("Left parenthesis\n");}
[)] {printf("Right parenthesis)\n");}

%%

int main()
{
    yylex();
}

int yywrap(){}