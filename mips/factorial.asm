.data
empty_string: .asciiz ""
null_reference: .asciiz "ERROR: null ref exception"
zero_division: .asciiz "ERROR: division by zero not allowed"
main_prototype: .word 1, 3, Main_dispatch_table
inheritance_table: .word 0, 0, 1, 1, 1, 1, 1, 1, 5
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
Factorial_dispatch_table: .word factorial_ptr, def_Factorial_factorial, init_Object_ptr, init_Object, abort_ptr, def_Object_abort, type_name_ptr, def_Object_type_name, copy_ptr, def_Object_copy
factorial_ptr: .asciiz "factorial"
Fibonacci_dispatch_table: .word fibonacci_ptr, def_Fibonacci_fibonacci, init_Object_ptr, init_Object, abort_ptr, def_Object_abort, type_name_ptr, def_Object_type_name, copy_ptr, def_Object_copy
fibonacci_ptr: .asciiz "fibonacci"
Main_dispatch_table: .word main_ptr, def_Main_main, init_IO_ptr, init_IO, in_string_ptr, def_IO_in_string, in_int_ptr, def_IO_in_int, out_string_ptr, def_IO_out_string, out_int_ptr, def_IO_out_int
main_ptr: .asciiz "main"
Object_abort_data_0: .asciiz "Abort()"
Factorial_factorial_data_1: .asciiz "factorial"
Fibonacci_fibonacci_data_2: .asciiz "fibonacci"
Fibonacci_fibonacci_data_3: .asciiz "fibonacci"
Main_main_data_4: .asciiz "factorial"
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
loop9245b83a3b5049c1be94068004b6c83e:
lw $t2, ($a1)
beq $t1, $a0, brake081ab33c228a4f4c9d34de00635a7372
sw $t2,($t0)
add $a1, $a1, 4
add $t0, $t0, 4
add $t1, $t1, 1
j loop9245b83a3b5049c1be94068004b6c83e
brake081ab33c228a4f4c9d34de00635a7372:
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
loop316b55b616a54c008af7ddfe8eb74dd4:
lw $t2, ($a1)
beq $t1, $a0, brakec04b71876e064a8c854166fa5226871b
sw $t2,($t0)
add $a1, $a1, 4
add $t0, $t0, 4
add $t1, $t1, 1
j loop316b55b616a54c008af7ddfe8eb74dd4
brakec04b71876e064a8c854166fa5226871b:
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
lengthLoop406087ab73f94dbd9b0cb356b75b834e:
lb $t2, ($a1)
beq $t2, $zero, brakeLengthLoop33f0932331434148a2d3dd4e2e75ed68
add $a0, $a0, 1
add $a1, $a1, 1
j lengthLoop406087ab73f94dbd9b0cb356b75b834e
brakeLengthLoop33f0932331434148a2d3dd4e2e75ed68:
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
lengthLoop6312d02310814a6d9b36183e5e132ddd:
lb $t2, ($a1)
beq $t2, $zero, brakeLengthLoopb6faa5edf6d84121ae1196a8d3788412
add $a0, $a0, 1
add $a1, $a1, 1
j lengthLoop6312d02310814a6d9b36183e5e132ddd
brakeLengthLoopb6faa5edf6d84121ae1196a8d3788412:
sw $a0, -28($fp)
lw $a1, -16($fp)
li $a0, 0
lengthLoop9ee32c54dac14e16b590e90f0a5bf792:
lb $t2, ($a1)
beq $t2, $zero, brakeLengthLoopd821eb614d2c4b40959d9fd5a54c748c
add $a0, $a0, 1
add $a1, $a1, 1
j lengthLoop9ee32c54dac14e16b590e90f0a5bf792
brakeLengthLoopd821eb614d2c4b40959d9fd5a54c748c:
sw $a0, -20($fp)
lw $a1, -24($fp)
lw $a0, -28($fp)
lw $t0, -20($fp)
add $a0, $a0, $t0
li $v0, 9
syscall
move $t0, $v0
loop7bbdaf64df404219ab2ae5b2c0b31ee2:
lb $t2, ($a1)
beq $t2, $zero, brake36f4f08da48c4c2cbeef4a2ada2af6ba
sb $t2,($t0)
add $a1, $a1, 1
add $t0, $t0, 1
j loop7bbdaf64df404219ab2ae5b2c0b31ee2
brake36f4f08da48c4c2cbeef4a2ada2af6ba:
lw $a1, -16($fp)
loop27874eac2b03b432a8ae90c6276313a32:
lb $t2, ($a1)
beq $t2, $zero, brake2e2537a7d79ce40e68a671d4f9f9651ae
sb $t2,($t0)
add $a1, $a1, 1
add $t0, $t0, 1
j loop27874eac2b03b432a8ae90c6276313a32
brake2e2537a7d79ce40e68a671d4f9f9651ae:
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
loopcddf30236f7e43fabcf6f8ebf2f19dd3:
lb $t2, ($a1)
beq $t2, $zero, brake0f17bd47d0804991897b785a13e3111b
beq $t1, $a0, brake0f17bd47d0804991897b785a13e3111b
sb $t2,($t0)
add $a1, $a1, 1
add $t1, $t1, 1
add $t0, $t0, 1
j loopcddf30236f7e43fabcf6f8ebf2f19dd3
brake0f17bd47d0804991897b785a13e3111b:
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
loopd16b3d2b83f644679b80fbe161305719:
lb $t2, ($a1)
beq $t2, $zero, brake171d14196ea9407e97f9ef960ac0e174
beq $t1, $a0, brake171d14196ea9407e97f9ef960ac0e174
sb $t2,($t0)
add $a1, $a1, 1
add $t1, $t1, 1
add $t0, $t0, 1
j loopd16b3d2b83f644679b80fbe161305719
brake171d14196ea9407e97f9ef960ac0e174:
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

.globl init_Factorial
init_Factorial:
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
la $a0, Factorial_dispatch_table
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

.globl def_Factorial_factorial
def_Factorial_factorial:
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
lw $a0, -16($fp)
sw $a0, -36($fp)
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
li $a0, 0
sw $a0, -44($fp)
lw $a0, -40($fp)
lw $a1, -44($fp)
sw $a1, 12($a0)
lw $a0, -36($fp)
lw $a1, 12($a0)
sw $a1, -36($fp)
lw $a0, -40($fp)
lw $a1, 12($a0)
sw $a1, -40($fp)
lw $a0, -36($fp)
lw $a1, -40($fp)
sub $a0, $a0, $a1
sw $a0, -32($fp)
lw $a1, -32($fp)
li $a0, 1
beqz $a1, returnTrue881046fa65714a4b991a19bc7edd6ad2
li $a0, 0
returnTrue881046fa65714a4b991a19bc7edd6ad2:
sw $a0, -32($fp)
li $a0, 16
li $v0, 9
syscall
li $a0, 3
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, Bool_dispatch_table
sw $a0, 8($v0)
sw $v0, -48($fp)
lw $a0, -48($fp)
lw $a1, -32($fp)
sw $a1, 12($a0)
lw $a0, -48($fp)
lw $a1, 12($a0)
sw $a1, -48($fp)
lw $a0, -48($fp)
bne $a0, $zero, label_Factorial_factorial_if_0
lw $a0, -16($fp)
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
li $a0, 1
sw $a0, -68($fp)
lw $a0, -64($fp)
lw $a1, -68($fp)
sw $a1, 12($a0)
lw $a0, -60($fp)
lw $a1, 12($a0)
sw $a1, -60($fp)
lw $a0, -64($fp)
lw $a1, 12($a0)
sw $a1, -64($fp)
lw $a0, -60($fp)
lw $a1, -64($fp)
sub $a0, $a0, $a1
sw $a0, -56($fp)
lw $a1, -56($fp)
li $a0, 1
beqz $a1, returnTrue894c64fb55624be38dea5b42197a44d4
li $a0, 0
returnTrue894c64fb55624be38dea5b42197a44d4:
sw $a0, -56($fp)
li $a0, 16
li $v0, 9
syscall
li $a0, 3
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, Bool_dispatch_table
sw $a0, 8($v0)
sw $v0, -72($fp)
lw $a0, -72($fp)
lw $a1, -56($fp)
sw $a1, 12($a0)
lw $a0, -72($fp)
lw $a1, 12($a0)
sw $a1, -72($fp)
lw $a0, -72($fp)
bne $a0, $zero, label_Factorial_factorial_if_2
lw $a0, -16($fp)
sw $a0, -88($fp)
sw $a0, -88($fp)
lw $a1, -12($fp)
li $a0, 1
beq $a1, $zero, isVoid85d6680ce28f4faeb110f79f0e9c7800
li $a0, 0
isVoid85d6680ce28f4faeb110f79f0e9c7800:
sw $a0, -92($fp)
lw $a0, -92($fp)
bne $a0, $zero, label_Factorial_factorial_not_valid_dispatch_jump_4
lw $a0, -16($fp)
sw $a0, -104($fp)
sw $a0, -104($fp)
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
sw $v0, -108($fp)
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
sw $a0, -112($fp)
lw $a0, -108($fp)
lw $a1, -112($fp)
sw $a1, 12($a0)
lw $a0, -104($fp)
lw $a1, 12($a0)
sw $a1, -104($fp)
lw $a0, -108($fp)
lw $a1, 12($a0)
sw $a1, -108($fp)
lw $a0, -104($fp)
lw $a1, -108($fp)
sub $a0, $a0, $a1
sw $a0, -96($fp)
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
lw $a0, -100($fp)
lw $a1, -96($fp)
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
lw $a0, -100($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -12($fp)
sw $a0, ($sp)
la $a0, Factorial_factorial_data_1
sw $a0, -120($fp)
lw $a3, -12($fp)
lw $t4, -120($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop74a4d74ce43d4c7582894dcb30193e12:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop3a53d3d6a2974ee8a8cb3c3970c7114e:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalseaac6b11a227d42388b904ffb31dd04dd
beqz $t1, returnTrue4a91972a78f449ac94fc364348ca301d
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop3a53d3d6a2974ee8a8cb3c3970c7114e
j returnTrue4a91972a78f449ac94fc364348ca301d
returnFalseaac6b11a227d42388b904ffb31dd04dd:
li $a0, 0
returnTrue4a91972a78f449ac94fc364348ca301d:
add $t0, $t0, 8
beqz $a0, tableLoop74a4d74ce43d4c7582894dcb30193e12
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -116($fp)
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
j label_Factorial_factorial_end_dispatch_label_5
label_Factorial_factorial_not_valid_dispatch_jump_4:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Factorial_factorial_end_dispatch_label_5:
lw $a0, -88($fp)
lw $a1, 12($a0)
sw $a1, -88($fp)
lw $a0, -116($fp)
lw $a1, 12($a0)
sw $a1, -116($fp)
lw $a0, -88($fp)
lw $a1, -116($fp)
multu $a0, $a1
mflo $a0
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
jal init_Int
sw $v0, -84($fp)
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
lw $a0, -84($fp)
lw $a1, -80($fp)
sw $a1, 12($a0)
lw $a1, -84($fp)
lw $a0, 4($a1)
li $a2, 4
multu $a0, $a2
mflo $a0
li $v0, 9
syscall
move $t0, $v0
li $t1, 0
lw $a0, 4($a1)
loop7a18ae0df6a64a5294f6e90ca33b845a:
lw $t2, ($a1)
beq $t1, $a0, brake3fb9cb1c0395433aa4bdfd1a574d2a58
sw $t2,($t0)
add $a1, $a1, 4
add $t0, $t0, 4
add $t1, $t1, 1
j loop7a18ae0df6a64a5294f6e90ca33b845a
brake3fb9cb1c0395433aa4bdfd1a574d2a58:
sw $v0, -24($fp)
lw $a0, -24($fp)
sw $a0, -24($fp)
sw $a0, -24($fp)
lw $a0, -24($fp)
sw $a0, -52($fp)
sw $a0, -52($fp)
j label_Factorial_factorial_fi_3
label_Factorial_factorial_if_2:
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
li $a0, 1
sw $a0, -132($fp)
lw $a0, -128($fp)
lw $a1, -132($fp)
sw $a1, 12($a0)
lw $a1, -128($fp)
lw $a0, 4($a1)
li $a2, 4
multu $a0, $a2
mflo $a0
li $v0, 9
syscall
move $t0, $v0
li $t1, 0
lw $a0, 4($a1)
loopbcfa23f062e844ae9ed6e88ea4525769:
lw $t2, ($a1)
beq $t1, $a0, brake556f5594dbd3413bb893e0a3247a748a
sw $t2,($t0)
add $a1, $a1, 4
add $t0, $t0, 4
add $t1, $t1, 1
j loopbcfa23f062e844ae9ed6e88ea4525769
brake556f5594dbd3413bb893e0a3247a748a:
sw $v0, -24($fp)
lw $a0, -24($fp)
sw $a0, -24($fp)
sw $a0, -24($fp)
lw $a0, -24($fp)
sw $a0, -52($fp)
sw $a0, -52($fp)
label_Factorial_factorial_fi_3:
lw $a0, -52($fp)
sw $a0, -28($fp)
sw $a0, -28($fp)
j label_Factorial_factorial_fi_1
label_Factorial_factorial_if_0:
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
sw $v0, -140($fp)
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
sw $a0, -144($fp)
lw $a0, -140($fp)
lw $a1, -144($fp)
sw $a1, 12($a0)
lw $a1, -140($fp)
lw $a0, 4($a1)
li $a2, 4
multu $a0, $a2
mflo $a0
li $v0, 9
syscall
move $t0, $v0
li $t1, 0
lw $a0, 4($a1)
loopd241da98646649bc834c90574178c3e7:
lw $t2, ($a1)
beq $t1, $a0, braked50c62fef2e442999e40dbd6a35675ea
sw $t2,($t0)
add $a1, $a1, 4
add $t0, $t0, 4
add $t1, $t1, 1
j loopd241da98646649bc834c90574178c3e7
braked50c62fef2e442999e40dbd6a35675ea:
sw $v0, -24($fp)
lw $a0, -24($fp)
sw $a0, -24($fp)
sw $a0, -24($fp)
lw $a0, -24($fp)
sw $a0, -28($fp)
sw $a0, -28($fp)
label_Factorial_factorial_fi_1:
lw $a0, -28($fp)
sw $a0, -148($fp)
sw $a0, -148($fp)
lw $a0, -148($fp)
sw $a0, -20($fp)
sw $a0, -20($fp)
lw $v0, -20($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl init_Fibonacci
init_Fibonacci:
subu $sp, $sp, 4
sw $fp, ($sp)
addu $fp, $sp, 4
subu $sp, $sp, 4
sw $ra, ($sp)
subu $sp, $sp, 4
sw $zero, ($sp)
li $a0, 12
li $v0, 9
syscall
li $a0, 7
sw $a0, ($v0)
li $a0, 3
sw $a0, 4($v0)
la $a0, Fibonacci_dispatch_table
sw $a0, 8($v0)
sw $v0, -12($fp)
lw $v0, -12($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_Fibonacci_fibonacci
def_Fibonacci_fibonacci:
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
sw $a0, -36($fp)
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
li $a0, 1
sw $a0, -44($fp)
lw $a0, -40($fp)
lw $a1, -44($fp)
sw $a1, 12($a0)
lw $a0, -36($fp)
lw $a1, 12($a0)
sw $a1, -36($fp)
lw $a0, -40($fp)
lw $a1, 12($a0)
sw $a1, -40($fp)
lw $a0, -36($fp)
lw $a1, -40($fp)
sub $a0, $a0, $a1
sw $a0, -32($fp)
lw $a1, -32($fp)
li $a0, 1
beqz $a1, returnTrue782c7b24c1e34f7cadde1faf1694a6c8
li $a0, 0
returnTrue782c7b24c1e34f7cadde1faf1694a6c8:
sw $a0, -32($fp)
li $a0, 16
li $v0, 9
syscall
li $a0, 3
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, Bool_dispatch_table
sw $a0, 8($v0)
sw $v0, -48($fp)
lw $a0, -48($fp)
lw $a1, -32($fp)
sw $a1, 12($a0)
lw $a0, -48($fp)
lw $a1, 12($a0)
sw $a1, -48($fp)
lw $a0, -48($fp)
bne $a0, $zero, label_Fibonacci_fibonacci_if_6
lw $a0, -16($fp)
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
li $a0, 2
sw $a0, -68($fp)
lw $a0, -64($fp)
lw $a1, -68($fp)
sw $a1, 12($a0)
lw $a0, -60($fp)
lw $a1, 12($a0)
sw $a1, -60($fp)
lw $a0, -64($fp)
lw $a1, 12($a0)
sw $a1, -64($fp)
lw $a0, -60($fp)
lw $a1, -64($fp)
sub $a0, $a0, $a1
sw $a0, -56($fp)
lw $a1, -56($fp)
li $a0, 1
beqz $a1, returnTrue4e26c670305a4ae0b0e6ca61f9523dfa
li $a0, 0
returnTrue4e26c670305a4ae0b0e6ca61f9523dfa:
sw $a0, -56($fp)
li $a0, 16
li $v0, 9
syscall
li $a0, 3
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, Bool_dispatch_table
sw $a0, 8($v0)
sw $v0, -72($fp)
lw $a0, -72($fp)
lw $a1, -56($fp)
sw $a1, 12($a0)
lw $a0, -72($fp)
lw $a1, 12($a0)
sw $a1, -72($fp)
lw $a0, -72($fp)
bne $a0, $zero, label_Fibonacci_fibonacci_if_8
lw $a1, -12($fp)
li $a0, 1
beq $a1, $zero, isVoid48e2cda40cc54585ab4f45b3cfcd2587
li $a0, 0
isVoid48e2cda40cc54585ab4f45b3cfcd2587:
sw $a0, -88($fp)
lw $a0, -88($fp)
bne $a0, $zero, label_Fibonacci_fibonacci_not_valid_dispatch_jump_10
lw $a0, -16($fp)
sw $a0, -100($fp)
sw $a0, -100($fp)
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
li $a0, 1
sw $a0, -108($fp)
lw $a0, -104($fp)
lw $a1, -108($fp)
sw $a1, 12($a0)
lw $a0, -100($fp)
lw $a1, 12($a0)
sw $a1, -100($fp)
lw $a0, -104($fp)
lw $a1, 12($a0)
sw $a1, -104($fp)
lw $a0, -100($fp)
lw $a1, -104($fp)
sub $a0, $a0, $a1
sw $a0, -92($fp)
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
sw $v0, -96($fp)
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
lw $a0, -96($fp)
lw $a1, -92($fp)
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
lw $a0, -96($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -12($fp)
sw $a0, ($sp)
la $a0, Fibonacci_fibonacci_data_2
sw $a0, -116($fp)
lw $a3, -12($fp)
lw $t4, -116($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoopcc83e59599cc4e3bb379598074f1da2d:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoope8f666566e3a47c38d697f62cc366e96:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse8a7dc1be8d7b42d5840043c0c2513522
beqz $t1, returnTruea934dfa910f54796b489f684939399ea
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoope8f666566e3a47c38d697f62cc366e96
j returnTruea934dfa910f54796b489f684939399ea
returnFalse8a7dc1be8d7b42d5840043c0c2513522:
li $a0, 0
returnTruea934dfa910f54796b489f684939399ea:
add $t0, $t0, 8
beqz $a0, tableLoopcc83e59599cc4e3bb379598074f1da2d
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -112($fp)
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
j label_Fibonacci_fibonacci_end_dispatch_label_11
label_Fibonacci_fibonacci_not_valid_dispatch_jump_10:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Fibonacci_fibonacci_end_dispatch_label_11:
lw $a1, -12($fp)
li $a0, 1
beq $a1, $zero, isVoiddaca282f8f0b4848892f4dcdb590c24c
li $a0, 0
isVoiddaca282f8f0b4848892f4dcdb590c24c:
sw $a0, -120($fp)
lw $a0, -120($fp)
bne $a0, $zero, label_Fibonacci_fibonacci_not_valid_dispatch_jump_12
lw $a0, -16($fp)
sw $a0, -132($fp)
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
li $a0, 2
sw $a0, -140($fp)
lw $a0, -136($fp)
lw $a1, -140($fp)
sw $a1, 12($a0)
lw $a0, -132($fp)
lw $a1, 12($a0)
sw $a1, -132($fp)
lw $a0, -136($fp)
lw $a1, 12($a0)
sw $a1, -136($fp)
lw $a0, -132($fp)
lw $a1, -136($fp)
sub $a0, $a0, $a1
sw $a0, -124($fp)
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
lw $a0, -128($fp)
lw $a1, -124($fp)
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
lw $a0, -12($fp)
sw $a0, ($sp)
la $a0, Fibonacci_fibonacci_data_3
sw $a0, -148($fp)
lw $a3, -12($fp)
lw $t4, -148($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop2d70943e072f4526a235cc8d1e2e70f8:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoopc2ffaedf61f2451bb4ab045e82c55135:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse0b7b8a7e0f674bc38b9958ac72ba0d20
beqz $t1, returnTruee459872bd3634b758c00c12f5d50c3cf
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoopc2ffaedf61f2451bb4ab045e82c55135
j returnTruee459872bd3634b758c00c12f5d50c3cf
returnFalse0b7b8a7e0f674bc38b9958ac72ba0d20:
li $a0, 0
returnTruee459872bd3634b758c00c12f5d50c3cf:
add $t0, $t0, 8
beqz $a0, tableLoop2d70943e072f4526a235cc8d1e2e70f8
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -144($fp)
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
j label_Fibonacci_fibonacci_end_dispatch_label_13
label_Fibonacci_fibonacci_not_valid_dispatch_jump_12:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Fibonacci_fibonacci_end_dispatch_label_13:
lw $a0, -112($fp)
lw $a1, 12($a0)
sw $a1, -112($fp)
lw $a0, -144($fp)
lw $a1, 12($a0)
sw $a1, -144($fp)
lw $a0, -112($fp)
lw $a1, -144($fp)
add $a0, $a0, $a1
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
jal init_Int
sw $v0, -84($fp)
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
lw $a0, -84($fp)
lw $a1, -80($fp)
sw $a1, 12($a0)
lw $a1, -84($fp)
lw $a0, 4($a1)
li $a2, 4
multu $a0, $a2
mflo $a0
li $v0, 9
syscall
move $t0, $v0
li $t1, 0
lw $a0, 4($a1)
loop5a8107dd0e7e49448109018a92ec3ed2:
lw $t2, ($a1)
beq $t1, $a0, brakea454192302b44f3594903564fdbc4ab5
sw $t2,($t0)
add $a1, $a1, 4
add $t0, $t0, 4
add $t1, $t1, 1
j loop5a8107dd0e7e49448109018a92ec3ed2
brakea454192302b44f3594903564fdbc4ab5:
sw $v0, -24($fp)
lw $a0, -24($fp)
sw $a0, -24($fp)
sw $a0, -24($fp)
lw $a0, -24($fp)
sw $a0, -52($fp)
sw $a0, -52($fp)
j label_Fibonacci_fibonacci_fi_9
label_Fibonacci_fibonacci_if_8:
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
sw $v0, -156($fp)
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
sw $a0, -160($fp)
lw $a0, -156($fp)
lw $a1, -160($fp)
sw $a1, 12($a0)
lw $a1, -156($fp)
lw $a0, 4($a1)
li $a2, 4
multu $a0, $a2
mflo $a0
li $v0, 9
syscall
move $t0, $v0
li $t1, 0
lw $a0, 4($a1)
loop5dd52425484d43c2b244fe348c596ac0:
lw $t2, ($a1)
beq $t1, $a0, brakefc313e7f4dff411f8ee0584dfc746588
sw $t2,($t0)
add $a1, $a1, 4
add $t0, $t0, 4
add $t1, $t1, 1
j loop5dd52425484d43c2b244fe348c596ac0
brakefc313e7f4dff411f8ee0584dfc746588:
sw $v0, -24($fp)
lw $a0, -24($fp)
sw $a0, -24($fp)
sw $a0, -24($fp)
lw $a0, -24($fp)
sw $a0, -52($fp)
sw $a0, -52($fp)
label_Fibonacci_fibonacci_fi_9:
lw $a0, -52($fp)
sw $a0, -28($fp)
sw $a0, -28($fp)
j label_Fibonacci_fibonacci_fi_7
label_Fibonacci_fibonacci_if_6:
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
li $a0, 1
sw $a0, -172($fp)
lw $a0, -168($fp)
lw $a1, -172($fp)
sw $a1, 12($a0)
lw $a1, -168($fp)
lw $a0, 4($a1)
li $a2, 4
multu $a0, $a2
mflo $a0
li $v0, 9
syscall
move $t0, $v0
li $t1, 0
lw $a0, 4($a1)
loopc6b7a211f02147d7b93b14c6f96d2d32:
lw $t2, ($a1)
beq $t1, $a0, braked46f3d0b81dd4b10afc70986669f1fce
sw $t2,($t0)
add $a1, $a1, 4
add $t0, $t0, 4
add $t1, $t1, 1
j loopc6b7a211f02147d7b93b14c6f96d2d32
braked46f3d0b81dd4b10afc70986669f1fce:
sw $v0, -24($fp)
lw $a0, -24($fp)
sw $a0, -24($fp)
sw $a0, -24($fp)
lw $a0, -24($fp)
sw $a0, -28($fp)
sw $a0, -28($fp)
label_Fibonacci_fibonacci_fi_7:
lw $a0, -28($fp)
sw $a0, -176($fp)
sw $a0, -176($fp)
lw $a0, -176($fp)
sw $a0, -20($fp)
sw $a0, -20($fp)
lw $v0, -20($fp)
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
li $a0, 24
li $v0, 9
syscall
li $a0, 8
sw $a0, ($v0)
li $a0, 6
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
li $a0, 7
sw $a0, -20($fp)
lw $a0, -16($fp)
lw $a1, -20($fp)
sw $a1, 12($a0)
lw $a0, -12($fp)
lw $a1, -16($fp)
sw $a1, 12($a0)
li $a0, 0
sw $a0, -28($fp)
lw $a0, -12($fp)
lw $a1, -28($fp)
sw $a1, 16($a0)
li $a0, 0
sw $a0, -36($fp)
lw $a0, -12($fp)
lw $a1, -36($fp)
sw $a1, 20($a0)
lw $v0, -12($fp)
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
lw $a0, 0($fp)
sw $a0, -12($fp)
li $a0, 64
li $v0, 9
syscall
li $a0, 6
sw $a0, ($v0)
li $a0, 16
sw $a0, 4($v0)
la $a0, Factorial_dispatch_table
sw $a0, 8($v0)
sw $v0, -24($fp)
jal init_Factorial
sw $v0, -24($fp)
addu $sp, $sp, 0
lw $a0, -24($fp)
sw $a0, -20($fp)
sw $a0, -20($fp)
lw $a0, -12($fp)
lw $a1, -20($fp)
sw $a1, 16($a0)
li $a0, 48
li $v0, 9
syscall
li $a0, 7
sw $a0, ($v0)
li $a0, 12
sw $a0, 4($v0)
la $a0, Fibonacci_dispatch_table
sw $a0, 8($v0)
sw $v0, -32($fp)
jal init_Fibonacci
sw $v0, -32($fp)
addu $sp, $sp, 0
lw $a0, -32($fp)
sw $a0, -28($fp)
sw $a0, -28($fp)
lw $a0, -12($fp)
lw $a1, -28($fp)
sw $a1, 20($a0)
lw $a0, -12($fp)
lw $a1, 16($a0)
sw $a1, -36($fp)
lw $a1, -36($fp)
li $a0, 1
beq $a1, $zero, isVoidb07f4a06c3e343bb8aeaddad19b58de4
li $a0, 0
isVoidb07f4a06c3e343bb8aeaddad19b58de4:
sw $a0, -40($fp)
lw $a0, -40($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_14
lw $a0, -12($fp)
lw $a1, 12($a0)
sw $a1, -44($fp)
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
lw $a0, -44($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -36($fp)
sw $a0, ($sp)
la $a0, Main_main_data_4
sw $a0, -52($fp)
lw $a3, -36($fp)
lw $t4, -52($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoopf1aabde104fe479a909dab2e4be48ee1:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoopc39827e2a03240dcb9a932da3ff9edca:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse2514bd6c526d445bb83806368d464125
beqz $t1, returnTruebcea8a80d1ee42048a8faa504c0a699b
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoopc39827e2a03240dcb9a932da3ff9edca
j returnTruebcea8a80d1ee42048a8faa504c0a699b
returnFalse2514bd6c526d445bb83806368d464125:
li $a0, 0
returnTruebcea8a80d1ee42048a8faa504c0a699b:
add $t0, $t0, 8
beqz $a0, tableLoopf1aabde104fe479a909dab2e4be48ee1
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -48($fp)
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
j label_Main_main_end_dispatch_label_15
label_Main_main_not_valid_dispatch_jump_14:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_15:
lw $a0, -48($fp)
lw $a1, 12($a0)
sw $a1, -48($fp)
lw $a0, -48($fp)
li $v0, 1
syscall
lw $a0, -12($fp)
sw $a0, -48($fp)
sw $a0, -48($fp)
lw $a0, -12($fp)
sw $a0, -56($fp)
sw $a0, -56($fp)
lw $a0, -56($fp)
sw $a0, -16($fp)
sw $a0, -16($fp)
lw $v0, -16($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

