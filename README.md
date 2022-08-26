# Compilers Project 1 - Semantic Analysis
ANTLR -> Parser/Lexer -> AST -> Visitors -> Symbol Table -> Types Validation


## :ledger: Index

- [Compilers Project 1 - Semantic Analysis](#compilers-project-1---semantic-analysis)
  - [:ledger: Index](#ledger-index)
  - [:beginner: About](#beginner-about)
  - [:electric_plug: Installations & Setup](#electric_plug-installations--setup)
  - [:zap: Usage](#zap-usage)
    - [:rocket: Run](#rocket-run)
    - [:red_circle: Type Checking & Semantic Rules](#red_circle-type-checking--semantic-rules)
  - [:star2: Author](#star2-author)
  - [:lock: License](#lock-license)

##  :beginner: About
Implementation of Semantic Analysis, based on YAPL Language Specification. Made with Python, Flask & React.

##  :electric_plug: Installations & Setup

**Flask**

Just need to install `requirements.txt` dependencies for Flask & ANTLR.


**React**

- `yarn install`
- Create a `.env` file and set `REACT_APP_API_URL` value, localhost is default value


## :zap: Usage

###  :rocket: Run

**Flask**

```
python3 app.py
```

**React**

```
yarn start
```

If everything it's OK, the YAPL Compiler Web Editor must look like this:


**Monaco Editor**

![demo](https://github.com/gusmendez99/compilers/blob/main/images/demo.png?raw=true)


###  :red_circle: Type Checking & Semantic Rules

- [x] Main
  - [x] Main Class
  - [x] Main has `main` func with/o formal params
  - [x] Main cannot inherit from any other class
  - [x] Entry point: `(new Main).main()`
- [x] Basic types
  - [x] Int, String & Bool
  - [x] They can be used in the definition of classes, creating new derived types from them
  - [x] Classes that define base types cannot be parents of any other class
- [x] Scope
  - [x] An attribute within a class must be declared before use
  - [x] A method within a class can be called recursively
  - [x] Global & Local scope
  - [x] All attributes and methods within a class have public access
  - [x] Identifiers of a local scope hide the definition of identifiers in the global scope
  - [x] No identifier can be defined more than once within the same scope
  - [x] If B inherits from A and B overrides a method of A, this method must have the same signature with which it was declared in A
  - [x] Multiple inheritance of classes and recursive inheritance is not possible
- [x] Default values
  - [x] Int: 0
  - [x] String: ""
  - [x] Bool: false
- [x] Cast
  - [x] Implicit Bool -> Int allowed
  - [x] Implicit Int <- Bool not allowed
  - [x] No explicit cast allowed
- [x] Assign
  - [x] `<id> <- <expr>`
  - [x] The static type `<expr>` must match the type declared for the `<id>`, or be of a type inherited from type of `<id>`
  - [x] The value of `<expr>` on the right side becomes the value of the <id> object
  - [x] The data type of the assignment is the data type of `<expr>`
  - [x] If the lefthand side of the assignment refers to some class attr, this attribute must be defined within the class.
  - [x] Both the left and the right sides of the mapping allow identifiers recursive {i.e. `[class1].[class2]....[classn].[attribute]`}
- [x] Method calls & return values
  - [x] Basic type -> value
  - [x] Derived type -> ref
  - [x] The formal arguments of the method are considered local variables of the method
  - [x] Arguments are evaluated from left to right
  - [x] The type of the method's return expression must match the return type declared with the method
  - [x] The value of the return expression will be returned to the calling method and assigned to the left side of an expression
- [x] Control structs
  - [x] The static data type of the `<expr>` used in an if or while control structure must be of type Bool
  - [x] The datatype of the if conditional is the datatype of the block that is a supertype of both branches of the conditional
  - [x] The data type of the while structure is Object
- [x] Expressions
  - [x] Arith operators applied to Int objects
  - [x] Cmp operators applied to Objects that are of the same static data type or that are Objects of classes inherited from the same class
  - [x] The unary `~` operation applied to the type Int returns a value of type Int
  - [x] The unary operation not applied to an expression of data type Bool, returns an expression of data type Bool
- [x] Special classes
  - [x] IO
  - [x] IO, Int, String & Bool (with its core methods)


**TODO: Extras**
After a successful project presentation, we could add the following extras:

- Capture all errors list
- Add more test files


## :star2: Author

Gustavo Méndez

##  :lock: License
MIT
