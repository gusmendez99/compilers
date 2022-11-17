.data
empty_string: .asciiz ""
null_reference: .asciiz "ERROR: null ref exception"
zero_division: .asciiz "ERROR: division by zero not allowed"
main_prototype: .word 1, 3, Main_dispatch_table
inheritance_table: .word 0, 0, 1, 1, 1, 1, 1, 6, 7, 7, 9, 5
Object_dispatch_table: .word init_Object_ptr, init_Object, abort_ptr, def_Object_abort, type_name_ptr, def_Object_type_name, copy_ptr, def_Object_copy
init_Object_ptr: .asciiz "init_Object"
abort_ptr: .asciiz "abort"
type_name_ptr: .asciiz "type_name"
copy_ptr: .asciiz "copy"
Int_dispatch_table: .word init_Int_ptr, init_Int
init_Int_ptr: .asciiz "init_Int"
Bool_dispatch_table: .word init_Bool_ptr, init_Bool
init_Bool_ptr: .asciiz "init_Bool"
String_dispatch_table: .word init_String_ptr, init_String, length_ptr, def_String_length, concat_ptr, def_String_concat, substr_ptr, def_String_substr
init_String_ptr: .asciiz "init_String"
length_ptr: .asciiz "length"
concat_ptr: .asciiz "concat"
substr_ptr: .asciiz "substr"
IO_dispatch_table: .word init_IO_ptr, init_IO, in_string_ptr, def_IO_in_string, in_int_ptr, def_IO_in_int, out_string_ptr, def_IO_out_string, out_int_ptr, def_IO_out_int
init_IO_ptr: .asciiz "init_IO"
in_string_ptr: .asciiz "in_string"
in_int_ptr: .asciiz "in_int"
out_string_ptr: .asciiz "out_string"
out_int_ptr: .asciiz "out_int"
A_dispatch_table: .word value_ptr, def_A_value, set_var_ptr, def_A_set_var, method1_ptr, def_A_method1, method2_ptr, def_A_method2, method3_ptr, def_A_method3, method4_ptr, def_A_method4, method5_ptr, def_A_method5, init_Object_ptr, init_Object, abort_ptr, def_Object_abort, type_name_ptr, def_Object_type_name, copy_ptr, def_Object_copy
value_ptr: .asciiz "value"
set_var_ptr: .asciiz "set_var"
method1_ptr: .asciiz "method1"
method2_ptr: .asciiz "method2"
method3_ptr: .asciiz "method3"
method4_ptr: .asciiz "method4"
method5_ptr: .asciiz "method5"
B_dispatch_table: .word method5_ptr, def_B_method5, value_ptr, def_A_value, set_var_ptr, def_A_set_var, method1_ptr, def_A_method1, method2_ptr, def_A_method2, method3_ptr, def_A_method3, method4_ptr, def_A_method4, method5_ptr, def_A_method5, init_Object_ptr, init_Object, abort_ptr, def_Object_abort, type_name_ptr, def_Object_type_name, copy_ptr, def_Object_copy
C_dispatch_table: .word method6_ptr, def_C_method6, method5_ptr, def_C_method5, method5_ptr, def_B_method5, value_ptr, def_A_value, set_var_ptr, def_A_set_var, method1_ptr, def_A_method1, method2_ptr, def_A_method2, method3_ptr, def_A_method3, method4_ptr, def_A_method4, method5_ptr, def_A_method5, init_Object_ptr, init_Object, abort_ptr, def_Object_abort, type_name_ptr, def_Object_type_name, copy_ptr, def_Object_copy
method6_ptr: .asciiz "method6"
D_dispatch_table: .word method7_ptr, def_D_method7, method5_ptr, def_B_method5, value_ptr, def_A_value, set_var_ptr, def_A_set_var, method1_ptr, def_A_method1, method2_ptr, def_A_method2, method3_ptr, def_A_method3, method4_ptr, def_A_method4, method5_ptr, def_A_method5, init_Object_ptr, init_Object, abort_ptr, def_Object_abort, type_name_ptr, def_Object_type_name, copy_ptr, def_Object_copy
method7_ptr: .asciiz "method7"
E_dispatch_table: .word method6_ptr, def_E_method6, method7_ptr, def_D_method7, method5_ptr, def_B_method5, value_ptr, def_A_value, set_var_ptr, def_A_set_var, method1_ptr, def_A_method1, method2_ptr, def_A_method2, method3_ptr, def_A_method3, method4_ptr, def_A_method4, method5_ptr, def_A_method5, init_Object_ptr, init_Object, abort_ptr, def_Object_abort, type_name_ptr, def_Object_type_name, copy_ptr, def_Object_copy
Main_dispatch_table: .word is_even_ptr, def_Main_is_even, main_ptr, def_Main_main, init_IO_ptr, init_IO, in_string_ptr, def_IO_in_string, in_int_ptr, def_IO_in_int, out_string_ptr, def_IO_out_string, out_int_ptr, def_IO_out_int
is_even_ptr: .asciiz "is_even"
main_ptr: .asciiz "main"
Object_abort_data_0: .asciiz "Abort()"
A_method2_data_1: .asciiz "set_var"
A_method3_data_2: .asciiz "set_var"
A_method4_data_3: .asciiz "set_var"
A_method4_data_4: .asciiz "set_var"
A_method5_data_5: .asciiz "set_var"
B_method5_data_6: .asciiz "set_var"
C_method6_data_7: .asciiz "set_var"
C_method5_data_8: .asciiz "set_var"
D_method7_data_9: .asciiz "method7"
D_method7_data_10: .asciiz "method7"
E_method6_data_11: .asciiz "set_var"
Main_is_even_data_12: .asciiz "is_even"
Main_is_even_data_13: .asciiz "is_even"
Main_main_data_14: .asciiz "set_var"
Main_main_data_15: .asciiz "value"
Main_main_data_16: .asciiz "value"
Main_main_data_17: .asciiz "is_even"
Main_main_data_18: .asciiz " es impar!\n"
Main_main_data_19: .asciiz " es par!\n"
Main_main_data_20: .asciiz "set_var"
Main_main_data_21: .asciiz "value"
Main_main_data_22: .asciiz "value"
Main_main_data_23: .asciiz "method2"
Main_main_data_24: .asciiz "value"
Main_main_data_25: .asciiz "\n"
Main_main_data_26: .asciiz "value"
Main_main_data_27: .asciiz "method6"
Main_main_data_28: .asciiz "value"
Main_main_data_29: .asciiz "\n"
Main_main_data_30: .asciiz "set_var"
Main_main_data_31: .asciiz "value"
Main_main_data_32: .asciiz "value"
Main_main_data_33: .asciiz "method4"
Main_main_data_34: .asciiz "value"
Main_main_data_35: .asciiz "\n"
Main_main_data_36: .asciiz "set_var"
Main_main_data_37: .asciiz "value"
Main_main_data_38: .asciiz "value"
Main_main_data_39: .asciiz "\n"
Main_main_data_40: .asciiz "set_var"
Main_main_data_41: .asciiz "value"
Main_main_data_42: .asciiz "value"
Main_main_data_43: .asciiz "\n"
.text
.globl main
main:
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Main
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
sw $v0, ($sp)
jal def_Main_main
addu, $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $v0, 10
syscall

.globl init_Object
init_Object:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
li $a0, 16
li $v0, 9
syscall
li $a0, 1
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, Object_dispatch_table
sw $a0, 8($v0)
sw $v0, -12($fp)
li $a0, 0
sw $a0, -16($fp)
lw $a0, -12($fp)
lw $a1, -16($fp)
sw $a1, 12($a0)
lw $v0, -12($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_Object_abort
def_Object_abort:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
la $a0, Object_abort_data_0
li $v0, 4
syscall
li $v0, 10
syscall

.globl def_Object_type_name
def_Object_type_name:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
lw $a0, 0($fp)
sw $a0, -16($fp)
lw $a0, -16($fp)
lw $a0, ($a0)
sw $a0, -12($fp)
li $a0, 16
li $v0, 9
syscall
li $a0, 2
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, Int_dispatch_table
sw $a0, 8($v0)
sw $v0, -20($fp)
lw $a0, -20($fp)
lw $a1, -12($fp)
sw $a1, 12($a0)
lw $v0, -20($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra
lw $a0, 0($fp)
sw $a0, -12($fp)
lw $a1, -12($fp)
lw $a0, 4($a1)
li $a2, 4
multu $a0, $a2
mflo $a0
li $v0, 9
syscall
move $t0, $v0
li $t1, 0
lw $a0, 4($a1)
loope37ec02e67044058ad47d9c6b1e8a5ad:
lw $t2, ($a1)
beq $t1, $a0, brake563b198d57c94b19a3ecafe09b10f6bf
sw $t2,($t0)
add $a1, $a1, 4
add $t0, $t0, 4
add $t1, $t1, 1
j loope37ec02e67044058ad47d9c6b1e8a5ad
brake563b198d57c94b19a3ecafe09b10f6bf:
sw $v0, -16($fp)
lw $v0, -16($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_Object_copy
def_Object_copy:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
lw $a0, 0($fp)
sw $a0, -16($fp)
lw $a0, -16($fp)
lw $a0, ($a0)
sw $a0, -12($fp)
li $a0, 16
li $v0, 9
syscall
li $a0, 2
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, Int_dispatch_table
sw $a0, 8($v0)
sw $v0, -20($fp)
lw $a0, -20($fp)
lw $a1, -12($fp)
sw $a1, 12($a0)
lw $v0, -20($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra
lw $a0, 0($fp)
sw $a0, -12($fp)
lw $a1, -12($fp)
lw $a0, 4($a1)
li $a2, 4
multu $a0, $a2
mflo $a0
li $v0, 9
syscall
move $t0, $v0
li $t1, 0
lw $a0, 4($a1)
loopda95adbc9548426983e2d66f184f1c29:
lw $t2, ($a1)
beq $t1, $a0, brake85e5d601c68841909ee5be07482908bb
sw $t2,($t0)
add $a1, $a1, 4
add $t0, $t0, 4
add $t1, $t1, 1
j loopda95adbc9548426983e2d66f184f1c29
brake85e5d601c68841909ee5be07482908bb:
sw $v0, -16($fp)
lw $v0, -16($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl init_Int
init_Int:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
li $a0, 16
li $v0, 9
syscall
li $a0, 2
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, Int_dispatch_table
sw $a0, 8($v0)
sw $v0, -12($fp)
li $a0, 0
sw $a0, -16($fp)
lw $a0, -12($fp)
lw $a1, -16($fp)
sw $a1, 12($a0)
lw $v0, -12($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl init_Bool
init_Bool:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
li $a0, 0
sw $a0, -16($fp)
li $a0, 16
li $v0, 9
syscall
li $a0, 3
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, Bool_dispatch_table
sw $a0, 8($v0)
sw $v0, -12($fp)
lw $a0, -12($fp)
lw $a1, -16($fp)
sw $a1, 12($a0)
lw $v0, -12($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl init_String
init_String:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
la $a0, empty_string
sw $a0, -16($fp)
li $a0, 16
li $v0, 9
syscall
li $a0, 4
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, String_dispatch_table
sw $a0, 8($v0)
sw $v0, -12($fp)
lw $a0, -12($fp)
lw $a1, -16($fp)
sw $a1, 12($a0)
lw $v0, -12($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_String_length
def_String_length:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
lw $a0, 0($fp)
sw $a0, -16($fp)
lw $a0, -16($fp)
lw $a1, 12($a0)
sw $a1, -16($fp)
lw $a1, -16($fp)
li $a0, 0
lengthLoopeec22cf32e574a63bb3ddb083b536c88:
lb $t2, ($a1)
beq $t2, $zero, brakeLengthLoop8fa3c2b422484d59bb56be7011af40c0
add $a0, $a0, 1
add $a1, $a1, 1
j lengthLoopeec22cf32e574a63bb3ddb083b536c88
brakeLengthLoop8fa3c2b422484d59bb56be7011af40c0:
sw $a0, -12($fp)
li $a0, 16
li $v0, 9
syscall
li $a0, 2
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, Int_dispatch_table
sw $a0, 8($v0)
sw $v0, -20($fp)
lw $a0, -20($fp)
lw $a1, -12($fp)
sw $a1, 12($a0)
lw $v0, -20($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_String_concat
def_String_concat:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
lw $a0, 0($fp)
sw $a0, -24($fp)
lw $a0, 4($fp)
sw $a0, -16($fp)
lw $a0, -24($fp)
lw $a1, 12($a0)
sw $a1, -24($fp)
lw $a0, -16($fp)
lw $a1, 12($a0)
sw $a1, -16($fp)
lw $a1, -24($fp)
li $a0, 0
lengthLoop76d2bf44a6e349a090fbba9eb01ce226:
lb $t2, ($a1)
beq $t2, $zero, brakeLengthLoop4f4ef6d7b833436484e132a8caa1d1e8
add $a0, $a0, 1
add $a1, $a1, 1
j lengthLoop76d2bf44a6e349a090fbba9eb01ce226
brakeLengthLoop4f4ef6d7b833436484e132a8caa1d1e8:
sw $a0, -28($fp)
lw $a1, -16($fp)
li $a0, 0
lengthLoop375e70994cde4c898a08d3f004547a9d:
lb $t2, ($a1)
beq $t2, $zero, brakeLengthLoop714b2646585d47bd9e0984faa1ad1c2b
add $a0, $a0, 1
add $a1, $a1, 1
j lengthLoop375e70994cde4c898a08d3f004547a9d
brakeLengthLoop714b2646585d47bd9e0984faa1ad1c2b:
sw $a0, -20($fp)
lw $a1, -24($fp)
lw $a0, -28($fp)
lw $t0, -20($fp)
add $a0, $a0, $t0
li $v0, 9
syscall
move $t0, $v0
loop70987db42d6e46219f00470aecd0205f:
lb $t2, ($a1)
beq $t2, $zero, brakecd1226dbf22e408c9e9ff464d8458061
sb $t2,($t0)
add $a1, $a1, 1
add $t0, $t0, 1
j loop70987db42d6e46219f00470aecd0205f
brakecd1226dbf22e408c9e9ff464d8458061:
lw $a1, -16($fp)
loop2b80f9ca002cd42a78da0c202e0dc2665:
lb $t2, ($a1)
beq $t2, $zero, brake27b0ae0626e384e9ca46708d3e41e163c
sb $t2,($t0)
add $a1, $a1, 1
add $t0, $t0, 1
j loop2b80f9ca002cd42a78da0c202e0dc2665
brake27b0ae0626e384e9ca46708d3e41e163c:
sb $zero, ($t0)
sw $v0, -12($fp)
li $a0, 16
li $v0, 9
syscall
li $a0, 4
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, String_dispatch_table
sw $a0, 8($v0)
sw $v0, -32($fp)
lw $a0, -32($fp)
lw $a1, -12($fp)
sw $a1, 12($a0)
lw $v0, -32($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_String_substr
def_String_substr:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
lw $a0, 8($fp)
sw $a0, -24($fp)
lw $a0, 4($fp)
sw $a0, -20($fp)
lw $a0, 0($fp)
sw $a0, -16($fp)
lw $a0, -16($fp)
lw $a1, 12($a0)
sw $a1, -16($fp)
lw $a0, -20($fp)
lw $a1, 12($a0)
sw $a1, -20($fp)
lw $a0, -24($fp)
lw $a1, 12($a0)
sw $a1, -24($fp)
lw $a1, -16($fp)
lw $t0, -20($fp)
add $a1, $a1, $t0
lw $a0, -24($fp)
add $a0, $a0, 1
li $v0, 9
syscall
sub $a0, $a0, 1
move $t0, $v0
li $t1, 0
loop6169dd6192a047cfaa328a1cccc60623:
lb $t2, ($a1)
beq $t2, $zero, brake292535b108f947c58519297b3a9fd3d3
beq $t1, $a0, brake292535b108f947c58519297b3a9fd3d3
sb $t2,($t0)
add $a1, $a1, 1
add $t1, $t1, 1
add $t0, $t0, 1
j loop6169dd6192a047cfaa328a1cccc60623
brake292535b108f947c58519297b3a9fd3d3:
sb $zero, ($t0)
sw $v0, -12($fp)
li $a0, 16
li $v0, 9
syscall
li $a0, 4
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, String_dispatch_table
sw $a0, 8($v0)
sw $v0, -28($fp)
lw $a0, -28($fp)
lw $a1, -12($fp)
sw $a1, 12($a0)
lw $v0, -28($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl init_IO
init_IO:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
li $a0, 16
li $v0, 9
syscall
li $a0, 5
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, IO_dispatch_table
sw $a0, 8($v0)
sw $v0, -12($fp)
lw $v0, -12($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_IO_in_string
def_IO_in_string:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
lw $a0, 0($fp)
sw $a0, -20($fp)
li $a0, 50
li $v0, 9
syscall
move $a0, $v0
li $a1, 50
li $v0, 8
syscall
sw $a0, -12($fp)
li $a0, 0
sw $a0, -24($fp)
lw $a1, -12($fp)
lw $t0, -24($fp)
add $a1, $a1, $t0
lw $a0, -28($fp)
add $a0, $a0, 1
li $v0, 9
syscall
sub $a0, $a0, 1
move $t0, $v0
li $t1, 0
loop8a04599b422f4674977f8e370040a1e1:
lb $t2, ($a1)
beq $t2, $zero, brakea8a4498c8d4b4fc98906a7a9d6da6148
beq $t1, $a0, brakea8a4498c8d4b4fc98906a7a9d6da6148
sb $t2,($t0)
add $a1, $a1, 1
add $t1, $t1, 1
add $t0, $t0, 1
j loop8a04599b422f4674977f8e370040a1e1
brakea8a4498c8d4b4fc98906a7a9d6da6148:
sb $zero, ($t0)
sw $v0, -12($fp)
lw $v0, -20($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_IO_in_int
def_IO_in_int:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
lw $a0, 0($fp)
sw $a0, -40($fp)
li $v0, 5
syscall
sw $v0, -12($fp)
lw $v0, -12($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_IO_out_string
def_IO_out_string:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
lw $a0, 4($fp)
sw $a0, -48($fp)
lw $a0, 0($fp)
sw $a0, -44($fp)
lw $a0, -48($fp)
lw $a1, 12($a0)
sw $a1, -48($fp)
lw $a0, -48($fp)
li $v0, 4
syscall
lw $v0, -44($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_IO_out_int
def_IO_out_int:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
lw $a0, 4($fp)
sw $a0, -56($fp)
lw $a0, 0($fp)
sw $a0, -52($fp)
lw $a0, -56($fp)
li $v0, 4
syscall
lw $v0, -52($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl init_A
init_A:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
li $a0, 16
li $v0, 9
syscall
li $a0, 6
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, A_dispatch_table
sw $a0, 8($v0)
sw $v0, -12($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -16($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 0
sw $a0, -20($fp)
lw $a0, -16($fp)
lw $a1, -20($fp)
sw $a1, 12($a0)
lw $a0, -12($fp)
lw $a1, -16($fp)
sw $a1, 12($a0)
lw $v0, -12($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_A_value
def_A_value:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
lw $a0, 0($fp)
sw $a0, -12($fp)
lw $a0, -12($fp)
lw $a1, 12($a0)
sw $a1, -16($fp)
lw $v0, -16($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_A_set_var
def_A_set_var:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
lw $a0, 0($fp)
sw $a0, -12($fp)
lw $a0, 4($fp)
sw $a0, -16($fp)
lw $a0, -16($fp)
sw $a0, -28($fp)
sw $a0, -28($fp)
lw $a1, -28($fp)
lw $a0, 4($a1)
li $a2, 4
multu $a0, $a2
mflo $a0
li $v0, 9
syscall
move $t0, $v0
li $t1, 0
lw $a0, 4($a1)
loop9f26eff7cb7940ac96b4e044c5c3bc8c:
lw $t2, ($a1)
beq $t1, $a0, brakea2e13146213b4af8b317d3045920940c
sw $t2,($t0)
add $a1, $a1, 4
add $t0, $t0, 4
add $t1, $t1, 1
j loop9f26eff7cb7940ac96b4e044c5c3bc8c
brakea2e13146213b4af8b317d3045920940c:
sw $v0, -24($fp)
lw $a0, -12($fp)
lw $a1, -24($fp)
sw $a1, 12($a0)
lw $a0, -12($fp)
sw $a0, -32($fp)
sw $a0, -32($fp)
lw $a0, -32($fp)
sw $a0, -20($fp)
sw $a0, -20($fp)
lw $v0, -20($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_A_method1
def_A_method1:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
lw $a0, 0($fp)
sw $a0, -12($fp)
lw $a0, 4($fp)
sw $a0, -16($fp)
lw $a0, -12($fp)
sw $a0, -20($fp)
sw $a0, -20($fp)
lw $v0, -20($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_A_method2
def_A_method2:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
lw $a0, 0($fp)
sw $a0, -12($fp)
lw $a0, 4($fp)
sw $a0, -16($fp)
lw $a0, 8($fp)
sw $a0, -20($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -24($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $a0, -16($fp)
sw $a0, -44($fp)
sw $a0, -44($fp)
lw $a0, -20($fp)
sw $a0, -48($fp)
sw $a0, -48($fp)
lw $a0, -44($fp)
lw $a1, 12($a0)
sw $a1, -44($fp)
lw $a0, -48($fp)
lw $a1, 12($a0)
sw $a1, -48($fp)
lw $a0, -44($fp)
lw $a1, -48($fp)
add $a0, $a0, $a1
sw $a0, -36($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -40($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $a0, -40($fp)
lw $a1, -36($fp)
sw $a1, 12($a0)
lw $a1, -40($fp)
lw $a0, 4($a1)
li $a2, 4
multu $a0, $a2
mflo $a0
li $v0, 9
syscall
move $t0, $v0
li $t1, 0
lw $a0, 4($a1)
loop897835351df342468078f5583922d848:
lw $t2, ($a1)
beq $t1, $a0, brake6b01794c49ec4b8594f76d4756c6b8c8
sw $t2,($t0)
add $a1, $a1, 4
add $t0, $t0, 4
add $t1, $t1, 1
j loop897835351df342468078f5583922d848
brake6b01794c49ec4b8594f76d4756c6b8c8:
sw $v0, -24($fp)
lw $a0, -24($fp)
sw $a0, -24($fp)
sw $a0, -24($fp)
li $a0, 64
li $v0, 9
syscall
li $a0, 7
sw $a0, ($v0)
li $a0, 16
sw $a0, 4($v0)
la $a0, B_dispatch_table
sw $a0, 8($v0)
sw $v0, -52($fp)
jal init_B
sw $v0, -52($fp)
addu $sp, $sp, 0
lw $a1, -52($fp)
li $a0, 1
beq $a1, $zero, isVoid7b38c83319cf4f7aaaeae5c4a7a6bf03
li $a0, 0
isVoid7b38c83319cf4f7aaaeae5c4a7a6bf03:
sw $a0, -56($fp)
lw $a0, -56($fp)
bne $a0, $zero, label_A_method2_not_valid_dispatch_jump_0
lw $a0, -24($fp)
sw $a0, -60($fp)
sw $a0, -60($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -60($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -52($fp)
sw $a0, ($sp)
la $a0, A_method2_data_1
sw $a0, -68($fp)
lw $a3, -52($fp)
lw $t4, -68($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop28d6f9f86f15438981e6eaee8ef48d09:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoopfceaad6f3df140c892b3e887b506d974:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse463656d782b24a5fb6e565749fe484b6
beqz $t1, returnTrue44b06780bf244a66946b927e895d5ffa
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoopfceaad6f3df140c892b3e887b506d974
j returnTrue44b06780bf244a66946b927e895d5ffa
returnFalse463656d782b24a5fb6e565749fe484b6:
li $a0, 0
returnTrue44b06780bf244a66946b927e895d5ffa:
add $t0, $t0, 8
beqz $a0, tableLoop28d6f9f86f15438981e6eaee8ef48d09
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -64($fp)
addu $sp, $sp, 8
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_A_method2_end_dispatch_label_1
label_A_method2_not_valid_dispatch_jump_0:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_A_method2_end_dispatch_label_1:
lw $a0, -64($fp)
sw $a0, -28($fp)
sw $a0, -28($fp)
lw $a0, -28($fp)
sw $a0, -72($fp)
sw $a0, -72($fp)
lw $v0, -72($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_A_method3
def_A_method3:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
lw $a0, 0($fp)
sw $a0, -12($fp)
lw $a0, 4($fp)
sw $a0, -16($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -20($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $a0, -16($fp)
sw $a0, -32($fp)
sw $a0, -32($fp)
lw $a0, -32($fp)
lw $a1, 12($a0)
sw $a1, -32($fp)
li $a0, 0
sw $a0, -36($fp)
lw $a0, -36($fp)
lw $a1, -32($fp)
sub $a0, $a0, $a1
sw $a0, -36($fp)
li $a0, 16
li $v0, 9
syscall
li $a0, 2
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, Int_dispatch_table
sw $a0, 8($v0)
sw $v0, -40($fp)
lw $a0, -40($fp)
lw $a1, -36($fp)
sw $a1, 12($a0)
lw $a1, -40($fp)
lw $a0, 4($a1)
li $a2, 4
multu $a0, $a2
mflo $a0
li $v0, 9
syscall
move $t0, $v0
li $t1, 0
lw $a0, 4($a1)
loop9d9e7ee2ab164cce8b4d840a1c6367db:
lw $t2, ($a1)
beq $t1, $a0, brake8e6b1e6403414e7aa5389cc15485b31a
sw $t2,($t0)
add $a1, $a1, 4
add $t0, $t0, 4
add $t1, $t1, 1
j loop9d9e7ee2ab164cce8b4d840a1c6367db
brake8e6b1e6403414e7aa5389cc15485b31a:
sw $v0, -20($fp)
lw $a0, -20($fp)
sw $a0, -20($fp)
sw $a0, -20($fp)
li $a0, 64
li $v0, 9
syscall
li $a0, 8
sw $a0, ($v0)
li $a0, 16
sw $a0, 4($v0)
la $a0, C_dispatch_table
sw $a0, 8($v0)
sw $v0, -44($fp)
jal init_C
sw $v0, -44($fp)
addu $sp, $sp, 0
lw $a1, -44($fp)
li $a0, 1
beq $a1, $zero, isVoid81b86899e70943a8a1f7141e66ff9877
li $a0, 0
isVoid81b86899e70943a8a1f7141e66ff9877:
sw $a0, -48($fp)
lw $a0, -48($fp)
bne $a0, $zero, label_A_method3_not_valid_dispatch_jump_2
lw $a0, -20($fp)
sw $a0, -52($fp)
sw $a0, -52($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -52($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -44($fp)
sw $a0, ($sp)
la $a0, A_method3_data_2
sw $a0, -60($fp)
lw $a3, -44($fp)
lw $t4, -60($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoopdf30fd88d8994fd28929ba3e8030b4f7:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop27770b88c98640449fa76432fd62580d:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse52229fa16a334b2f9a234f3c5e2897f2
beqz $t1, returnTruec492767566384a308ce4326b529e05e5
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop27770b88c98640449fa76432fd62580d
j returnTruec492767566384a308ce4326b529e05e5
returnFalse52229fa16a334b2f9a234f3c5e2897f2:
li $a0, 0
returnTruec492767566384a308ce4326b529e05e5:
add $t0, $t0, 8
beqz $a0, tableLoopdf30fd88d8994fd28929ba3e8030b4f7
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -56($fp)
addu $sp, $sp, 8
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_A_method3_end_dispatch_label_3
label_A_method3_not_valid_dispatch_jump_2:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_A_method3_end_dispatch_label_3:
lw $a0, -56($fp)
sw $a0, -24($fp)
sw $a0, -24($fp)
lw $a0, -24($fp)
sw $a0, -64($fp)
sw $a0, -64($fp)
lw $v0, -64($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_A_method4
def_A_method4:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
lw $a0, 0($fp)
sw $a0, -12($fp)
lw $a0, 4($fp)
sw $a0, -16($fp)
lw $a0, 8($fp)
sw $a0, -20($fp)
lw $a0, -20($fp)
sw $a0, -32($fp)
sw $a0, -32($fp)
lw $a0, -16($fp)
sw $a0, -36($fp)
sw $a0, -36($fp)
lw $a0, -32($fp)
lw $a1, 12($a0)
sw $a1, -32($fp)
lw $a0, -36($fp)
lw $a1, 12($a0)
sw $a1, -36($fp)
lw $a0, -32($fp)
lw $a1, -36($fp)
sub $a0, $a0, $a1
sw $a0, -28($fp)
lw $a1, -28($fp)
li $a0, 1
bltz $a1, returnTrue1454bdb05b1b4e10b035f00ace81b008
li $a0, 0
returnTrue1454bdb05b1b4e10b035f00ace81b008:
sw $a0, -28($fp)
li $a0, 16
li $v0, 9
syscall
li $a0, 3
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, Bool_dispatch_table
sw $a0, 8($v0)
sw $v0, -40($fp)
lw $a0, -40($fp)
lw $a1, -28($fp)
sw $a1, 12($a0)
lw $a0, -40($fp)
lw $a1, 12($a0)
sw $a1, -40($fp)
lw $a0, -40($fp)
bne $a0, $zero, label_A_method4_if_4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -44($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $a0, -20($fp)
sw $a0, -64($fp)
sw $a0, -64($fp)
lw $a0, -16($fp)
sw $a0, -68($fp)
sw $a0, -68($fp)
lw $a0, -64($fp)
lw $a1, 12($a0)
sw $a1, -64($fp)
lw $a0, -68($fp)
lw $a1, 12($a0)
sw $a1, -68($fp)
lw $a0, -64($fp)
lw $a1, -68($fp)
sub $a0, $a0, $a1
sw $a0, -56($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -60($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $a0, -60($fp)
lw $a1, -56($fp)
sw $a1, 12($a0)
lw $a1, -60($fp)
lw $a0, 4($a1)
li $a2, 4
multu $a0, $a2
mflo $a0
li $v0, 9
syscall
move $t0, $v0
li $t1, 0
lw $a0, 4($a1)
loop414e15b8677d4d7b8e304cc6492e5618:
lw $t2, ($a1)
beq $t1, $a0, brake3c951087219b478ba466c7d56cddf8e7
sw $t2,($t0)
add $a1, $a1, 4
add $t0, $t0, 4
add $t1, $t1, 1
j loop414e15b8677d4d7b8e304cc6492e5618
brake3c951087219b478ba466c7d56cddf8e7:
sw $v0, -44($fp)
lw $a0, -44($fp)
sw $a0, -44($fp)
sw $a0, -44($fp)
li $a0, 64
li $v0, 9
syscall
li $a0, 9
sw $a0, ($v0)
li $a0, 16
sw $a0, 4($v0)
la $a0, D_dispatch_table
sw $a0, 8($v0)
sw $v0, -72($fp)
jal init_D
sw $v0, -72($fp)
addu $sp, $sp, 0
lw $a1, -72($fp)
li $a0, 1
beq $a1, $zero, isVoid0cebc5bc974841d88f24b9f56eaed5d3
li $a0, 0
isVoid0cebc5bc974841d88f24b9f56eaed5d3:
sw $a0, -76($fp)
lw $a0, -76($fp)
bne $a0, $zero, label_A_method4_not_valid_dispatch_jump_6
lw $a0, -44($fp)
sw $a0, -80($fp)
sw $a0, -80($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -80($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -72($fp)
sw $a0, ($sp)
la $a0, A_method4_data_3
sw $a0, -88($fp)
lw $a3, -72($fp)
lw $t4, -88($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop105beca297bc4c2dbe74b224df5863da:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop48902ee12e1b43e3a275ebdb8bdd3596:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse4c965f5d0f674379ab622a24a5ccc4ed
beqz $t1, returnTrue59e212a28cac4836bcef37f7c5b65118
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop48902ee12e1b43e3a275ebdb8bdd3596
j returnTrue59e212a28cac4836bcef37f7c5b65118
returnFalse4c965f5d0f674379ab622a24a5ccc4ed:
li $a0, 0
returnTrue59e212a28cac4836bcef37f7c5b65118:
add $t0, $t0, 8
beqz $a0, tableLoop105beca297bc4c2dbe74b224df5863da
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -84($fp)
addu $sp, $sp, 8
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_A_method4_end_dispatch_label_7
label_A_method4_not_valid_dispatch_jump_6:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_A_method4_end_dispatch_label_7:
lw $a0, -84($fp)
sw $a0, -48($fp)
sw $a0, -48($fp)
lw $a0, -48($fp)
sw $a0, -92($fp)
sw $a0, -92($fp)
lw $a0, -92($fp)
sw $a0, -24($fp)
sw $a0, -24($fp)
j label_A_method4_fi_5
label_A_method4_if_4:
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -100($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $a0, -16($fp)
sw $a0, -120($fp)
sw $a0, -120($fp)
lw $a0, -20($fp)
sw $a0, -124($fp)
sw $a0, -124($fp)
lw $a0, -120($fp)
lw $a1, 12($a0)
sw $a1, -120($fp)
lw $a0, -124($fp)
lw $a1, 12($a0)
sw $a1, -124($fp)
lw $a0, -120($fp)
lw $a1, -124($fp)
sub $a0, $a0, $a1
sw $a0, -112($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -116($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $a0, -116($fp)
lw $a1, -112($fp)
sw $a1, 12($a0)
lw $a1, -116($fp)
lw $a0, 4($a1)
li $a2, 4
multu $a0, $a2
mflo $a0
li $v0, 9
syscall
move $t0, $v0
li $t1, 0
lw $a0, 4($a1)
loop175674fe59094b8d9e02a05f14cc208c:
lw $t2, ($a1)
beq $t1, $a0, brake2d4ed0f084fd4a3193b27944aa2e701c
sw $t2,($t0)
add $a1, $a1, 4
add $t0, $t0, 4
add $t1, $t1, 1
j loop175674fe59094b8d9e02a05f14cc208c
brake2d4ed0f084fd4a3193b27944aa2e701c:
sw $v0, -100($fp)
lw $a0, -100($fp)
sw $a0, -100($fp)
sw $a0, -100($fp)
li $a0, 64
li $v0, 9
syscall
li $a0, 9
sw $a0, ($v0)
li $a0, 16
sw $a0, 4($v0)
la $a0, D_dispatch_table
sw $a0, 8($v0)
sw $v0, -128($fp)
jal init_D
sw $v0, -128($fp)
addu $sp, $sp, 0
lw $a1, -128($fp)
li $a0, 1
beq $a1, $zero, isVoid748bf43f21964ea2b6e559d5b0c84edc
li $a0, 0
isVoid748bf43f21964ea2b6e559d5b0c84edc:
sw $a0, -132($fp)
lw $a0, -132($fp)
bne $a0, $zero, label_A_method4_not_valid_dispatch_jump_8
lw $a0, -100($fp)
sw $a0, -136($fp)
sw $a0, -136($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -136($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -128($fp)
sw $a0, ($sp)
la $a0, A_method4_data_4
sw $a0, -144($fp)
lw $a3, -128($fp)
lw $t4, -144($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoopfc49845aac0e4adb96ebcf02832b78b9:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop31872e7588154c4abbaa906bbec2a270:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse5409666ca11742219d1290e170b89d11
beqz $t1, returnTrueaa6181d316d942d0a7b897ba9e282033
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop31872e7588154c4abbaa906bbec2a270
j returnTrueaa6181d316d942d0a7b897ba9e282033
returnFalse5409666ca11742219d1290e170b89d11:
li $a0, 0
returnTrueaa6181d316d942d0a7b897ba9e282033:
add $t0, $t0, 8
beqz $a0, tableLoopfc49845aac0e4adb96ebcf02832b78b9
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -140($fp)
addu $sp, $sp, 8
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_A_method4_end_dispatch_label_9
label_A_method4_not_valid_dispatch_jump_8:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_A_method4_end_dispatch_label_9:
lw $a0, -140($fp)
sw $a0, -104($fp)
sw $a0, -104($fp)
lw $a0, -104($fp)
sw $a0, -148($fp)
sw $a0, -148($fp)
lw $a0, -148($fp)
sw $a0, -24($fp)
sw $a0, -24($fp)
label_A_method4_fi_5:
lw $v0, -24($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_A_method5
def_A_method5:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
lw $a0, 0($fp)
sw $a0, -12($fp)
lw $a0, 4($fp)
sw $a0, -16($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -24($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 1
sw $a0, -28($fp)
lw $a0, -24($fp)
lw $a1, -28($fp)
sw $a1, 12($a0)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -32($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 1
sw $a0, -36($fp)
lw $a0, -32($fp)
lw $a1, -36($fp)
sw $a1, 12($a0)
lw $a1, -32($fp)
lw $a0, 4($a1)
li $a2, 4
multu $a0, $a2
mflo $a0
li $v0, 9
syscall
move $t0, $v0
li $t1, 0
lw $a0, 4($a1)
loop8ae53314fc8a45f4b6a2e3863e1035e5:
lw $t2, ($a1)
beq $t1, $a0, brakeb736a350eea845db8748bf04c469243d
sw $t2,($t0)
add $a1, $a1, 4
add $t0, $t0, 4
add $t1, $t1, 1
j loop8ae53314fc8a45f4b6a2e3863e1035e5
brakeb736a350eea845db8748bf04c469243d:
sw $v0, -20($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -48($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 1
sw $a0, -52($fp)
lw $a0, -48($fp)
lw $a1, -52($fp)
sw $a1, 12($a0)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -56($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 1
sw $a0, -60($fp)
lw $a0, -56($fp)
lw $a1, -60($fp)
sw $a1, 12($a0)
lw $a1, -56($fp)
lw $a0, 4($a1)
li $a2, 4
multu $a0, $a2
mflo $a0
li $v0, 9
syscall
move $t0, $v0
li $t1, 0
lw $a0, 4($a1)
loopa6c8198faa324f9d8c36296eaa41d3c4:
lw $t2, ($a1)
beq $t1, $a0, brake88025e5d0d534d81927e1ed42e054b24
sw $t2,($t0)
add $a1, $a1, 4
add $t0, $t0, 4
add $t1, $t1, 1
j loopa6c8198faa324f9d8c36296eaa41d3c4
brake88025e5d0d534d81927e1ed42e054b24:
sw $v0, -44($fp)
label_A_method5_while_10_10:
lw $a0, -44($fp)
sw $a0, -68($fp)
sw $a0, -68($fp)
lw $a0, -16($fp)
sw $a0, -72($fp)
sw $a0, -72($fp)
lw $a0, -68($fp)
lw $a1, 12($a0)
sw $a1, -68($fp)
lw $a0, -72($fp)
lw $a1, 12($a0)
sw $a1, -72($fp)
lw $a0, -68($fp)
lw $a1, -72($fp)
sub $a0, $a0, $a1
sw $a0, -64($fp)
lw $a1, -64($fp)
li $a0, 1
blez $a1, returnTruede26a577c9634b52a6758ff34d408997
li $a0, 0
returnTruede26a577c9634b52a6758ff34d408997:
sw $a0, -64($fp)
li $a0, 16
li $v0, 9
syscall
li $a0, 3
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, Bool_dispatch_table
sw $a0, 8($v0)
sw $v0, -76($fp)
lw $a0, -76($fp)
lw $a1, -64($fp)
sw $a1, 12($a0)
lw $a0, -76($fp)
lw $a1, 12($a0)
sw $a1, -76($fp)
lw $a0, -76($fp)
bne $a0, $zero, label_A_method5_loop_11_11
j label_A_method5_pool_12_12
label_A_method5_loop_11_11:
lw $a0, -20($fp)
sw $a0, -96($fp)
sw $a0, -96($fp)
lw $a0, -44($fp)
sw $a0, -100($fp)
sw $a0, -100($fp)
lw $a0, -96($fp)
lw $a1, 12($a0)
sw $a1, -96($fp)
lw $a0, -100($fp)
lw $a1, 12($a0)
sw $a1, -100($fp)
lw $a0, -96($fp)
lw $a1, -100($fp)
multu $a0, $a1
mflo $a0
sw $a0, -88($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -92($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $a0, -92($fp)
lw $a1, -88($fp)
sw $a1, 12($a0)
lw $a1, -92($fp)
lw $a0, 4($a1)
li $a2, 4
multu $a0, $a2
mflo $a0
li $v0, 9
syscall
move $t0, $v0
li $t1, 0
lw $a0, 4($a1)
loop072b3d9bd7b3425781553c347f165219:
lw $t2, ($a1)
beq $t1, $a0, brakea270991ffc1e40f0b91ec508630e16f5
sw $t2,($t0)
add $a1, $a1, 4
add $t0, $t0, 4
add $t1, $t1, 1
j loop072b3d9bd7b3425781553c347f165219
brakea270991ffc1e40f0b91ec508630e16f5:
sw $v0, -20($fp)
lw $a0, -20($fp)
sw $a0, -20($fp)
sw $a0, -20($fp)
lw $a0, -44($fp)
sw $a0, -116($fp)
sw $a0, -116($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -120($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 1
sw $a0, -124($fp)
lw $a0, -120($fp)
lw $a1, -124($fp)
sw $a1, 12($a0)
lw $a0, -116($fp)
lw $a1, 12($a0)
sw $a1, -116($fp)
lw $a0, -120($fp)
lw $a1, 12($a0)
sw $a1, -120($fp)
lw $a0, -116($fp)
lw $a1, -120($fp)
add $a0, $a0, $a1
sw $a0, -108($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -112($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $a0, -112($fp)
lw $a1, -108($fp)
sw $a1, 12($a0)
lw $a1, -112($fp)
lw $a0, 4($a1)
li $a2, 4
multu $a0, $a2
mflo $a0
li $v0, 9
syscall
move $t0, $v0
li $t1, 0
lw $a0, 4($a1)
loopadbcd134314447108a38f9aa32070c7e:
lw $t2, ($a1)
beq $t1, $a0, brake77c5bb6f2b574646a416991754a831ec
sw $t2,($t0)
add $a1, $a1, 4
add $t0, $t0, 4
add $t1, $t1, 1
j loopadbcd134314447108a38f9aa32070c7e
brake77c5bb6f2b574646a416991754a831ec:
sw $v0, -44($fp)
lw $a0, -44($fp)
sw $a0, -44($fp)
sw $a0, -44($fp)
lw $a0, -44($fp)
sw $a0, -80($fp)
sw $a0, -80($fp)
j label_A_method5_while_10_10
label_A_method5_pool_12_12:
li $a0, 16
li $v0, 9
syscall
li $a0, 1
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, Object_dispatch_table
sw $a0, 8($v0)
sw $v0, -128($fp)
lw $a0, -128($fp)
sw $a0, -132($fp)
sw $a0, -132($fp)
li $a0, 64
li $v0, 9
syscall
li $a0, 10
sw $a0, ($v0)
li $a0, 16
sw $a0, 4($v0)
la $a0, E_dispatch_table
sw $a0, 8($v0)
sw $v0, -140($fp)
jal init_E
sw $v0, -140($fp)
addu $sp, $sp, 0
lw $a1, -140($fp)
li $a0, 1
beq $a1, $zero, isVoid386eb3d2f83f47ccbfb88bf6ff68c863
li $a0, 0
isVoid386eb3d2f83f47ccbfb88bf6ff68c863:
sw $a0, -144($fp)
lw $a0, -144($fp)
bne $a0, $zero, label_A_method5_not_valid_dispatch_jump_14
lw $a0, -20($fp)
sw $a0, -148($fp)
sw $a0, -148($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -148($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -140($fp)
sw $a0, ($sp)
la $a0, A_method5_data_5
sw $a0, -156($fp)
lw $a3, -140($fp)
lw $t4, -156($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop0d12b6d81fd3483798b55e2fefc0099f:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoopdc7a5c2f1a014d0680bc38a324d0d054:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalsedc1ec204978449ce8741d8d6e043b354
beqz $t1, returnTrue9245ae62c7c54f049a57ed9e13efeb8c
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoopdc7a5c2f1a014d0680bc38a324d0d054
j returnTrue9245ae62c7c54f049a57ed9e13efeb8c
returnFalsedc1ec204978449ce8741d8d6e043b354:
li $a0, 0
returnTrue9245ae62c7c54f049a57ed9e13efeb8c:
add $t0, $t0, 8
beqz $a0, tableLoop0d12b6d81fd3483798b55e2fefc0099f
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -152($fp)
addu $sp, $sp, 8
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_A_method5_end_dispatch_label_15
label_A_method5_not_valid_dispatch_jump_14:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_A_method5_end_dispatch_label_15:
lw $a0, -152($fp)
sw $a0, -40($fp)
sw $a0, -40($fp)
lw $a0, -40($fp)
sw $a0, -160($fp)
sw $a0, -160($fp)
lw $v0, -160($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl init_B
init_B:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
li $a0, 16
li $v0, 9
syscall
li $a0, 7
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, B_dispatch_table
sw $a0, 8($v0)
sw $v0, -12($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -16($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 0
sw $a0, -20($fp)
lw $a0, -16($fp)
lw $a1, -20($fp)
sw $a1, 12($a0)
lw $a0, -12($fp)
lw $a1, -16($fp)
sw $a1, 12($a0)
lw $v0, -12($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_B_method5
def_B_method5:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
lw $a0, 0($fp)
sw $a0, -12($fp)
lw $a0, 4($fp)
sw $a0, -16($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -20($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $a0, -16($fp)
sw $a0, -40($fp)
sw $a0, -40($fp)
lw $a0, -16($fp)
sw $a0, -44($fp)
sw $a0, -44($fp)
lw $a0, -40($fp)
lw $a1, 12($a0)
sw $a1, -40($fp)
lw $a0, -44($fp)
lw $a1, 12($a0)
sw $a1, -44($fp)
lw $a0, -40($fp)
lw $a1, -44($fp)
multu $a0, $a1
mflo $a0
sw $a0, -32($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -36($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $a0, -36($fp)
lw $a1, -32($fp)
sw $a1, 12($a0)
lw $a1, -36($fp)
lw $a0, 4($a1)
li $a2, 4
multu $a0, $a2
mflo $a0
li $v0, 9
syscall
move $t0, $v0
li $t1, 0
lw $a0, 4($a1)
loop3fb2079e7e8a422e9e7a5dfaaa6fb056:
lw $t2, ($a1)
beq $t1, $a0, brake8dc6b5613c4c4036b6ddfd55d4f0c239
sw $t2,($t0)
add $a1, $a1, 4
add $t0, $t0, 4
add $t1, $t1, 1
j loop3fb2079e7e8a422e9e7a5dfaaa6fb056
brake8dc6b5613c4c4036b6ddfd55d4f0c239:
sw $v0, -20($fp)
lw $a0, -20($fp)
sw $a0, -20($fp)
sw $a0, -20($fp)
li $a0, 64
li $v0, 9
syscall
li $a0, 10
sw $a0, ($v0)
li $a0, 16
sw $a0, 4($v0)
la $a0, E_dispatch_table
sw $a0, 8($v0)
sw $v0, -48($fp)
jal init_E
sw $v0, -48($fp)
addu $sp, $sp, 0
lw $a1, -48($fp)
li $a0, 1
beq $a1, $zero, isVoid47e425eb5d0447279044e501f9b11ba5
li $a0, 0
isVoid47e425eb5d0447279044e501f9b11ba5:
sw $a0, -52($fp)
lw $a0, -52($fp)
bne $a0, $zero, label_B_method5_not_valid_dispatch_jump_16
lw $a0, -20($fp)
sw $a0, -56($fp)
sw $a0, -56($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -56($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -48($fp)
sw $a0, ($sp)
la $a0, B_method5_data_6
sw $a0, -64($fp)
lw $a3, -48($fp)
lw $t4, -64($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop18c17d027793439595b6c27a98161c01:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop5b2850069fe94f3b8781d867d3fcded7:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalsefa3ddddfe1f2496f88853b498681057a
beqz $t1, returnTrue73d165d38e714f4daed28f24c4336d4a
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop5b2850069fe94f3b8781d867d3fcded7
j returnTrue73d165d38e714f4daed28f24c4336d4a
returnFalsefa3ddddfe1f2496f88853b498681057a:
li $a0, 0
returnTrue73d165d38e714f4daed28f24c4336d4a:
add $t0, $t0, 8
beqz $a0, tableLoop18c17d027793439595b6c27a98161c01
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -60($fp)
addu $sp, $sp, 8
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_B_method5_end_dispatch_label_17
label_B_method5_not_valid_dispatch_jump_16:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_B_method5_end_dispatch_label_17:
lw $a0, -60($fp)
sw $a0, -24($fp)
sw $a0, -24($fp)
lw $a0, -24($fp)
sw $a0, -68($fp)
sw $a0, -68($fp)
lw $v0, -68($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl init_C
init_C:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
li $a0, 16
li $v0, 9
syscall
li $a0, 8
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, C_dispatch_table
sw $a0, 8($v0)
sw $v0, -12($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -16($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 0
sw $a0, -20($fp)
lw $a0, -16($fp)
lw $a1, -20($fp)
sw $a1, 12($a0)
lw $a0, -12($fp)
lw $a1, -16($fp)
sw $a1, 12($a0)
lw $v0, -12($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_C_method6
def_C_method6:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
lw $a0, 0($fp)
sw $a0, -12($fp)
lw $a0, 4($fp)
sw $a0, -16($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -20($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $a0, -16($fp)
sw $a0, -32($fp)
sw $a0, -32($fp)
lw $a0, -32($fp)
lw $a1, 12($a0)
sw $a1, -32($fp)
li $a0, 0
sw $a0, -36($fp)
lw $a0, -36($fp)
lw $a1, -32($fp)
sub $a0, $a0, $a1
sw $a0, -36($fp)
li $a0, 16
li $v0, 9
syscall
li $a0, 2
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, Int_dispatch_table
sw $a0, 8($v0)
sw $v0, -40($fp)
lw $a0, -40($fp)
lw $a1, -36($fp)
sw $a1, 12($a0)
lw $a1, -40($fp)
lw $a0, 4($a1)
li $a2, 4
multu $a0, $a2
mflo $a0
li $v0, 9
syscall
move $t0, $v0
li $t1, 0
lw $a0, 4($a1)
loopc1bd7d36eede4175be1f6b65b4b4af12:
lw $t2, ($a1)
beq $t1, $a0, braked25c332d7d3c42a7ad6822bda04958d4
sw $t2,($t0)
add $a1, $a1, 4
add $t0, $t0, 4
add $t1, $t1, 1
j loopc1bd7d36eede4175be1f6b65b4b4af12
braked25c332d7d3c42a7ad6822bda04958d4:
sw $v0, -20($fp)
lw $a0, -20($fp)
sw $a0, -20($fp)
sw $a0, -20($fp)
li $a0, 64
li $v0, 9
syscall
li $a0, 6
sw $a0, ($v0)
li $a0, 16
sw $a0, 4($v0)
la $a0, A_dispatch_table
sw $a0, 8($v0)
sw $v0, -44($fp)
jal init_A
sw $v0, -44($fp)
addu $sp, $sp, 0
lw $a1, -44($fp)
li $a0, 1
beq $a1, $zero, isVoid4922c70aafd74b1db84491878fae8719
li $a0, 0
isVoid4922c70aafd74b1db84491878fae8719:
sw $a0, -48($fp)
lw $a0, -48($fp)
bne $a0, $zero, label_C_method6_not_valid_dispatch_jump_18
lw $a0, -20($fp)
sw $a0, -52($fp)
sw $a0, -52($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -52($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -44($fp)
sw $a0, ($sp)
la $a0, C_method6_data_7
sw $a0, -60($fp)
lw $a3, -44($fp)
lw $t4, -60($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop75cc84bcad4149fbbcedc59162efae2a:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop292ac78c312b48fab0f7bd187f24d31c:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse1a7fba730c5f4b5b99bec6c0157ef1a9
beqz $t1, returnTruee175783a3291427c8e2c4b3c50ebb000
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop292ac78c312b48fab0f7bd187f24d31c
j returnTruee175783a3291427c8e2c4b3c50ebb000
returnFalse1a7fba730c5f4b5b99bec6c0157ef1a9:
li $a0, 0
returnTruee175783a3291427c8e2c4b3c50ebb000:
add $t0, $t0, 8
beqz $a0, tableLoop75cc84bcad4149fbbcedc59162efae2a
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -56($fp)
addu $sp, $sp, 8
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_C_method6_end_dispatch_label_19
label_C_method6_not_valid_dispatch_jump_18:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_C_method6_end_dispatch_label_19:
lw $a0, -56($fp)
sw $a0, -24($fp)
sw $a0, -24($fp)
lw $a0, -24($fp)
sw $a0, -64($fp)
sw $a0, -64($fp)
lw $v0, -64($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_C_method5
def_C_method5:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
lw $a0, 0($fp)
sw $a0, -12($fp)
lw $a0, 4($fp)
sw $a0, -16($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -20($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $a0, -16($fp)
sw $a0, -48($fp)
sw $a0, -48($fp)
lw $a0, -16($fp)
sw $a0, -52($fp)
sw $a0, -52($fp)
lw $a0, -48($fp)
lw $a1, 12($a0)
sw $a1, -48($fp)
lw $a0, -52($fp)
lw $a1, 12($a0)
sw $a1, -52($fp)
lw $a0, -48($fp)
lw $a1, -52($fp)
multu $a0, $a1
mflo $a0
sw $a0, -40($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -44($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $a0, -44($fp)
lw $a1, -40($fp)
sw $a1, 12($a0)
lw $a0, -16($fp)
sw $a0, -56($fp)
sw $a0, -56($fp)
lw $a0, -44($fp)
lw $a1, 12($a0)
sw $a1, -44($fp)
lw $a0, -56($fp)
lw $a1, 12($a0)
sw $a1, -56($fp)
lw $a0, -44($fp)
lw $a1, -56($fp)
multu $a0, $a1
mflo $a0
sw $a0, -32($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -36($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $a0, -36($fp)
lw $a1, -32($fp)
sw $a1, 12($a0)
lw $a1, -36($fp)
lw $a0, 4($a1)
li $a2, 4
multu $a0, $a2
mflo $a0
li $v0, 9
syscall
move $t0, $v0
li $t1, 0
lw $a0, 4($a1)
loop36adad3d7ccd4e58a1799d246ffb5e96:
lw $t2, ($a1)
beq $t1, $a0, brake394cd38bf1834dea83dfb8984f9499ac
sw $t2,($t0)
add $a1, $a1, 4
add $t0, $t0, 4
add $t1, $t1, 1
j loop36adad3d7ccd4e58a1799d246ffb5e96
brake394cd38bf1834dea83dfb8984f9499ac:
sw $v0, -20($fp)
lw $a0, -20($fp)
sw $a0, -20($fp)
sw $a0, -20($fp)
li $a0, 64
li $v0, 9
syscall
li $a0, 10
sw $a0, ($v0)
li $a0, 16
sw $a0, 4($v0)
la $a0, E_dispatch_table
sw $a0, 8($v0)
sw $v0, -60($fp)
jal init_E
sw $v0, -60($fp)
addu $sp, $sp, 0
lw $a1, -60($fp)
li $a0, 1
beq $a1, $zero, isVoid41cc7ea4fce447b8b9b182fb40fce847
li $a0, 0
isVoid41cc7ea4fce447b8b9b182fb40fce847:
sw $a0, -64($fp)
lw $a0, -64($fp)
bne $a0, $zero, label_C_method5_not_valid_dispatch_jump_20
lw $a0, -20($fp)
sw $a0, -68($fp)
sw $a0, -68($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -68($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -60($fp)
sw $a0, ($sp)
la $a0, C_method5_data_8
sw $a0, -76($fp)
lw $a3, -60($fp)
lw $t4, -76($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoopf6baf3941f5a446aac0faac46a740310:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoopf5cf974cd67f415591cc190b20fa83c4:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalsed60c867f04344bbd92db748d413436d0
beqz $t1, returnTrue0e9e58fc8c4a41068d9f2cf1854d8b19
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoopf5cf974cd67f415591cc190b20fa83c4
j returnTrue0e9e58fc8c4a41068d9f2cf1854d8b19
returnFalsed60c867f04344bbd92db748d413436d0:
li $a0, 0
returnTrue0e9e58fc8c4a41068d9f2cf1854d8b19:
add $t0, $t0, 8
beqz $a0, tableLoopf6baf3941f5a446aac0faac46a740310
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -72($fp)
addu $sp, $sp, 8
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_C_method5_end_dispatch_label_21
label_C_method5_not_valid_dispatch_jump_20:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_C_method5_end_dispatch_label_21:
lw $a0, -72($fp)
sw $a0, -24($fp)
sw $a0, -24($fp)
lw $a0, -24($fp)
sw $a0, -80($fp)
sw $a0, -80($fp)
lw $v0, -80($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl init_D
init_D:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
li $a0, 16
li $v0, 9
syscall
li $a0, 9
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, D_dispatch_table
sw $a0, 8($v0)
sw $v0, -12($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -16($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 0
sw $a0, -20($fp)
lw $a0, -16($fp)
lw $a1, -20($fp)
sw $a1, 12($a0)
lw $a0, -12($fp)
lw $a1, -16($fp)
sw $a1, 12($a0)
lw $v0, -12($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_D_method7
def_D_method7:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
lw $a0, 0($fp)
sw $a0, -12($fp)
lw $a0, 4($fp)
sw $a0, -16($fp)
lw $a0, -16($fp)
sw $a0, -24($fp)
sw $a0, -24($fp)
lw $a0, -16($fp)
sw $a0, -28($fp)
sw $a0, -28($fp)
lw $a1, -28($fp)
lw $a0, 4($a1)
li $a2, 4
multu $a0, $a2
mflo $a0
li $v0, 9
syscall
move $t0, $v0
li $t1, 0
lw $a0, 4($a1)
loopbdf5b65d5988459ebb82842d3a7f78b5:
lw $t2, ($a1)
beq $t1, $a0, brake5974bfa606ab48378d251fb39dc50319
sw $t2,($t0)
add $a1, $a1, 4
add $t0, $t0, 4
add $t1, $t1, 1
j loopbdf5b65d5988459ebb82842d3a7f78b5
brake5974bfa606ab48378d251fb39dc50319:
sw $v0, -20($fp)
lw $a0, -20($fp)
sw $a0, -40($fp)
sw $a0, -40($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -44($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 0
sw $a0, -48($fp)
lw $a0, -44($fp)
lw $a1, -48($fp)
sw $a1, 12($a0)
lw $a0, -40($fp)
lw $a1, 12($a0)
sw $a1, -40($fp)
lw $a0, -44($fp)
lw $a1, 12($a0)
sw $a1, -44($fp)
lw $a0, -40($fp)
lw $a1, -44($fp)
sub $a0, $a0, $a1
sw $a0, -36($fp)
lw $a1, -36($fp)
li $a0, 1
bltz $a1, returnTrue35c8823106154e93bb24928d2c1604d9
li $a0, 0
returnTrue35c8823106154e93bb24928d2c1604d9:
sw $a0, -36($fp)
li $a0, 16
li $v0, 9
syscall
li $a0, 3
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, Bool_dispatch_table
sw $a0, 8($v0)
sw $v0, -52($fp)
lw $a0, -52($fp)
lw $a1, -36($fp)
sw $a1, 12($a0)
lw $a0, -52($fp)
lw $a1, 12($a0)
sw $a1, -52($fp)
lw $a0, -52($fp)
bne $a0, $zero, label_D_method7_if_22
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -64($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 0
sw $a0, -68($fp)
lw $a0, -64($fp)
lw $a1, -68($fp)
sw $a1, 12($a0)
lw $a0, -20($fp)
sw $a0, -72($fp)
sw $a0, -72($fp)
lw $a0, -64($fp)
lw $a1, 12($a0)
sw $a1, -64($fp)
lw $a0, -72($fp)
lw $a1, 12($a0)
sw $a1, -72($fp)
lw $a0, -64($fp)
lw $a1, -72($fp)
sub $a0, $a0, $a1
sw $a0, -60($fp)
lw $a1, -60($fp)
li $a0, 1
beqz $a1, returnTrueefaef563f9c94f7d9158ecb6b834af72
li $a0, 0
returnTrueefaef563f9c94f7d9158ecb6b834af72:
sw $a0, -60($fp)
li $a0, 16
li $v0, 9
syscall
li $a0, 3
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, Bool_dispatch_table
sw $a0, 8($v0)
sw $v0, -76($fp)
lw $a0, -76($fp)
lw $a1, -60($fp)
sw $a1, 12($a0)
lw $a0, -76($fp)
lw $a1, 12($a0)
sw $a1, -76($fp)
lw $a0, -76($fp)
bne $a0, $zero, label_D_method7_if_24
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -88($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 1
sw $a0, -92($fp)
lw $a0, -88($fp)
lw $a1, -92($fp)
sw $a1, 12($a0)
lw $a0, -20($fp)
sw $a0, -96($fp)
sw $a0, -96($fp)
lw $a0, -88($fp)
lw $a1, 12($a0)
sw $a1, -88($fp)
lw $a0, -96($fp)
lw $a1, 12($a0)
sw $a1, -96($fp)
lw $a0, -88($fp)
lw $a1, -96($fp)
sub $a0, $a0, $a1
sw $a0, -84($fp)
lw $a1, -84($fp)
li $a0, 1
beqz $a1, returnTrue6a7f3627153249b18fe4bd13cba72eca
li $a0, 0
returnTrue6a7f3627153249b18fe4bd13cba72eca:
sw $a0, -84($fp)
li $a0, 16
li $v0, 9
syscall
li $a0, 3
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, Bool_dispatch_table
sw $a0, 8($v0)
sw $v0, -100($fp)
lw $a0, -100($fp)
lw $a1, -84($fp)
sw $a1, 12($a0)
lw $a0, -100($fp)
lw $a1, 12($a0)
sw $a1, -100($fp)
lw $a0, -100($fp)
bne $a0, $zero, label_D_method7_if_26
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -112($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 2
sw $a0, -116($fp)
lw $a0, -112($fp)
lw $a1, -116($fp)
sw $a1, 12($a0)
lw $a0, -20($fp)
sw $a0, -120($fp)
sw $a0, -120($fp)
lw $a0, -112($fp)
lw $a1, 12($a0)
sw $a1, -112($fp)
lw $a0, -120($fp)
lw $a1, 12($a0)
sw $a1, -120($fp)
lw $a0, -112($fp)
lw $a1, -120($fp)
sub $a0, $a0, $a1
sw $a0, -108($fp)
lw $a1, -108($fp)
li $a0, 1
beqz $a1, returnTruead807b73e39d4ef0b53c1d86ad67bad9
li $a0, 0
returnTruead807b73e39d4ef0b53c1d86ad67bad9:
sw $a0, -108($fp)
li $a0, 16
li $v0, 9
syscall
li $a0, 3
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, Bool_dispatch_table
sw $a0, 8($v0)
sw $v0, -124($fp)
lw $a0, -124($fp)
lw $a1, -108($fp)
sw $a1, 12($a0)
lw $a0, -124($fp)
lw $a1, 12($a0)
sw $a1, -124($fp)
lw $a0, -124($fp)
bne $a0, $zero, label_D_method7_if_28
lw $a1, -12($fp)
li $a0, 1
beq $a1, $zero, isVoid7c0ae85280084ef4a182d62442496534
li $a0, 0
isVoid7c0ae85280084ef4a182d62442496534:
sw $a0, -128($fp)
lw $a0, -128($fp)
bne $a0, $zero, label_D_method7_not_valid_dispatch_jump_30
lw $a0, -20($fp)
sw $a0, -140($fp)
sw $a0, -140($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -144($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 3
sw $a0, -148($fp)
lw $a0, -144($fp)
lw $a1, -148($fp)
sw $a1, 12($a0)
lw $a0, -140($fp)
lw $a1, 12($a0)
sw $a1, -140($fp)
lw $a0, -144($fp)
lw $a1, 12($a0)
sw $a1, -144($fp)
lw $a0, -140($fp)
lw $a1, -144($fp)
sub $a0, $a0, $a1
sw $a0, -132($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -136($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $a0, -136($fp)
lw $a1, -132($fp)
sw $a1, 12($a0)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -136($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -12($fp)
sw $a0, ($sp)
la $a0, D_method7_data_9
sw $a0, -156($fp)
lw $a3, -12($fp)
lw $t4, -156($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoopf0e16cf504944e63ba071a112103f384:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoopb7c07a55726b4a7695aefa1bb1b43d85:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalsef3252024a5a54b998133b0252652b68a
beqz $t1, returnTrue49393cb1cdd548809ce32ede3ba3edc1
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoopb7c07a55726b4a7695aefa1bb1b43d85
j returnTrue49393cb1cdd548809ce32ede3ba3edc1
returnFalsef3252024a5a54b998133b0252652b68a:
li $a0, 0
returnTrue49393cb1cdd548809ce32ede3ba3edc1:
add $t0, $t0, 8
beqz $a0, tableLoopf0e16cf504944e63ba071a112103f384
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -152($fp)
addu $sp, $sp, 8
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_D_method7_end_dispatch_label_31
label_D_method7_not_valid_dispatch_jump_30:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_D_method7_end_dispatch_label_31:
lw $a0, -152($fp)
sw $a0, -104($fp)
sw $a0, -104($fp)
j label_D_method7_fi_29
label_D_method7_if_28:
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Bool
sw $v0, -160($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 0
sw $a0, -164($fp)
lw $a0, -160($fp)
lw $a1, -164($fp)
sw $a1, 12($a0)
lw $a0, -160($fp)
sw $a0, -104($fp)
sw $a0, -104($fp)
label_D_method7_fi_29:
lw $a0, -104($fp)
sw $a0, -80($fp)
sw $a0, -80($fp)
j label_D_method7_fi_27
label_D_method7_if_26:
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Bool
sw $v0, -168($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 0
sw $a0, -172($fp)
lw $a0, -168($fp)
lw $a1, -172($fp)
sw $a1, 12($a0)
lw $a0, -168($fp)
sw $a0, -80($fp)
sw $a0, -80($fp)
label_D_method7_fi_27:
lw $a0, -80($fp)
sw $a0, -56($fp)
sw $a0, -56($fp)
j label_D_method7_fi_25
label_D_method7_if_24:
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Bool
sw $v0, -176($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 1
sw $a0, -180($fp)
lw $a0, -176($fp)
lw $a1, -180($fp)
sw $a1, 12($a0)
lw $a0, -176($fp)
sw $a0, -56($fp)
sw $a0, -56($fp)
label_D_method7_fi_25:
lw $a0, -56($fp)
sw $a0, -32($fp)
sw $a0, -32($fp)
j label_D_method7_fi_23
label_D_method7_if_22:
lw $a1, -12($fp)
li $a0, 1
beq $a1, $zero, isVoidbf69b479104f4a6baec532d335ac3c6d
li $a0, 0
isVoidbf69b479104f4a6baec532d335ac3c6d:
sw $a0, -184($fp)
lw $a0, -184($fp)
bne $a0, $zero, label_D_method7_not_valid_dispatch_jump_32
lw $a0, -20($fp)
sw $a0, -188($fp)
sw $a0, -188($fp)
lw $a0, -188($fp)
lw $a1, 12($a0)
sw $a1, -188($fp)
li $a0, 0
sw $a0, -192($fp)
lw $a0, -192($fp)
lw $a1, -188($fp)
sub $a0, $a0, $a1
sw $a0, -192($fp)
li $a0, 16
li $v0, 9
syscall
li $a0, 2
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, Int_dispatch_table
sw $a0, 8($v0)
sw $v0, -196($fp)
lw $a0, -196($fp)
lw $a1, -192($fp)
sw $a1, 12($a0)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -196($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -12($fp)
sw $a0, ($sp)
la $a0, D_method7_data_10
sw $a0, -204($fp)
lw $a3, -12($fp)
lw $t4, -204($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop394cf4c17bb740da8e6fe9ac0434a8e7:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoopa834c6c7c1ad47bb98bd703bf6e71af2:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse8b4c4417c7474d8e92a34d6ed0703cbe
beqz $t1, returnTrue2d03f94c9a504139b8ae411d4613e5bc
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoopa834c6c7c1ad47bb98bd703bf6e71af2
j returnTrue2d03f94c9a504139b8ae411d4613e5bc
returnFalse8b4c4417c7474d8e92a34d6ed0703cbe:
li $a0, 0
returnTrue2d03f94c9a504139b8ae411d4613e5bc:
add $t0, $t0, 8
beqz $a0, tableLoop394cf4c17bb740da8e6fe9ac0434a8e7
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -200($fp)
addu $sp, $sp, 8
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_D_method7_end_dispatch_label_33
label_D_method7_not_valid_dispatch_jump_32:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_D_method7_end_dispatch_label_33:
lw $a0, -200($fp)
sw $a0, -32($fp)
sw $a0, -32($fp)
label_D_method7_fi_23:
lw $a0, -32($fp)
sw $a0, -208($fp)
sw $a0, -208($fp)
lw $v0, -208($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl init_E
init_E:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
li $a0, 16
li $v0, 9
syscall
li $a0, 10
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, E_dispatch_table
sw $a0, 8($v0)
sw $v0, -12($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -16($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 0
sw $a0, -20($fp)
lw $a0, -16($fp)
lw $a1, -20($fp)
sw $a1, 12($a0)
lw $a0, -12($fp)
lw $a1, -16($fp)
sw $a1, 12($a0)
lw $v0, -12($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_E_method6
def_E_method6:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
lw $a0, 0($fp)
sw $a0, -12($fp)
lw $a0, 4($fp)
sw $a0, -16($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -20($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $a0, -16($fp)
sw $a0, -40($fp)
sw $a0, -40($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -44($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 8
sw $a0, -48($fp)
lw $a0, -44($fp)
lw $a1, -48($fp)
sw $a1, 12($a0)
lw $a0, -40($fp)
lw $a1, 12($a0)
sw $a1, -40($fp)
lw $a0, -44($fp)
lw $a1, 12($a0)
sw $a1, -44($fp)
lw $a1, -44($fp)
li $a0, 1
beqz $a1, returnTrued85d2aa46e654de6b7ae745a15c960da
li $a0, 0
returnTrued85d2aa46e654de6b7ae745a15c960da:
sw $a0, -52($fp)
lw $a0, -52($fp)
bne $a0, $zero, label_E_method6_zero_division_34
lw $a0, -40($fp)
lw $a1, -44($fp)
div $a0, $a1
mflo $a0
sw $a0, -32($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -36($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $a0, -36($fp)
lw $a1, -32($fp)
sw $a1, 12($a0)
j label_E_method6_exit_div_35
label_E_method6_zero_division_34:
la $a0, zero_division
li $v0, 4
syscall
li $v0, 10
syscall
label_E_method6_exit_div_35:
lw $a1, -36($fp)
lw $a0, 4($a1)
li $a2, 4
multu $a0, $a2
mflo $a0
li $v0, 9
syscall
move $t0, $v0
li $t1, 0
lw $a0, 4($a1)
loopc0d8edf709b84657b08b480899fe0ab6:
lw $t2, ($a1)
beq $t1, $a0, brake2dd0edf8074a4214a6d0bd7fdc684dec
sw $t2,($t0)
add $a1, $a1, 4
add $t0, $t0, 4
add $t1, $t1, 1
j loopc0d8edf709b84657b08b480899fe0ab6
brake2dd0edf8074a4214a6d0bd7fdc684dec:
sw $v0, -20($fp)
lw $a0, -20($fp)
sw $a0, -20($fp)
sw $a0, -20($fp)
li $a0, 64
li $v0, 9
syscall
li $a0, 6
sw $a0, ($v0)
li $a0, 16
sw $a0, 4($v0)
la $a0, A_dispatch_table
sw $a0, 8($v0)
sw $v0, -56($fp)
jal init_A
sw $v0, -56($fp)
addu $sp, $sp, 0
lw $a1, -56($fp)
li $a0, 1
beq $a1, $zero, isVoid5afe3372d9ae418887f6399697098b1c
li $a0, 0
isVoid5afe3372d9ae418887f6399697098b1c:
sw $a0, -60($fp)
lw $a0, -60($fp)
bne $a0, $zero, label_E_method6_not_valid_dispatch_jump_36
lw $a0, -20($fp)
sw $a0, -64($fp)
sw $a0, -64($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -64($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -56($fp)
sw $a0, ($sp)
la $a0, E_method6_data_11
sw $a0, -72($fp)
lw $a3, -56($fp)
lw $t4, -72($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop5ae1b3dc3e5645ec80ef5293a5086ce1:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoope482fce1c6a24da08f91c590b3ca7c7e:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse230df9b5cdde4a4f9c9c7bc6ca380b40
beqz $t1, returnTrue64d37258191f483fada4680f50b978d7
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoope482fce1c6a24da08f91c590b3ca7c7e
j returnTrue64d37258191f483fada4680f50b978d7
returnFalse230df9b5cdde4a4f9c9c7bc6ca380b40:
li $a0, 0
returnTrue64d37258191f483fada4680f50b978d7:
add $t0, $t0, 8
beqz $a0, tableLoop5ae1b3dc3e5645ec80ef5293a5086ce1
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -68($fp)
addu $sp, $sp, 8
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_E_method6_end_dispatch_label_37
label_E_method6_not_valid_dispatch_jump_36:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_E_method6_end_dispatch_label_37:
lw $a0, -68($fp)
sw $a0, -24($fp)
sw $a0, -24($fp)
lw $a0, -24($fp)
sw $a0, -76($fp)
sw $a0, -76($fp)
lw $v0, -76($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl init_Main
init_Main:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
li $a0, 28
li $v0, 9
syscall
li $a0, 11
sw $a0, ($v0)
li $a0, 7
sw $a0, 4($v0)
la $a0, Main_dispatch_table
sw $a0, 8($v0)
sw $v0, -12($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_String
sw $v0, -16($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $a0, -12($fp)
lw $a1, -16($fp)
sw $a1, 12($a0)
li $a0, 0
sw $a0, -24($fp)
lw $a0, -12($fp)
lw $a1, -24($fp)
sw $a1, 16($a0)
li $a0, 0
sw $a0, -32($fp)
lw $a0, -12($fp)
lw $a1, -32($fp)
sw $a1, 20($a0)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Bool
sw $v0, -36($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 1
sw $a0, -40($fp)
lw $a0, -36($fp)
lw $a1, -40($fp)
sw $a1, 12($a0)
lw $a0, -12($fp)
lw $a1, -36($fp)
sw $a1, 24($a0)
lw $v0, -12($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_Main_is_even
def_Main_is_even:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
lw $a0, 0($fp)
sw $a0, -12($fp)
lw $a0, 4($fp)
sw $a0, -16($fp)
lw $a0, -16($fp)
sw $a0, -24($fp)
sw $a0, -24($fp)
lw $a0, -16($fp)
sw $a0, -28($fp)
sw $a0, -28($fp)
lw $a1, -28($fp)
lw $a0, 4($a1)
li $a2, 4
multu $a0, $a2
mflo $a0
li $v0, 9
syscall
move $t0, $v0
li $t1, 0
lw $a0, 4($a1)
loop4df02b57fa564f86ae861d8655a59926:
lw $t2, ($a1)
beq $t1, $a0, brake50da25530c554e0bb40902cb8a557755
sw $t2,($t0)
add $a1, $a1, 4
add $t0, $t0, 4
add $t1, $t1, 1
j loop4df02b57fa564f86ae861d8655a59926
brake50da25530c554e0bb40902cb8a557755:
sw $v0, -20($fp)
lw $a0, -20($fp)
sw $a0, -40($fp)
sw $a0, -40($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -44($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 0
sw $a0, -48($fp)
lw $a0, -44($fp)
lw $a1, -48($fp)
sw $a1, 12($a0)
lw $a0, -40($fp)
lw $a1, 12($a0)
sw $a1, -40($fp)
lw $a0, -44($fp)
lw $a1, 12($a0)
sw $a1, -44($fp)
lw $a0, -40($fp)
lw $a1, -44($fp)
sub $a0, $a0, $a1
sw $a0, -36($fp)
lw $a1, -36($fp)
li $a0, 1
bltz $a1, returnTrueee816c4a61cf4fb982a5e36e5e73fa11
li $a0, 0
returnTrueee816c4a61cf4fb982a5e36e5e73fa11:
sw $a0, -36($fp)
li $a0, 16
li $v0, 9
syscall
li $a0, 3
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, Bool_dispatch_table
sw $a0, 8($v0)
sw $v0, -52($fp)
lw $a0, -52($fp)
lw $a1, -36($fp)
sw $a1, 12($a0)
lw $a0, -52($fp)
lw $a1, 12($a0)
sw $a1, -52($fp)
lw $a0, -52($fp)
bne $a0, $zero, label_Main_is_even_if_38
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -64($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 0
sw $a0, -68($fp)
lw $a0, -64($fp)
lw $a1, -68($fp)
sw $a1, 12($a0)
lw $a0, -20($fp)
sw $a0, -72($fp)
sw $a0, -72($fp)
lw $a0, -64($fp)
lw $a1, 12($a0)
sw $a1, -64($fp)
lw $a0, -72($fp)
lw $a1, 12($a0)
sw $a1, -72($fp)
lw $a0, -64($fp)
lw $a1, -72($fp)
sub $a0, $a0, $a1
sw $a0, -60($fp)
lw $a1, -60($fp)
li $a0, 1
beqz $a1, returnTrue45cfc41f672144d59f4601684754c0cc
li $a0, 0
returnTrue45cfc41f672144d59f4601684754c0cc:
sw $a0, -60($fp)
li $a0, 16
li $v0, 9
syscall
li $a0, 3
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, Bool_dispatch_table
sw $a0, 8($v0)
sw $v0, -76($fp)
lw $a0, -76($fp)
lw $a1, -60($fp)
sw $a1, 12($a0)
lw $a0, -76($fp)
lw $a1, 12($a0)
sw $a1, -76($fp)
lw $a0, -76($fp)
bne $a0, $zero, label_Main_is_even_if_40
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -88($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 1
sw $a0, -92($fp)
lw $a0, -88($fp)
lw $a1, -92($fp)
sw $a1, 12($a0)
lw $a0, -20($fp)
sw $a0, -96($fp)
sw $a0, -96($fp)
lw $a0, -88($fp)
lw $a1, 12($a0)
sw $a1, -88($fp)
lw $a0, -96($fp)
lw $a1, 12($a0)
sw $a1, -96($fp)
lw $a0, -88($fp)
lw $a1, -96($fp)
sub $a0, $a0, $a1
sw $a0, -84($fp)
lw $a1, -84($fp)
li $a0, 1
beqz $a1, returnTrue11ff05da5c644309b39abba2a488dc4a
li $a0, 0
returnTrue11ff05da5c644309b39abba2a488dc4a:
sw $a0, -84($fp)
li $a0, 16
li $v0, 9
syscall
li $a0, 3
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, Bool_dispatch_table
sw $a0, 8($v0)
sw $v0, -100($fp)
lw $a0, -100($fp)
lw $a1, -84($fp)
sw $a1, 12($a0)
lw $a0, -100($fp)
lw $a1, 12($a0)
sw $a1, -100($fp)
lw $a0, -100($fp)
bne $a0, $zero, label_Main_is_even_if_42
lw $a1, -12($fp)
li $a0, 1
beq $a1, $zero, isVoidee563f536b2848de914478ab2de62c6f
li $a0, 0
isVoidee563f536b2848de914478ab2de62c6f:
sw $a0, -104($fp)
lw $a0, -104($fp)
bne $a0, $zero, label_Main_is_even_not_valid_dispatch_jump_44
lw $a0, -20($fp)
sw $a0, -116($fp)
sw $a0, -116($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -120($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 2
sw $a0, -124($fp)
lw $a0, -120($fp)
lw $a1, -124($fp)
sw $a1, 12($a0)
lw $a0, -116($fp)
lw $a1, 12($a0)
sw $a1, -116($fp)
lw $a0, -120($fp)
lw $a1, 12($a0)
sw $a1, -120($fp)
lw $a0, -116($fp)
lw $a1, -120($fp)
sub $a0, $a0, $a1
sw $a0, -108($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -112($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $a0, -112($fp)
lw $a1, -108($fp)
sw $a1, 12($a0)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -112($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -12($fp)
sw $a0, ($sp)
la $a0, Main_is_even_data_12
sw $a0, -132($fp)
lw $a3, -12($fp)
lw $t4, -132($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoopf9e17e39a9d045ccb2ec1b779a4eefdf:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop3c944dcea658423d85ad3c98f69e154d:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse97f0a205964341d0a9141eba4f30f3a7
beqz $t1, returnTrued10b1967405642388a0f291a0b1fb4a2
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop3c944dcea658423d85ad3c98f69e154d
j returnTrued10b1967405642388a0f291a0b1fb4a2
returnFalse97f0a205964341d0a9141eba4f30f3a7:
li $a0, 0
returnTrued10b1967405642388a0f291a0b1fb4a2:
add $t0, $t0, 8
beqz $a0, tableLoopf9e17e39a9d045ccb2ec1b779a4eefdf
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -128($fp)
addu $sp, $sp, 8
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_Main_is_even_end_dispatch_label_45
label_Main_is_even_not_valid_dispatch_jump_44:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_is_even_end_dispatch_label_45:
lw $a0, -128($fp)
sw $a0, -80($fp)
sw $a0, -80($fp)
j label_Main_is_even_fi_43
label_Main_is_even_if_42:
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Bool
sw $v0, -136($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 0
sw $a0, -140($fp)
lw $a0, -136($fp)
lw $a1, -140($fp)
sw $a1, 12($a0)
lw $a0, -136($fp)
sw $a0, -80($fp)
sw $a0, -80($fp)
label_Main_is_even_fi_43:
lw $a0, -80($fp)
sw $a0, -56($fp)
sw $a0, -56($fp)
j label_Main_is_even_fi_41
label_Main_is_even_if_40:
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Bool
sw $v0, -144($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 1
sw $a0, -148($fp)
lw $a0, -144($fp)
lw $a1, -148($fp)
sw $a1, 12($a0)
lw $a0, -144($fp)
sw $a0, -56($fp)
sw $a0, -56($fp)
label_Main_is_even_fi_41:
lw $a0, -56($fp)
sw $a0, -32($fp)
sw $a0, -32($fp)
j label_Main_is_even_fi_39
label_Main_is_even_if_38:
lw $a1, -12($fp)
li $a0, 1
beq $a1, $zero, isVoidf79d8c5f614b4db88b86d61412d3fa46
li $a0, 0
isVoidf79d8c5f614b4db88b86d61412d3fa46:
sw $a0, -152($fp)
lw $a0, -152($fp)
bne $a0, $zero, label_Main_is_even_not_valid_dispatch_jump_46
lw $a0, -20($fp)
sw $a0, -156($fp)
sw $a0, -156($fp)
lw $a0, -156($fp)
lw $a1, 12($a0)
sw $a1, -156($fp)
li $a0, 0
sw $a0, -160($fp)
lw $a0, -160($fp)
lw $a1, -156($fp)
sub $a0, $a0, $a1
sw $a0, -160($fp)
li $a0, 16
li $v0, 9
syscall
li $a0, 2
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, Int_dispatch_table
sw $a0, 8($v0)
sw $v0, -164($fp)
lw $a0, -164($fp)
lw $a1, -160($fp)
sw $a1, 12($a0)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -164($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -12($fp)
sw $a0, ($sp)
la $a0, Main_is_even_data_13
sw $a0, -172($fp)
lw $a3, -12($fp)
lw $t4, -172($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop2fadf7beae4c4331ae58ba1db907d548:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop344f781fb6a8472e9fd8ee40a83393aa:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse03b0c10f6bbe45e791c70f1e136dfae6
beqz $t1, returnTrue4f7c455e130642649e0483bf07c26bd8
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop344f781fb6a8472e9fd8ee40a83393aa
j returnTrue4f7c455e130642649e0483bf07c26bd8
returnFalse03b0c10f6bbe45e791c70f1e136dfae6:
li $a0, 0
returnTrue4f7c455e130642649e0483bf07c26bd8:
add $t0, $t0, 8
beqz $a0, tableLoop2fadf7beae4c4331ae58ba1db907d548
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -168($fp)
addu $sp, $sp, 8
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_Main_is_even_end_dispatch_label_47
label_Main_is_even_not_valid_dispatch_jump_46:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_is_even_end_dispatch_label_47:
lw $a0, -168($fp)
sw $a0, -32($fp)
sw $a0, -32($fp)
label_Main_is_even_fi_39:
lw $a0, -32($fp)
sw $a0, -176($fp)
sw $a0, -176($fp)
lw $v0, -176($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_Main_main
def_Main_main:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
lw $a0, 0($fp)
sw $a0, -12($fp)
li $a0, 64
li $v0, 9
syscall
li $a0, 6
sw $a0, ($v0)
li $a0, 16
sw $a0, 4($v0)
la $a0, A_dispatch_table
sw $a0, 8($v0)
sw $v0, -24($fp)
jal init_A
sw $v0, -24($fp)
addu $sp, $sp, 0
lw $a0, -24($fp)
sw $a0, -20($fp)
sw $a0, -20($fp)
lw $a0, -12($fp)
lw $a1, -20($fp)
sw $a1, 16($a0)
lw $a0, -12($fp)
lw $a1, 16($a0)
sw $a1, -28($fp)
lw $a1, -28($fp)
li $a0, 1
beq $a1, $zero, isVoid5c3c6b1955214f7188bd4b12a6689f29
li $a0, 0
isVoid5c3c6b1955214f7188bd4b12a6689f29:
sw $a0, -32($fp)
lw $a0, -32($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_48
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -36($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 2
sw $a0, -40($fp)
lw $a0, -36($fp)
lw $a1, -40($fp)
sw $a1, 12($a0)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -36($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -28($fp)
sw $a0, ($sp)
la $a0, Main_main_data_14
sw $a0, -48($fp)
lw $a3, -28($fp)
lw $t4, -48($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoopea15c334dcf14080b13bed56811b6a7a:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop4b04fbc4591e49c8a915612c58b5e4d2:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse6842800aadc54d87bbd2e1517792358e
beqz $t1, returnTrue005cc6d00d674ce19845fe67a53b2e34
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop4b04fbc4591e49c8a915612c58b5e4d2
j returnTrue005cc6d00d674ce19845fe67a53b2e34
returnFalse6842800aadc54d87bbd2e1517792358e:
li $a0, 0
returnTrue005cc6d00d674ce19845fe67a53b2e34:
add $t0, $t0, 8
beqz $a0, tableLoopea15c334dcf14080b13bed56811b6a7a
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -44($fp)
addu $sp, $sp, 8
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_Main_main_end_dispatch_label_49
label_Main_main_not_valid_dispatch_jump_48:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_49:
lw $a0, -12($fp)
lw $a1, 16($a0)
sw $a1, -52($fp)
lw $a1, -52($fp)
li $a0, 1
beq $a1, $zero, isVoid8a2fe1dd0f084c38834cd55d46f2a79e
li $a0, 0
isVoid8a2fe1dd0f084c38834cd55d46f2a79e:
sw $a0, -56($fp)
lw $a0, -56($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_50
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -52($fp)
sw $a0, ($sp)
la $a0, Main_main_data_15
sw $a0, -64($fp)
lw $a3, -52($fp)
lw $t4, -64($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop8d80554c7de84464a386cd0736ab48c7:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoopc1f9c26cbd584cd899513551b1f8bd49:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse77459d351ad74587aaea281991d6c658
beqz $t1, returnTrue7540e44c7fd34ff9b50dc23dd024d612
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoopc1f9c26cbd584cd899513551b1f8bd49
j returnTrue7540e44c7fd34ff9b50dc23dd024d612
returnFalse77459d351ad74587aaea281991d6c658:
li $a0, 0
returnTrue7540e44c7fd34ff9b50dc23dd024d612:
add $t0, $t0, 8
beqz $a0, tableLoop8d80554c7de84464a386cd0736ab48c7
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -60($fp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_Main_main_end_dispatch_label_51
label_Main_main_not_valid_dispatch_jump_50:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_51:
lw $a0, -60($fp)
lw $a1, 12($a0)
sw $a1, -60($fp)
lw $a0, -60($fp)
li $v0, 1
syscall
lw $a0, -12($fp)
sw $a0, -60($fp)
sw $a0, -60($fp)
lw $a1, -12($fp)
li $a0, 1
beq $a1, $zero, isVoid68e09bef5a334c1ba452e3fbea2e19cb
li $a0, 0
isVoid68e09bef5a334c1ba452e3fbea2e19cb:
sw $a0, -72($fp)
lw $a0, -72($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_52
lw $a0, -12($fp)
lw $a1, 16($a0)
sw $a1, -76($fp)
lw $a1, -76($fp)
li $a0, 1
beq $a1, $zero, isVoid3c248dd6bd2c4d2982c0b358bc95f716
li $a0, 0
isVoid3c248dd6bd2c4d2982c0b358bc95f716:
sw $a0, -80($fp)
lw $a0, -80($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_53
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -76($fp)
sw $a0, ($sp)
la $a0, Main_main_data_16
sw $a0, -88($fp)
lw $a3, -76($fp)
lw $t4, -88($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop158e75853c5645099b9dce0747e11802:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop725ebfbb2da148e481ecfb4eddb110cc:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalsef168bd37cc434a71ad60fbdbdb1e5e9e
beqz $t1, returnTrue74091d0b91b94e9c89c1ced51c110ac6
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop725ebfbb2da148e481ecfb4eddb110cc
j returnTrue74091d0b91b94e9c89c1ced51c110ac6
returnFalsef168bd37cc434a71ad60fbdbdb1e5e9e:
li $a0, 0
returnTrue74091d0b91b94e9c89c1ced51c110ac6:
add $t0, $t0, 8
beqz $a0, tableLoop158e75853c5645099b9dce0747e11802
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -84($fp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_Main_main_end_dispatch_label_54
label_Main_main_not_valid_dispatch_jump_53:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_54:
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -84($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -12($fp)
sw $a0, ($sp)
la $a0, Main_main_data_17
sw $a0, -96($fp)
lw $a3, -12($fp)
lw $t4, -96($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoopd7570bfcefe5456a842b4483cde4c047:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop8a674677365a4d0cb0cb64c4983e95d3:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse9cec5142c3ff4731bc4d098fef5ecf6f
beqz $t1, returnTrue7cd5ab443ed4413cbec44263422abdc7
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop8a674677365a4d0cb0cb64c4983e95d3
j returnTrue7cd5ab443ed4413cbec44263422abdc7
returnFalse9cec5142c3ff4731bc4d098fef5ecf6f:
li $a0, 0
returnTrue7cd5ab443ed4413cbec44263422abdc7:
add $t0, $t0, 8
beqz $a0, tableLoopd7570bfcefe5456a842b4483cde4c047
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -92($fp)
addu $sp, $sp, 8
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_Main_main_end_dispatch_label_55
label_Main_main_not_valid_dispatch_jump_52:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_55:
lw $a0, -92($fp)
lw $a1, 12($a0)
sw $a1, -92($fp)
lw $a0, -92($fp)
bne $a0, $zero, label_Main_main_if_56
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_String
sw $v0, -104($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
la $a0, Main_main_data_18
sw $a0, -100($fp)
lw $a0, -104($fp)
lw $a1, -100($fp)
sw $a1, 12($a0)
lw $a0, -104($fp)
lw $a1, 12($a0)
sw $a1, -104($fp)
lw $a0, -104($fp)
li $v0, 4
syscall
lw $a0, -12($fp)
sw $a0, -104($fp)
sw $a0, -104($fp)
lw $a0, -104($fp)
sw $a0, -68($fp)
sw $a0, -68($fp)
j label_Main_main_fi_57
label_Main_main_if_56:
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_String
sw $v0, -112($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
la $a0, Main_main_data_19
sw $a0, -108($fp)
lw $a0, -112($fp)
lw $a1, -108($fp)
sw $a1, 12($a0)
lw $a0, -112($fp)
lw $a1, 12($a0)
sw $a1, -112($fp)
lw $a0, -112($fp)
li $v0, 4
syscall
lw $a0, -12($fp)
sw $a0, -112($fp)
sw $a0, -112($fp)
lw $a0, -112($fp)
sw $a0, -68($fp)
sw $a0, -68($fp)
label_Main_main_fi_57:
li $a0, 64
li $v0, 9
syscall
li $a0, 6
sw $a0, ($v0)
li $a0, 16
sw $a0, 4($v0)
la $a0, A_dispatch_table
sw $a0, 8($v0)
sw $v0, -120($fp)
jal init_A
sw $v0, -120($fp)
addu $sp, $sp, 0
lw $a1, -120($fp)
li $a0, 1
beq $a1, $zero, isVoidf65bf1ee43444308a1b75a631695e632
li $a0, 0
isVoidf65bf1ee43444308a1b75a631695e632:
sw $a0, -124($fp)
lw $a0, -124($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_58
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -128($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 3
sw $a0, -132($fp)
lw $a0, -128($fp)
lw $a1, -132($fp)
sw $a1, 12($a0)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -128($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -120($fp)
sw $a0, ($sp)
la $a0, Main_main_data_20
sw $a0, -140($fp)
lw $a3, -120($fp)
lw $t4, -140($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop695d2c35374743a9926b0e7b59992bdc:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop756c16a575004001a45cca3d5d3bbdce:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse8f467080abf1446cb08f90d1a07f8b54
beqz $t1, returnTrue92a79a6f5767409faec62e3c88ae0f09
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop756c16a575004001a45cca3d5d3bbdce
j returnTrue92a79a6f5767409faec62e3c88ae0f09
returnFalse8f467080abf1446cb08f90d1a07f8b54:
li $a0, 0
returnTrue92a79a6f5767409faec62e3c88ae0f09:
add $t0, $t0, 8
beqz $a0, tableLoop695d2c35374743a9926b0e7b59992bdc
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -136($fp)
addu $sp, $sp, 8
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_Main_main_end_dispatch_label_59
label_Main_main_not_valid_dispatch_jump_58:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_59:
lw $a0, -136($fp)
sw $a0, -116($fp)
sw $a0, -116($fp)
lw $a0, -12($fp)
lw $a1, -116($fp)
sw $a1, 20($a0)
li $a0, 64
li $v0, 9
syscall
li $a0, 7
sw $a0, ($v0)
li $a0, 16
sw $a0, 4($v0)
la $a0, B_dispatch_table
sw $a0, 8($v0)
sw $v0, -148($fp)
jal init_B
sw $v0, -148($fp)
addu $sp, $sp, 0
lw $a1, -148($fp)
li $a0, 1
beq $a1, $zero, isVoidbfb058ab43574cd381c1f4446d188dfc
li $a0, 0
isVoidbfb058ab43574cd381c1f4446d188dfc:
sw $a0, -152($fp)
lw $a0, -152($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_60
lw $a0, -12($fp)
lw $a1, 16($a0)
sw $a1, -156($fp)
lw $a1, -156($fp)
li $a0, 1
beq $a1, $zero, isVoidf45e22194d264c78873a4617909f93e8
li $a0, 0
isVoidf45e22194d264c78873a4617909f93e8:
sw $a0, -160($fp)
lw $a0, -160($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_61
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -156($fp)
sw $a0, ($sp)
la $a0, Main_main_data_21
sw $a0, -168($fp)
lw $a3, -156($fp)
lw $t4, -168($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoopbeec6607d894464290b7095db1d26bc0:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop754eb126fc85440697e5c0d3621a352d:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse97d51c4deea54880b8a5696804ae02a5
beqz $t1, returnTrue5d8ce6fc6ec74e2ba969d3f99bba2196
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop754eb126fc85440697e5c0d3621a352d
j returnTrue5d8ce6fc6ec74e2ba969d3f99bba2196
returnFalse97d51c4deea54880b8a5696804ae02a5:
li $a0, 0
returnTrue5d8ce6fc6ec74e2ba969d3f99bba2196:
add $t0, $t0, 8
beqz $a0, tableLoopbeec6607d894464290b7095db1d26bc0
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -164($fp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_Main_main_end_dispatch_label_62
label_Main_main_not_valid_dispatch_jump_61:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_62:
lw $a0, -12($fp)
lw $a1, 20($a0)
sw $a1, -172($fp)
lw $a1, -172($fp)
li $a0, 1
beq $a1, $zero, isVoid7778227412df4cae99d864095ce3401c
li $a0, 0
isVoid7778227412df4cae99d864095ce3401c:
sw $a0, -176($fp)
lw $a0, -176($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_63
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -172($fp)
sw $a0, ($sp)
la $a0, Main_main_data_22
sw $a0, -184($fp)
lw $a3, -172($fp)
lw $t4, -184($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop3228119967b742e09cc5883161221e6a:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop4f7fc8a0652a4f419ea818de806c0979:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse85fb68b6db9b4ac987ab0519320c590c
beqz $t1, returnTrue694a5975268b455d849a433a479c14d6
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop4f7fc8a0652a4f419ea818de806c0979
j returnTrue694a5975268b455d849a433a479c14d6
returnFalse85fb68b6db9b4ac987ab0519320c590c:
li $a0, 0
returnTrue694a5975268b455d849a433a479c14d6:
add $t0, $t0, 8
beqz $a0, tableLoop3228119967b742e09cc5883161221e6a
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -180($fp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_Main_main_end_dispatch_label_64
label_Main_main_not_valid_dispatch_jump_63:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_64:
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -180($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -164($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -148($fp)
sw $a0, ($sp)
la $a0, Main_main_data_23
sw $a0, -192($fp)
lw $a3, -148($fp)
lw $t4, -192($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoopec5e97d51f3d41208d26f443eabdd2c8:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoopbd14c174509940cfa4c0de919cd5b939:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse8d06c6170f27468ebe8268c24e72437c
beqz $t1, returnTruef5e33ba7b1cc438fa31a0d03234d5338
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoopbd14c174509940cfa4c0de919cd5b939
j returnTruef5e33ba7b1cc438fa31a0d03234d5338
returnFalse8d06c6170f27468ebe8268c24e72437c:
li $a0, 0
returnTruef5e33ba7b1cc438fa31a0d03234d5338:
add $t0, $t0, 8
beqz $a0, tableLoopec5e97d51f3d41208d26f443eabdd2c8
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -188($fp)
addu $sp, $sp, 12
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_Main_main_end_dispatch_label_65
label_Main_main_not_valid_dispatch_jump_60:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_65:
lw $a0, -188($fp)
sw $a0, -144($fp)
sw $a0, -144($fp)
lw $a0, -12($fp)
lw $a1, -144($fp)
sw $a1, 16($a0)
lw $a0, -12($fp)
lw $a1, 16($a0)
sw $a1, -196($fp)
lw $a1, -196($fp)
li $a0, 1
beq $a1, $zero, isVoidf3e11241b56343159369358b454e3034
li $a0, 0
isVoidf3e11241b56343159369358b454e3034:
sw $a0, -200($fp)
lw $a0, -200($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_66
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -196($fp)
sw $a0, ($sp)
la $a0, Main_main_data_24
sw $a0, -208($fp)
lw $a3, -196($fp)
lw $t4, -208($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop1bc7a36326044836b6ca0399c3b9c448:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop163a26ded52a4b30ac7030d9b0070be2:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalsee4e13d2d38c6430dbadedb1333d1eb52
beqz $t1, returnTrue80e53f21ac8743eab5000a2b7f923d22
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop163a26ded52a4b30ac7030d9b0070be2
j returnTrue80e53f21ac8743eab5000a2b7f923d22
returnFalsee4e13d2d38c6430dbadedb1333d1eb52:
li $a0, 0
returnTrue80e53f21ac8743eab5000a2b7f923d22:
add $t0, $t0, 8
beqz $a0, tableLoop1bc7a36326044836b6ca0399c3b9c448
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -204($fp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_Main_main_end_dispatch_label_67
label_Main_main_not_valid_dispatch_jump_66:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_67:
lw $a0, -204($fp)
lw $a1, 12($a0)
sw $a1, -204($fp)
lw $a0, -204($fp)
li $v0, 1
syscall
lw $a0, -12($fp)
sw $a0, -204($fp)
sw $a0, -204($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_String
sw $v0, -216($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
la $a0, Main_main_data_25
sw $a0, -212($fp)
lw $a0, -216($fp)
lw $a1, -212($fp)
sw $a1, 12($a0)
lw $a0, -216($fp)
lw $a1, 12($a0)
sw $a1, -216($fp)
lw $a0, -216($fp)
li $v0, 4
syscall
lw $a0, -12($fp)
sw $a0, -216($fp)
sw $a0, -216($fp)
li $a0, 64
li $v0, 9
syscall
li $a0, 8
sw $a0, ($v0)
li $a0, 16
sw $a0, 4($v0)
la $a0, C_dispatch_table
sw $a0, 8($v0)
sw $v0, -224($fp)
jal init_C
sw $v0, -224($fp)
addu $sp, $sp, 0
lw $a1, -224($fp)
li $a0, 1
beq $a1, $zero, isVoida86fd7aac60b40dc9a375a5865c3ebf1
li $a0, 0
isVoida86fd7aac60b40dc9a375a5865c3ebf1:
sw $a0, -228($fp)
lw $a0, -228($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_68
lw $a0, -12($fp)
lw $a1, 16($a0)
sw $a1, -232($fp)
lw $a1, -232($fp)
li $a0, 1
beq $a1, $zero, isVoidafbb503463704f8381a6608df806c126
li $a0, 0
isVoidafbb503463704f8381a6608df806c126:
sw $a0, -236($fp)
lw $a0, -236($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_69
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -232($fp)
sw $a0, ($sp)
la $a0, Main_main_data_26
sw $a0, -244($fp)
lw $a3, -232($fp)
lw $t4, -244($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop23bb233411ac4e49b20ba113054edfc1:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop2e56ce5bac5d402a95534dc610f3e4fc:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalseeea60b32304142a3926004aa18fb1351
beqz $t1, returnTruee2af0372ad394c86a4cb8d8cc6fd43d1
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop2e56ce5bac5d402a95534dc610f3e4fc
j returnTruee2af0372ad394c86a4cb8d8cc6fd43d1
returnFalseeea60b32304142a3926004aa18fb1351:
li $a0, 0
returnTruee2af0372ad394c86a4cb8d8cc6fd43d1:
add $t0, $t0, 8
beqz $a0, tableLoop23bb233411ac4e49b20ba113054edfc1
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -240($fp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_Main_main_end_dispatch_label_70
label_Main_main_not_valid_dispatch_jump_69:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_70:
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -240($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -224($fp)
sw $a0, ($sp)
la $a0, Main_main_data_27
sw $a0, -252($fp)
lw $a3, -224($fp)
lw $t4, -252($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop25cf323ebfac474b82eeff834f577c89:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoopcbb02d306eb3491fa24c07b6d5e09af1:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalsea911f8c319414009935b46c22bae508d
beqz $t1, returnTrueb7b3547d0f684f75b57ea8dc63ca94e6
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoopcbb02d306eb3491fa24c07b6d5e09af1
j returnTrueb7b3547d0f684f75b57ea8dc63ca94e6
returnFalsea911f8c319414009935b46c22bae508d:
li $a0, 0
returnTrueb7b3547d0f684f75b57ea8dc63ca94e6:
add $t0, $t0, 8
beqz $a0, tableLoop25cf323ebfac474b82eeff834f577c89
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -248($fp)
addu $sp, $sp, 8
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_Main_main_end_dispatch_label_71
label_Main_main_not_valid_dispatch_jump_68:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_71:
lw $a0, -248($fp)
sw $a0, -220($fp)
sw $a0, -220($fp)
lw $a0, -12($fp)
lw $a1, -220($fp)
sw $a1, 16($a0)
lw $a0, -12($fp)
lw $a1, 16($a0)
sw $a1, -256($fp)
lw $a1, -256($fp)
li $a0, 1
beq $a1, $zero, isVoid297ca374b4924dcda5b2a991f7247777
li $a0, 0
isVoid297ca374b4924dcda5b2a991f7247777:
sw $a0, -260($fp)
lw $a0, -260($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_72
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -256($fp)
sw $a0, ($sp)
la $a0, Main_main_data_28
sw $a0, -268($fp)
lw $a3, -256($fp)
lw $t4, -268($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop79132be2918d4171804d14995362d299:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoopc2b28e7d72744e018e4d0a0b06d9302f:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalsef59c842a06934db8a68ac3a7f3268930
beqz $t1, returnTrue17cc8592287346e8b31e7b31336805d4
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoopc2b28e7d72744e018e4d0a0b06d9302f
j returnTrue17cc8592287346e8b31e7b31336805d4
returnFalsef59c842a06934db8a68ac3a7f3268930:
li $a0, 0
returnTrue17cc8592287346e8b31e7b31336805d4:
add $t0, $t0, 8
beqz $a0, tableLoop79132be2918d4171804d14995362d299
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -264($fp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_Main_main_end_dispatch_label_73
label_Main_main_not_valid_dispatch_jump_72:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_73:
lw $a0, -264($fp)
lw $a1, 12($a0)
sw $a1, -264($fp)
lw $a0, -264($fp)
li $v0, 1
syscall
lw $a0, -12($fp)
sw $a0, -264($fp)
sw $a0, -264($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_String
sw $v0, -276($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
la $a0, Main_main_data_29
sw $a0, -272($fp)
lw $a0, -276($fp)
lw $a1, -272($fp)
sw $a1, 12($a0)
lw $a0, -276($fp)
lw $a1, 12($a0)
sw $a1, -276($fp)
lw $a0, -276($fp)
li $v0, 4
syscall
lw $a0, -12($fp)
sw $a0, -276($fp)
sw $a0, -276($fp)
li $a0, 64
li $v0, 9
syscall
li $a0, 6
sw $a0, ($v0)
li $a0, 16
sw $a0, 4($v0)
la $a0, A_dispatch_table
sw $a0, 8($v0)
sw $v0, -284($fp)
jal init_A
sw $v0, -284($fp)
addu $sp, $sp, 0
lw $a1, -284($fp)
li $a0, 1
beq $a1, $zero, isVoid7431ecd573e84e0abf5dbea4d7b9aa11
li $a0, 0
isVoid7431ecd573e84e0abf5dbea4d7b9aa11:
sw $a0, -288($fp)
lw $a0, -288($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_74
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -292($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 5
sw $a0, -296($fp)
lw $a0, -292($fp)
lw $a1, -296($fp)
sw $a1, 12($a0)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -292($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -284($fp)
sw $a0, ($sp)
la $a0, Main_main_data_30
sw $a0, -304($fp)
lw $a3, -284($fp)
lw $t4, -304($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoopf91547dee414430d901830b6a6bf6645:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop0f5c2695d12147f6ba1b6e65241a99b9:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse041cfab405fc45a0908af2cfaacceba7
beqz $t1, returnTrue57dd25af9d904c22ac495ce788a7ae6a
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop0f5c2695d12147f6ba1b6e65241a99b9
j returnTrue57dd25af9d904c22ac495ce788a7ae6a
returnFalse041cfab405fc45a0908af2cfaacceba7:
li $a0, 0
returnTrue57dd25af9d904c22ac495ce788a7ae6a:
add $t0, $t0, 8
beqz $a0, tableLoopf91547dee414430d901830b6a6bf6645
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -300($fp)
addu $sp, $sp, 8
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_Main_main_end_dispatch_label_75
label_Main_main_not_valid_dispatch_jump_74:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_75:
lw $a0, -300($fp)
sw $a0, -280($fp)
sw $a0, -280($fp)
lw $a0, -12($fp)
lw $a1, -280($fp)
sw $a1, 20($a0)
li $a0, 64
li $v0, 9
syscall
li $a0, 9
sw $a0, ($v0)
li $a0, 16
sw $a0, 4($v0)
la $a0, D_dispatch_table
sw $a0, 8($v0)
sw $v0, -312($fp)
jal init_D
sw $v0, -312($fp)
addu $sp, $sp, 0
lw $a1, -312($fp)
li $a0, 1
beq $a1, $zero, isVoidde1b449bc7ef428d8312e5405fb835bc
li $a0, 0
isVoidde1b449bc7ef428d8312e5405fb835bc:
sw $a0, -316($fp)
lw $a0, -316($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_76
lw $a0, -12($fp)
lw $a1, 16($a0)
sw $a1, -320($fp)
lw $a1, -320($fp)
li $a0, 1
beq $a1, $zero, isVoid8b1b1051b49e4e74b40a4d90670cadbf
li $a0, 0
isVoid8b1b1051b49e4e74b40a4d90670cadbf:
sw $a0, -324($fp)
lw $a0, -324($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_77
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -320($fp)
sw $a0, ($sp)
la $a0, Main_main_data_31
sw $a0, -332($fp)
lw $a3, -320($fp)
lw $t4, -332($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoopb664fffb79e4477299c2679687ea720e:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoopf14f50fd8e13411884950b3f72a9e9e0:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalsec46e24bba0b843a98e2279f6228ab3d0
beqz $t1, returnTrue002adf9b780847c6a2cf57c7011dd87f
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoopf14f50fd8e13411884950b3f72a9e9e0
j returnTrue002adf9b780847c6a2cf57c7011dd87f
returnFalsec46e24bba0b843a98e2279f6228ab3d0:
li $a0, 0
returnTrue002adf9b780847c6a2cf57c7011dd87f:
add $t0, $t0, 8
beqz $a0, tableLoopb664fffb79e4477299c2679687ea720e
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -328($fp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_Main_main_end_dispatch_label_78
label_Main_main_not_valid_dispatch_jump_77:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_78:
lw $a0, -12($fp)
lw $a1, 20($a0)
sw $a1, -336($fp)
lw $a1, -336($fp)
li $a0, 1
beq $a1, $zero, isVoid860f27794f954266a238e04f7062ea0d
li $a0, 0
isVoid860f27794f954266a238e04f7062ea0d:
sw $a0, -340($fp)
lw $a0, -340($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_79
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -336($fp)
sw $a0, ($sp)
la $a0, Main_main_data_32
sw $a0, -348($fp)
lw $a3, -336($fp)
lw $t4, -348($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop1540a7eba0434eb2b64f1c5e137dcea7:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop746362ecf53448659373f43cd768f57b:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse5c450159e8f94df8ba50322987a32c6e
beqz $t1, returnTrue4b6b83daa7f54ea6b7aff13f983f1257
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop746362ecf53448659373f43cd768f57b
j returnTrue4b6b83daa7f54ea6b7aff13f983f1257
returnFalse5c450159e8f94df8ba50322987a32c6e:
li $a0, 0
returnTrue4b6b83daa7f54ea6b7aff13f983f1257:
add $t0, $t0, 8
beqz $a0, tableLoop1540a7eba0434eb2b64f1c5e137dcea7
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -344($fp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_Main_main_end_dispatch_label_80
label_Main_main_not_valid_dispatch_jump_79:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_80:
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -344($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -328($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -312($fp)
sw $a0, ($sp)
la $a0, Main_main_data_33
sw $a0, -356($fp)
lw $a3, -312($fp)
lw $t4, -356($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop6a47583a371a4c48a1bb7554fe659a7f:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop5e49d2577a794fa09c3129b5f53e6e1d:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalseb11a1ee9cc1241e39c79adaf9de15690
beqz $t1, returnTrue18e84a9d4df547a390fba0c617d54dd7
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop5e49d2577a794fa09c3129b5f53e6e1d
j returnTrue18e84a9d4df547a390fba0c617d54dd7
returnFalseb11a1ee9cc1241e39c79adaf9de15690:
li $a0, 0
returnTrue18e84a9d4df547a390fba0c617d54dd7:
add $t0, $t0, 8
beqz $a0, tableLoop6a47583a371a4c48a1bb7554fe659a7f
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -352($fp)
addu $sp, $sp, 12
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_Main_main_end_dispatch_label_81
label_Main_main_not_valid_dispatch_jump_76:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_81:
lw $a0, -352($fp)
sw $a0, -308($fp)
sw $a0, -308($fp)
lw $a0, -12($fp)
lw $a1, -308($fp)
sw $a1, 16($a0)
lw $a0, -12($fp)
lw $a1, 16($a0)
sw $a1, -360($fp)
lw $a1, -360($fp)
li $a0, 1
beq $a1, $zero, isVoidd903fef3ce5c4d7f874ef7720a6855a9
li $a0, 0
isVoidd903fef3ce5c4d7f874ef7720a6855a9:
sw $a0, -364($fp)
lw $a0, -364($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_82
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -360($fp)
sw $a0, ($sp)
la $a0, Main_main_data_34
sw $a0, -372($fp)
lw $a3, -360($fp)
lw $t4, -372($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop934f31e0913b42d99302cf66497bff75:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoopaccacb0e88404aa5b5c304bb11536e2c:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse7c5d4c788363407a9a14dc5151917402
beqz $t1, returnTrue4b9374be2edd4ba0ab05b118b8823778
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoopaccacb0e88404aa5b5c304bb11536e2c
j returnTrue4b9374be2edd4ba0ab05b118b8823778
returnFalse7c5d4c788363407a9a14dc5151917402:
li $a0, 0
returnTrue4b9374be2edd4ba0ab05b118b8823778:
add $t0, $t0, 8
beqz $a0, tableLoop934f31e0913b42d99302cf66497bff75
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -368($fp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_Main_main_end_dispatch_label_83
label_Main_main_not_valid_dispatch_jump_82:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_83:
lw $a0, -368($fp)
lw $a1, 12($a0)
sw $a1, -368($fp)
lw $a0, -368($fp)
li $v0, 1
syscall
lw $a0, -12($fp)
sw $a0, -368($fp)
sw $a0, -368($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_String
sw $v0, -380($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
la $a0, Main_main_data_35
sw $a0, -376($fp)
lw $a0, -380($fp)
lw $a1, -376($fp)
sw $a1, 12($a0)
lw $a0, -380($fp)
lw $a1, 12($a0)
sw $a1, -380($fp)
lw $a0, -380($fp)
li $v0, 4
syscall
lw $a0, -12($fp)
sw $a0, -380($fp)
sw $a0, -380($fp)
lw $a0, -12($fp)
lw $a1, 16($a0)
sw $a1, -384($fp)
lw $a1, -384($fp)
li $a0, 1
beq $a1, $zero, isVoid62a9238b4b464926a28afe1393e6f0fd
li $a0, 0
isVoid62a9238b4b464926a28afe1393e6f0fd:
sw $a0, -388($fp)
lw $a0, -388($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_84
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -392($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 5
sw $a0, -396($fp)
lw $a0, -392($fp)
lw $a1, -396($fp)
sw $a1, 12($a0)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -392($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -384($fp)
sw $a0, ($sp)
la $a0, Main_main_data_36
sw $a0, -404($fp)
lw $a3, -384($fp)
lw $t4, -404($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop3de074841dad44879408dc487c79fc23:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoopc3c04e55793e49b582aef3fd3822cd08:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalsebf4a3c421b374906b89e5c646db9570d
beqz $t1, returnTrue4c0fe2211d824ed4b157d237b96efc03
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoopc3c04e55793e49b582aef3fd3822cd08
j returnTrue4c0fe2211d824ed4b157d237b96efc03
returnFalsebf4a3c421b374906b89e5c646db9570d:
li $a0, 0
returnTrue4c0fe2211d824ed4b157d237b96efc03:
add $t0, $t0, 8
beqz $a0, tableLoop3de074841dad44879408dc487c79fc23
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -400($fp)
addu $sp, $sp, 8
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_Main_main_end_dispatch_label_85
label_Main_main_not_valid_dispatch_jump_84:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_85:
li $a0, 64
li $v0, 9
syscall
li $a0, 8
sw $a0, ($v0)
li $a0, 16
sw $a0, 4($v0)
la $a0, C_dispatch_table
sw $a0, 8($v0)
sw $v0, -412($fp)
jal init_C
sw $v0, -412($fp)
addu $sp, $sp, 0
lw $a0, -12($fp)
lw $a1, 16($a0)
sw $a1, -416($fp)
lw $a1, -416($fp)
li $a0, 1
beq $a1, $zero, isVoid51a70a53bacc4cd4a19c9b9e8cabe0db
li $a0, 0
isVoid51a70a53bacc4cd4a19c9b9e8cabe0db:
sw $a0, -420($fp)
lw $a0, -420($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_86
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -416($fp)
sw $a0, ($sp)
la $a0, Main_main_data_37
sw $a0, -428($fp)
lw $a3, -416($fp)
lw $t4, -428($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop5a485585f5e14e0388314b17379cd274:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop5ae78574c8d8464f85d2c324303d2fe2:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalsea015679ca7d04fcc83978a3b21abeccf
beqz $t1, returnTrue1e119e5a8ce7406594cf4a8f2fb181bf
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop5ae78574c8d8464f85d2c324303d2fe2
j returnTrue1e119e5a8ce7406594cf4a8f2fb181bf
returnFalsea015679ca7d04fcc83978a3b21abeccf:
li $a0, 0
returnTrue1e119e5a8ce7406594cf4a8f2fb181bf:
add $t0, $t0, 8
beqz $a0, tableLoop5a485585f5e14e0388314b17379cd274
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -424($fp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_Main_main_end_dispatch_label_87
label_Main_main_not_valid_dispatch_jump_86:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_87:
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -424($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -412($fp)
sw $a0, ($sp)
jal def_A_method5
sw $v0, -432($fp)
addu $sp, $sp, 8
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $a0, -432($fp)
sw $a0, -408($fp)
sw $a0, -408($fp)
lw $a0, -12($fp)
lw $a1, -408($fp)
sw $a1, 16($a0)
lw $a0, -12($fp)
lw $a1, 16($a0)
sw $a1, -436($fp)
lw $a1, -436($fp)
li $a0, 1
beq $a1, $zero, isVoidfacd8e14511a48ad8b3617b4b033ab92
li $a0, 0
isVoidfacd8e14511a48ad8b3617b4b033ab92:
sw $a0, -440($fp)
lw $a0, -440($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_88
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -436($fp)
sw $a0, ($sp)
la $a0, Main_main_data_38
sw $a0, -448($fp)
lw $a3, -436($fp)
lw $t4, -448($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoopf7ed26222f714c2db6ec73bd5038b2dd:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop266f80b85765421192a17cbfb5d1bf5e:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse5acd6ea574c34194bda81d1fd1f8684d
beqz $t1, returnTrue2e129f56630d4f3faba056a1d63a67e0
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop266f80b85765421192a17cbfb5d1bf5e
j returnTrue2e129f56630d4f3faba056a1d63a67e0
returnFalse5acd6ea574c34194bda81d1fd1f8684d:
li $a0, 0
returnTrue2e129f56630d4f3faba056a1d63a67e0:
add $t0, $t0, 8
beqz $a0, tableLoopf7ed26222f714c2db6ec73bd5038b2dd
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -444($fp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_Main_main_end_dispatch_label_89
label_Main_main_not_valid_dispatch_jump_88:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_89:
lw $a0, -444($fp)
lw $a1, 12($a0)
sw $a1, -444($fp)
lw $a0, -444($fp)
li $v0, 1
syscall
lw $a0, -12($fp)
sw $a0, -444($fp)
sw $a0, -444($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_String
sw $v0, -456($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
la $a0, Main_main_data_39
sw $a0, -452($fp)
lw $a0, -456($fp)
lw $a1, -452($fp)
sw $a1, 12($a0)
lw $a0, -456($fp)
lw $a1, 12($a0)
sw $a1, -456($fp)
lw $a0, -456($fp)
li $v0, 4
syscall
lw $a0, -12($fp)
sw $a0, -456($fp)
sw $a0, -456($fp)
lw $a0, -12($fp)
lw $a1, 16($a0)
sw $a1, -460($fp)
lw $a1, -460($fp)
li $a0, 1
beq $a1, $zero, isVoid0fe257698d024ed190417bf9fecc4d67
li $a0, 0
isVoid0fe257698d024ed190417bf9fecc4d67:
sw $a0, -464($fp)
lw $a0, -464($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_90
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_Int
sw $v0, -468($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
li $a0, 6
sw $a0, -472($fp)
lw $a0, -468($fp)
lw $a1, -472($fp)
sw $a1, 12($a0)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -468($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -460($fp)
sw $a0, ($sp)
la $a0, Main_main_data_40
sw $a0, -480($fp)
lw $a3, -460($fp)
lw $t4, -480($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoopb59cc2cd358e429b9c58f42e429b31d4:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoopf3111481c6744a60858d3ab8d83ac6c2:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalsea6bb4f1c44d541488484fe9287e67b66
beqz $t1, returnTrue07d6885ce9854f64815aa1fa82c88f64
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoopf3111481c6744a60858d3ab8d83ac6c2
j returnTrue07d6885ce9854f64815aa1fa82c88f64
returnFalsea6bb4f1c44d541488484fe9287e67b66:
li $a0, 0
returnTrue07d6885ce9854f64815aa1fa82c88f64:
add $t0, $t0, 8
beqz $a0, tableLoopb59cc2cd358e429b9c58f42e429b31d4
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -476($fp)
addu $sp, $sp, 8
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_Main_main_end_dispatch_label_91
label_Main_main_not_valid_dispatch_jump_90:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_91:
li $a0, 64
li $v0, 9
syscall
li $a0, 8
sw $a0, ($v0)
li $a0, 16
sw $a0, 4($v0)
la $a0, C_dispatch_table
sw $a0, 8($v0)
sw $v0, -488($fp)
jal init_C
sw $v0, -488($fp)
addu $sp, $sp, 0
lw $a0, -12($fp)
lw $a1, 16($a0)
sw $a1, -492($fp)
lw $a1, -492($fp)
li $a0, 1
beq $a1, $zero, isVoid5c28da82d11d4cb0a52c18d75910c747
li $a0, 0
isVoid5c28da82d11d4cb0a52c18d75910c747:
sw $a0, -496($fp)
lw $a0, -496($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_92
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -492($fp)
sw $a0, ($sp)
la $a0, Main_main_data_41
sw $a0, -504($fp)
lw $a3, -492($fp)
lw $t4, -504($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop3bdbc54e352b4ddfb3988c5a8eb3bcee:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop32a4fa8dc80f4a8d8c865cf5baa9fb4e:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalsee57593ffe58c49d6a016fa1609e9de0e
beqz $t1, returnTrued138d6e6cdd24d4cb620a0fd7675a62f
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop32a4fa8dc80f4a8d8c865cf5baa9fb4e
j returnTrued138d6e6cdd24d4cb620a0fd7675a62f
returnFalsee57593ffe58c49d6a016fa1609e9de0e:
li $a0, 0
returnTrued138d6e6cdd24d4cb620a0fd7675a62f:
add $t0, $t0, 8
beqz $a0, tableLoop3bdbc54e352b4ddfb3988c5a8eb3bcee
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -500($fp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_Main_main_end_dispatch_label_93
label_Main_main_not_valid_dispatch_jump_92:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_93:
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -500($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -488($fp)
sw $a0, ($sp)
jal def_B_method5
sw $v0, -508($fp)
addu $sp, $sp, 8
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
lw $a0, -508($fp)
sw $a0, -484($fp)
sw $a0, -484($fp)
lw $a0, -12($fp)
lw $a1, -484($fp)
sw $a1, 16($a0)
lw $a0, -12($fp)
lw $a1, 16($a0)
sw $a1, -512($fp)
lw $a1, -512($fp)
li $a0, 1
beq $a1, $zero, isVoidff3db98eeb234961a97657f77f50fe2c
li $a0, 0
isVoidff3db98eeb234961a97657f77f50fe2c:
sw $a0, -516($fp)
lw $a0, -516($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_94
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
subu $sp, $sp, 4
lw $a0, -512($fp)
sw $a0, ($sp)
la $a0, Main_main_data_42
sw $a0, -524($fp)
lw $a3, -512($fp)
lw $t4, -524($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop225475ff28e74787a992c8111a124215:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop7ee729cb7dbd43c883d9ad83e9563bde:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalseb650e8cd16fd4d41a5f16e2b82ee6ebc
beqz $t1, returnTrueeda1d32aaca843f2917aed1875b9f4c8
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop7ee729cb7dbd43c883d9ad83e9563bde
j returnTrueeda1d32aaca843f2917aed1875b9f4c8
returnFalseb650e8cd16fd4d41a5f16e2b82ee6ebc:
li $a0, 0
returnTrueeda1d32aaca843f2917aed1875b9f4c8:
add $t0, $t0, 8
beqz $a0, tableLoop225475ff28e74787a992c8111a124215
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -520($fp)
addu $sp, $sp, 4
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
j label_Main_main_end_dispatch_label_95
label_Main_main_not_valid_dispatch_jump_94:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_95:
lw $a0, -520($fp)
lw $a1, 12($a0)
sw $a1, -520($fp)
lw $a0, -520($fp)
li $v0, 1
syscall
lw $a0, -12($fp)
sw $a0, -520($fp)
sw $a0, -520($fp)
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $a0, ($sp)
subu $sp, $sp, 4
sw $a1, ($sp)
subu $sp, $sp, 4
sw $a2, ($sp)
subu $sp, $sp, 4
sw $a3, ($sp)
subu $sp, $sp, 4
sw $t0, ($sp)
subu $sp, $sp, 4
sw $t1, ($sp)
subu $sp, $sp, 4
sw $t2, ($sp)
subu $sp, $sp, 4
sw $t3, ($sp)
subu $sp, $sp, 4
sw $t4, ($sp)
jal init_String
sw $v0, -532($fp)
addu $sp, $sp, 0
lw $t4, ($sp)
addu $sp, $sp, 4
lw $t3, ($sp)
addu $sp, $sp, 4
lw $t2, ($sp)
addu $sp, $sp, 4
lw $t1, ($sp)
addu $sp, $sp, 4
lw $t0, ($sp)
addu $sp, $sp, 4
lw $a3, ($sp)
addu $sp, $sp, 4
lw $a2, ($sp)
addu $sp, $sp, 4
lw $a1, ($sp)
addu $sp, $sp, 4
lw $a0, ($sp)
addu $sp, $sp, 4
lw $ra, ($sp)
addu $sp, $sp, 4
la $a0, Main_main_data_43
sw $a0, -528($fp)
lw $a0, -532($fp)
lw $a1, -528($fp)
sw $a1, 12($a0)
lw $a0, -532($fp)
lw $a1, 12($a0)
sw $a1, -532($fp)
lw $a0, -532($fp)
li $v0, 4
syscall
lw $a0, -12($fp)
sw $a0, -532($fp)
sw $a0, -532($fp)
lw $a0, -532($fp)
sw $a0, -16($fp)
sw $a0, -16($fp)
lw $v0, -16($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

