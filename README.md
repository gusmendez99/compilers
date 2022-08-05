# Compilers Lab 1
ANTLR -> Parser/Lexer -> AST -> Visitors -> Symbol Table


## :ledger: Index

- [Compilers Lab 1](#compilers-lab-1)
  - [:ledger: Index](#ledger-index)
  - [:beginner: About](#beginner-about)
  - [:electric_plug: Installation](#electric_plug-installation)
  - [:zap: Usage](#zap-usage)
    - [:rocket: Run](#rocket-run)
    - [:red_circle: Type Checking](#red_circle-type-checking)
  - [:star2: Author](#star2-author)
  - [:lock: License](#lock-license)

##  :beginner: About
Implementation of Symbol Table & Hierarchy Checking, based on YAPL Language Specification. Made with Python...

##  :electric_plug: Installation

Just need to install `requirements.txt` dependencies. ANTLR4 compiling steps for lexer/parser generation were omitted, but you can generate them with `make all`.

## :zap: Usage

###  :rocket: Run

```
python3 main.py TEST_FILE
```

If everything it's OK, the Symbol Table may look like the following outputs:

**Hello World**

![hello_world](https://github.com/gusmendez99/compilers-lab-0/blob/main/images/hello.png?raw=true)

**Fibonacci**

![fibonacci](https://github.com/gusmendez99/compilers-lab-0/blob/main/images/fibonacci.png?raw=true)


###  :red_circle: Type Checking

- [x] Hierarchy Checking
  - [x] Class
  - [x] Methods (return type)
  - [x] Attributes (position, quantity & override)
- [x] Base Type Checking (Complete TODOs for Project 1)

## :star2: Author

Gustavo Méndez

##  :lock: License
MIT