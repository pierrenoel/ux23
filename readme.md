# UX23

This is a project to create my own interpreted programming language. It is a work in progress.

![](https://perugini.cps.udayton.edu/teaching/books/SPUC/www/lecture_notes/images/lexyacccalc.png)

## 00. BNF (Programming syntax)

The syntax of the language is defined by the following BNF:

### Ressources : 
- https://en.wikipedia.org/wiki/Backus%E2%80%93Naur_form
- https://xitog.github.io/dgx/informatique/bnf.html

## My Grammar (BNF)

[See the Grammar](00.BNF/grammar.bnf)

## 1. Flex for lexical analysis

The first step is to create a lexer. The lexer is a program that reads the source code and splits it into tokens. The tokens are then passed to the parser.

The lexer is created using Flex. Flex is a tool that creates a lexer from a set of rules. The rules are written in a file called `lexer.l`. The lexer is then compiled into a C program called `lex.yy.c`. The C program is then compiled into an executable called `lexer`.

The lexer is run by passing the source code file as an argument. The lexer then outputs the tokens to the standard output.

```bash
$ flex -o lexique_u23.c lexique_u23.lex
$ gcc -o lexique_simple lexique_simple.c
$ gcc -o lexique_u23 lexique_u23.c
$ touch first.u23
$ ./lexique_u23 first.u23
```

- [See the Flex file](01.lexical_analysis/lexique_u23.lex)
- [Read my quick notes about Flex](flex.md)

## 2. Bison for parsing

The second step is to create a parser. The parser is a program that reads the tokens and creates an abstract syntax tree (AST). The AST is then passed to the interpreter.

The parser is created using Bison. Bison is a tool that creates a parser from a set of rules. The rules are written in a file called `parser.y`. The parser is then compiled into a C program called `parser.tab.c`. The C program is then compiled into an executable called `parser`.

The parser is run by passing the tokens file as an argument. The parser then outputs the AST to the standard output.

```bash
$ bison -d parser.y
$ gcc parser.tab.c -o parser
```

Resources :
- [https://www.gnu.org/software/bison/manual/html_node/Running.html](https://www.gnu.org/software/bison/manual/html_node/Running.html)
- [https://www.gnu.org/software/bison/manual/html_node/Invoking-Bison.html](https://www.gnu.org/software/bison/manual/html_node/Invoking-Bison.html)

- [Read this notes lex & yacc tuto](https://cse.iitkgp.ac.in/~bivasm/notes/LexAndYaccTutorial.pdf)