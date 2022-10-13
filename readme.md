# Create my own interpreted programming language

This is a project to create my own interpreted programming language. It is a work in progress.

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

## 3. Interpreter

The third step is to create an interpreter. The interpreter is a program that reads the AST and executes the program.

The interpreter is written in C. The interpreter is compiled into an executable called `interpreter`.

The interpreter is run by passing the AST file as an argument. The interpreter then executes the program.

## 4. Compiler

The fourth step is to create a compiler. The compiler is a program that reads the AST and creates an executable.

The compiler is written in C. The compiler is compiled into an executable called `compiler`.

The compiler is run by passing the AST file as an argument. The compiler then creates an executable called `program`.

## 5. Makefile

The fifth step is to create a Makefile. The Makefile is a file that contains a set of rules to compile the project.

The Makefile is written in a file called `Makefile`. The Makefile is then compiled into an executable called `make`.

The Makefile is run by typing `make` in the terminal. The Makefile then compiles the project.

## 6. Source code

The sixth step is to create the source code. The source code is a file that contains the program to be executed.

The source code is written in a file called `program.txt`. The source code is then compiled into an executable called `program`.

The source code is run by typing `./program` in the terminal. The source code is then executed.

## 7. Examples

The seventh step is to create some examples. The examples are files that contain programs to be executed.

