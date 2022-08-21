# Compilers Lab 1
ANTLR -> Parser/Lexer -> AST -> Visitors -> Symbol Table


## :ledger: Index

- [Compilers Lab 1](#compilers-lab-1)
  - [:ledger: Index](#ledger-index)
  - [:beginner: About](#beginner-about)
  - [:electric_plug: Installation](#electric_plug-installation)
  - [:zap: Usage](#zap-usage)
    - [:rocket: Run](#rocket-run)
    - [:red_circle: Type Checking & Semantic Rules](#red_circle-type-checking--semantic-rules)
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

![hello_world](https://github.com/gusmendez99/compilers/blob/main/images/hello.png?raw=true)

**Fibonacci**

![fibonacci](https://github.com/gusmendez99/compilers/blob/main/images/fibonacci.png?raw=true)


###  :red_circle: Type Checking & Semantic Rules



- [ ] Main
  - [ ] Main Class
  - [ ] Main has `main` func with/o formal params
  - [ ] Main cannot inherit from any other class
  - [ ] Entry point: `(new Main).main()`
- [ ] Basic types
  - [ ] Int, String & Bool
  - [ ] They can be used in the definition of classes, creating new derived types from them
  - [ ] Classes that define base types cannot be parents of any other class
- [ ] Scope
  - [ ] An attribute within a class must be declared before use
  - [ ] A method within a class can be called recursively
  - [ ] Global & Local scope
  - [ ] All attributes and methods within a class have public access
  - [ ] Identifiers of a local scope hide the definition of identifiers in the global scope
  - [ ] No identifier can be defined more than once within the same scope
  - [ ] If B inherits from A and B overrides a method of A, this method must have the same signature with which it was declared in A
  - [ ] Multiple inheritance of classes and recursive inheritance is not possible
- [ ] Default values
  - [ ] Int: 0
  - [ ] String: ""
  - [ ] Bool: false
- [ ] Cast
  - [ ] Implicit Bool -> Int allowed
  - [ ] Implicit Int <- Bool not allowed
  - [ ] No explicit cast allowed
- [ ] Assign
  - [ ] `<id> <- expr`
  - [ ] The static type `<expr>` must match the type declared for the `<id>`, or be of a type inherited from type of `<id>`
  - [ ] The value of `<expr>` on the right side becomes the value of the <id> object
  - [ ] The data type of the assignment is the data type of `<expr>`
  - [ ] If the lefthand side of the assignment refers to some class attr, this attribute must be defined within the class.
  - [ ] Both the left and the right sides of the mapping allow identifiers recursive {i.e. `[class1].[class2]....[classn].[attribute]`}
- [ ] Method calls & return values
  - [ ] Basic type -> value
  - [ ] Derived type -> ref
  - [ ] The formal arguments of the method are considered local variables of the method
  - [ ] Arguments are evaluated from left to right
  - [ ] The type of the method's return expression must match the return type declared with the method
  - [ ] The value of the return expression will be returned to the calling method and assigned to the left side of an expression
- [ ] Control structs
  - [ ] The static data type of the `<expr>` used in an if or while control structure must be of type Bool
  - [ ] The datatype of the if conditional is the datatype of the block that is a supertype of both branches of the conditional
  - [ ] The data type of the while structure is Object
- [ ] Expressions
  - [ ] Arith operators applied to Int objects
  - [ ] Cmp operators applied to Objects that are of the same static data type or that are Objects of classes inherited from the same class
  - [ ] The unary `~` operation applied to the type Int returns a value of type Int
  - [ ] The unary operation not applied to an expression of data type Bool, returns an expression of data type Bool
- [ ] Special classes
  - [ ] IO
  - [ ] IO, Int, String & Bool (with its core methods)

## :star2: Author

Gustavo Méndez

##  :lock: License
MIT