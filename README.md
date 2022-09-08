# Compilers Lab 2 - 3AC (Three Address Code) with CIL

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



## Representation

### Basic Elements

```

|   offset 0    |          Class              |
| :-----------: | :-------------------------: |
|   offset 4    |      Obj size(-> number)    |
|   offset 8    |   Dispatch pointer(-> *)    |
|   offset 12   |             Attrs           |

# Int Prototype

|   offset 0    |           Class       |
| :-----------: | :-------------------: |
|   offset 4    |         Obj Size      |
|   offset 8    |         Dispatch *    |
|   offset 12   |     Value(* to Int)   |

# Bool

|   offset 0    |             Class          |
| :-----------: | :------------------------: |
|   offset 4    |           Obj Size         |
|   offset 8    |          Dispatch *        |
|   offset 12   |    Bool Value(* to Int)    |

# String

|   offset 0    |                  Class               |
| :-----------: | :----------------------------------: |
|   offset 4    |                Obj Size              |
|   offset 8    |           Dispatch pointer           |
|   offset 12   |         String size (* to Int)       |
|   offset 16   |       ASCII Sequence(* to char)      |

```

### Objects

```markdown
# Example

class A { a: Object; }; 
class B inherits A { b: Object; }; 
class C inherits B { c: Object; d: Object; };
```


**Child**

```
| offset 0  |         Class      |
| :-------: | :----------------: |
| offset 4  |       Obj size     |
| offset 8  |      Dispatch *    |
| offset 12 |       Attr `a`     |
| offset 16 |       Attr `b`     |
| offset 20 |       Attr `c`     |
| offset 24 |       Attr `d`     |

```


## Code


I'll implement intermediate code generation with [CIL](https://en.wikipedia.org/wiki/Common_Intermediate_Language) for Project 2. So, some code features are required in this lab:

![cil_demo](https://github.com/gusmendez99/compilers/blob/main/images/cil_demo.png?raw=true)


NOTE: ptr stands for 'pointer', in the virtual table for that class. `Global` vars are passed with its parent class name, whilst `Local` vars are passed as instance var.

**Output (input: Factorial YAPL test)**

```
 -----> TYPES SUMMARY <-----

[type Object:1, type Int:2, type Bool:3, type String:4, type IO:5, type Factorial:6, type Fibonacci:7, type Main:8]


 -----> SYMBOLS TABLE <-----

Object: has (0) attrs, and (3) as object length
Object Dispatch Table:
-> init_Object_ptr: .asciiz "init_Object"
-> abort_ptr: .asciiz "abort"
-> type_name_ptr: .asciiz "type_name"
-> copy_ptr: .asciiz "copy"


Int: has (0) attrs, and (3) as object length
Int Dispatch Table:
-> init_Int_ptr: .asciiz "init_Int"


Bool: has (0) attrs, and (3) as object length
Bool Dispatch Table:
-> init_Bool_ptr: .asciiz "init_Bool"


String: has (0) attrs, and (3) as object length
String Dispatch Table:
-> init_String_ptr: .asciiz "init_String"
-> length_ptr: .asciiz "length"
-> concat_ptr: .asciiz "concat"
-> substr_ptr: .asciiz "substr"


IO: has (0) attrs, and (3) as object length
IO Dispatch Table:
-> init_IO_ptr: .asciiz "init_IO"
-> in_string_ptr: .asciiz "in_string"
-> in_int_ptr: .asciiz "in_int"
-> out_string_ptr: .asciiz "out_string"
-> out_int_ptr: .asciiz "out_int"


Factorial: has (1) attrs, and (4) as object length
Factorial Dispatch Table:
-> factorial_ptr: .asciiz "factorial"
-> init_Object_ptr: .asciiz "init_Object"
-> abort_ptr: .asciiz "abort"
-> type_name_ptr: .asciiz "type_name"
-> copy_ptr: .asciiz "copy"


Fibonacci: has (0) attrs, and (3) as object length
Fibonacci Dispatch Table:
-> fibonacci_ptr: .asciiz "fibonacci"
-> init_Object_ptr: .asciiz "init_Object"
-> abort_ptr: .asciiz "abort"
-> type_name_ptr: .asciiz "type_name"
-> copy_ptr: .asciiz "copy"


Main: has (3) attrs, and (6) as object length
Main Dispatch Table:
-> main_ptr: .asciiz "main"
-> init_IO_ptr: .asciiz "init_IO"
-> in_string_ptr: .asciiz "in_string"
-> in_int_ptr: .asciiz "in_int"
-> out_string_ptr: .asciiz "out_string"
-> out_int_ptr: .asciiz "out_int"



 -----> DATA TABLE <-----

Data: Object_abort_data_0 = "Abort()"
Data: Factorial_factorial_data_1 = "factorial"
Data: Fibonacci_fibonacci_data_2 = "fibonacci"
Data: Fibonacci_fibonacci_data_3 = "fibonacci"
Data: Main_main_data_4 = "fibonacci"

 -----> FUNCTIONS TABLE <-----


 init_Object([])
Local vars:  ['Object_abort_instance_0', 'Object_abort_value_1']

 def_Object_abort([])
Local vars:  []

 def_Object_type_name(['Object_type_name_self_1'])
Local vars:  ['Object_type_name_type_name_0', 'Object_type_name_self_1', 'Object_type_name_int_instance_2']

 def_Object_copy(['Object_copy_instance_0'])
Local vars:  ['Object_copy_instance_0', 'Object_copy_result_1']

 init_Int([])
Local vars:  ['Int_init_Int_instance_0', 'Int_init_Int_value_1']

 init_Bool([])
Local vars:  ['Bool_init_Bool_instance_0', 'Bool_init_Bool_value_1']

 init_String([])
Local vars:  ['String_init_String_instance_0', 'String_init_String_value_1']

 def_String_length(['String_init_String_self_1'])
Local vars:  ['length_string_0', 'String_init_String_self_1', 'String_init_String_string_instance_2']

 def_String_concat(['String_concat_self_3', 'String_concat_concat_second_1'])
Local vars:  ['concat_string_0', 'String_concat_concat_second_1', 'String_concat_concat_second_length_2', 'String_concat_self_3', 'String_concat_self_len_4', 'String_concat_string_instance_5']

 def_String_substr(['String_substr_self_1', 'String_substr_index_substr_2', 'String_substr_length_substr_3'])
Local vars:  ['substr_value_0', 'String_substr_self_1', 'String_substr_index_substr_2', 'String_substr_length_substr_3', 'String_substr_string_instance_4']

 init_IO([])
Local vars:  ['IO_init_IO_instance_0']

 def_IO_in_string(['IO_in_string_self_2'])
Local vars:  ['IO_in_string_in_string_value_0', 'IO_in_string_self_2', 'IO_in_string_0_number_3', 'IO_in_string_length_4', 'IO_in_string_1_number_5']

 def_IO_in_int(['IO_in_int_self_7'])
Local vars:  ['IO_in_int_in_int_value_0', 'IO_in_int_self_7']

 def_IO_out_string(['IO_out_string_self_8', 'IO_out_string_text_string_9'])
Local vars:  ['IO_out_string_self_8', 'IO_out_string_text_string_9']

 def_IO_out_int(['IO_out_int_self_10', 'IO_out_int_text_int_11'])
Local vars:  ['IO_out_int_self_10', 'IO_out_int_text_int_11']

 init_Factorial([])
Local vars:  ['Factorial_init_Factorial_instance_0', 'Factorial_init_Factorial_integer_1', 'Factorial_init_Factorial_value_2']

 def_Factorial_factorial(['Factorial_factorial_self_0', 'Factorial_factorial_arg_1'])
Local vars:  ['Factorial_factorial_self_0', 'Factorial_factorial_arg_1', 'Factorial_factorial_block_2', 'Factorial_factorial_let_f_3', 'Factorial_factorial_if_result_4', 'Factorial_factorial_equal_equal_5', 'Factorial_factorial_object_6', 'Factorial_factorial_integer_7', 'Factorial_factorial_value_8', 'Factorial_factorial_bool_instance_9', 'Factorial_factorial_if_result_10', 'Factorial_factorial_equal_equal_11', 'Factorial_factorial_object_12', 'Factorial_factorial_integer_13', 'Factorial_factorial_value_14', 'Factorial_factorial_bool_instance_15', 'Factorial_factorial_let_f_3', 'Factorial_factorial_value_17', 'Factorial_factorial_var_18', 'Factorial_factorial_object_19', 'Factorial_factorial_is_void_20', 'Factorial_factorial_value_21', 'Factorial_factorial_var_22', 'Factorial_factorial_object_23', 'Factorial_factorial_integer_24', 'Factorial_factorial_value_25', 'Factorial_factorial_dynamic_dispatch_26', 'Factorial_factorial_funct_name_27', 'Factorial_factorial_let_f_3', 'Factorial_factorial_integer_29', 'Factorial_factorial_value_30', 'Factorial_factorial_let_f_3', 'Factorial_factorial_integer_32', 'Factorial_factorial_value_33', 'Factorial_factorial_let_34']

 init_Fibonacci([])
Local vars:  ['Fibonacci_init_Fibonacci_instance_0']

 def_Fibonacci_fibonacci(['Fibonacci_fibonacci_self_0', 'Fibonacci_fibonacci_arg_1'])
Local vars:  ['Fibonacci_fibonacci_self_0', 'Fibonacci_fibonacci_arg_1', 'Fibonacci_fibonacci_block_2', 'Fibonacci_fibonacci_let_f_3', 'Fibonacci_fibonacci_if_result_4', 'Fibonacci_fibonacci_equal_equal_5', 'Fibonacci_fibonacci_object_6', 'Fibonacci_fibonacci_integer_7', 'Fibonacci_fibonacci_value_8', 'Fibonacci_fibonacci_bool_instance_9', 'Fibonacci_fibonacci_if_result_10', 'Fibonacci_fibonacci_equal_equal_11', 'Fibonacci_fibonacci_object_12', 'Fibonacci_fibonacci_integer_13', 'Fibonacci_fibonacci_value_14', 'Fibonacci_fibonacci_bool_instance_15', 'Fibonacci_fibonacci_let_f_3', 'Fibonacci_fibonacci_value_17', 'Fibonacci_fibonacci_var_18', 'Fibonacci_fibonacci_is_void_19', 'Fibonacci_fibonacci_value_20', 'Fibonacci_fibonacci_var_21', 'Fibonacci_fibonacci_object_22', 'Fibonacci_fibonacci_integer_23', 'Fibonacci_fibonacci_value_24', 'Fibonacci_fibonacci_dynamic_dispatch_25', 'Fibonacci_fibonacci_funct_name_26', 'Fibonacci_fibonacci_is_void_27', 'Fibonacci_fibonacci_value_28', 'Fibonacci_fibonacci_var_29', 'Fibonacci_fibonacci_object_30', 'Fibonacci_fibonacci_integer_31', 'Fibonacci_fibonacci_value_32', 'Fibonacci_fibonacci_dynamic_dispatch_33', 'Fibonacci_fibonacci_funct_name_34', 'Fibonacci_fibonacci_let_f_3', 'Fibonacci_fibonacci_integer_36', 'Fibonacci_fibonacci_value_37', 'Fibonacci_fibonacci_let_f_3', 'Fibonacci_fibonacci_integer_39', 'Fibonacci_fibonacci_value_40', 'Fibonacci_fibonacci_let_41']

 init_Main([])
Local vars:  ['Main_init_Main_instance_0', 'Main_init_Main_integer_1', 'Main_init_Main_value_2', 'Main_init_Main_attr_instance_3', 'Main_init_Main_value_void_4', 'Main_init_Main_attr_instance_5', 'Main_init_Main_value_void_6']

 def_Main_main(['Main_main_self_0'])
Local vars:  ['Main_main_self_0', 'Main_main_block_1', 'Main_main_facto_2', 'Main_main_instance_3', 'Main_main_fibo_4', 'Main_main_instance_5', 'Main_main_object_6', 'Main_main_is_void_7', 'Main_main_object_8', 'Main_main_dynamic_dispatch_9', 'Main_main_funct_name_10', 'Main_main_object_11']
```

## :star2: Author

Gustavo Méndez

##  :lock: License
MIT
