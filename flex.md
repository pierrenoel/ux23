# Write your Lexical Analyzer using Flex

## 1. Flex for lexical analysis

The first step is to create a lexer. The lexer is a program that reads the source code and splits it into tokens. The tokens are then passed to the parser.

This file has three parts:

- the first part is where you put all the includes and defines

- the second part is where you put all the rules

- the third part is where you put all the actions

### 1.1. The first part

The first part is where you put all the includes and defines.

```c
%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
%}
```

### 1.2. The second part

The second part is where you put all the rules.

```c
%%
[a-zA-Z_][a-zA-Z0-9_]* { printf("ID: %s ", yytext); }
[0-9]+ { printf("NUM: %s", yytext); }
%%
```

In this example, we have two rules:

- the first rule matches any word that starts with a letter or an underscore and contains only letters, numbers or underscores

- the second rule matches any number

## 1.3. The third part

The third part is where you put all the actions.

```c
int main()
{
    yylex();
}

int yywrap(){}
}
```

In this example, we have two actions:

- the first action is the main function

- the second action is the yywrap function
