# Compilers Lab 2 - 3AC (Three Address Code)

Data structure to be used for the Intermediate Code...

## Definition
Intermediate code with three address code will be demonstrated. From this it
define the following general rules:

1. 𝑎 = 𝑏 𝑜𝑝𝑒𝑟𝑎𝑑𝑜𝑟 𝑐

	Operator can be binary arithmetic or a logical expression

2. 𝑎 = 𝑏

	A protection from one value to another, such as an overwrite

3. 𝑎 = 𝑜𝑝𝑒𝑟𝑎𝑑𝑜𝑟 𝑏

	Unitary operators

4. 𝑖𝑓 𝑐𝑜𝑛𝑑𝑖𝑡𝑖𝑜𝑛 𝑑𝑜 𝐿

	𝑐𝑜𝑛𝑑𝑖𝑡𝑖𝑜𝑛: It is an operation or value verification whose result is a bool true and L is a set of operations

5. 𝑤ℎ𝑖𝑙𝑒 𝑐𝑜𝑛𝑑𝑖𝑡𝑖𝑜𝑛 𝑟𝑒𝑙𝑜𝑜𝑝 𝐿

	reloop refers to the fact that L will be done multiple times while 𝑐𝑜𝑛𝑑𝑖𝑡𝑖𝑜𝑛 is real.


An intermediate language should look like this:

    P → S P | ε 
  
    S → id := id op id 
				| id := op id 
				| id := id 
				| push id 
				| id := pop 
				| if id relop id goto L 
				| L: 
				| goto L


- id’s are register names 
- Constants can replace id’s 
- Typical operators: +, -, *


**Output (input: Factorial YAPL test)**

![3ac](https://github.com/gusmendez99/compilers/blob/main/images/3ac.png?raw=true)

```
 -----> TYPES SUMMARY <-----

Val:  Object 0
Val:  IO 8
Val:  Int 4
Val:  String 40
Val:  Bool 1
Val:  A 36
Val:  B 40
Val:  C 48
Val:  D 44
Val:  E 48
Val:  Main 125

 -----> SYMBOLS TABLE <-----
 [Symbol(name='var', type='Int', scope=<yapl.models.types.Class object at 0x106c81ee0>, length=4, offset=0), Symbol(name='var', type='Int', scope=<yapl.models.types.Class object at 0x106c81ee0>, length=4, offset=0), Symbol(name='var', type='Int', scope=<yapl.models.types.Class object at 0x106c81ee0>, length=4, offset=0), Symbol(name='var', type='Int', scope=<yapl.models.types.Class object at 0x106c81ee0>, length=4, offset=0)]

```

## :star2: Author

Gustavo Méndez

##  :lock: License
MIT
