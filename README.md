# Compilers Lab 0
ANTLR -> Parser/Lexer -> Parse Tree


## :ledger: Index

- [Compilers Lab 0](#compilers-lab-0)
  - [:ledger: Index](#ledger-index)
  - [:beginner: About](#beginner-about)
  - [:electric_plug: Installation](#electric_plug-installation)
  - [:zap: Usage](#zap-usage)
    - [:cyclone: Compile](#cyclone-compile)
    - [:rocket: Run](#rocket-run)
    - [:red_circle: Error Handling](#red_circle-error-handling)
  - [:star2: Authors](#star2-authors)
  - [:lock: License](#lock-license)

##  :beginner: About
Implementation of an ANTLR4 parser & lexer based on YAPL Language Specification, made with Java.



##  :electric_plug: Installation
You must follow installation instructions from [ANTLR4](https://www.antlr.org/download.html) v4.9.2.
Remember to place ANTLR .jar in `/usr/local/lib/` folder & set `antlr alias`.

```
alias antlr4='java -jar /usr/local/lib/antlr-4.9.2-complete.jar'
```

## :zap: Usage
###  :cyclone: Compile

```
make compile
```

###  :rocket: Run

```
make run
```

If everything it's OK, it'll display a parse tree of the test input file:

**Fibonacci**

![fibonacci](https://github.com/gusmendez99/compilers-lab-0/blob/main/images/fibonacci.png?raw=true)

**Operator Precedence**

![precedence](https://github.com/gusmendez99/compilers-lab-0/blob/main/images/precedence.png?raw=true)


###  :red_circle: Error Handling

Example 1: String length > 1024 or has escaped chars (Bad)

![string](https://github.com/gusmendez99/compilers-lab-0/blob/main/images/error_string.png?raw=true)


Example 2: Bad comment

![string](https://github.com/gusmendez99/compilers-lab-0/blob/main/images/error_comment.png?raw=true)




## :star2: Authors

Roberto Figueroa

Gustavo Méndez

##  :lock: License
MIT