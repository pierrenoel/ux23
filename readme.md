# Create my own interpreted programming language

This is a project to create my own interpreted programming language. It is a work in progress.

![](https://perugini.cps.udayton.edu/teaching/books/SPUC/www/lecture_notes/images/lexyacccalc.png)

## 1. Flex for lexical analysis

The first step is to create a lexer. The lexer is a program that reads the source code and splits it into tokens. The tokens are then passed to the parser.

The lexer is created using Flex. Flex is a tool that creates a lexer from a set of rules. The rules are written in a file called `lexer.l`. The lexer is then compiled into a C program called `lex.yy.c`. The C program is then compiled into an executable called `lexer`.

The lexer is run by passing the source code file as an argument. The lexer then outputs the tokens to the standard output.

```bash
$ flex lexer.l
$ gcc lex.yy.c -o lexer
```

## 2. Bison for parsing

The second step is to create a parser. The parser is a program that reads the tokens and creates an abstract syntax tree (AST). The AST is then passed to the interpreter.

The parser is created using Bison. Bison is a tool that creates a parser from a set of rules. The rules are written in a file called `parser.y`. The parser is then compiled into a C program called `parser.tab.c`. The C program is then compiled into an executable called `parser`.

The parser is run by passing the tokens file as an argument. The parser then outputs the AST to the standard output.

```bash
$ bison -d parser.y
$ gcc parser.tab.c -o parser
```