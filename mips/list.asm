.data
empty_string: .asciiz ""
null_reference: .asciiz "ERROR: null ref exception"
zero_division: .asciiz "ERROR: division by zero not allowed"
main_prototype: .word 1, 3, Main_dispatch_table
inheritance_table: .word 0, 0, 1, 1, 1, 1, 1, 6, 5
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
List_dispatch_table: .word isNil_ptr, def_List_isNil, head_ptr, def_List_head, tail_ptr, def_List_tail, cons_ptr, def_List_cons, init_Object_ptr, init_Object, abort_ptr, def_Object_abort, type_name_ptr, def_Object_type_name, copy_ptr, def_Object_copy
isNil_ptr: .asciiz "isNil"
head_ptr: .asciiz "head"
tail_ptr: .asciiz "tail"
cons_ptr: .asciiz "cons"
Cons_dispatch_table: .word isNil_ptr, def_Cons_isNil, head_ptr, def_Cons_head, tail_ptr, def_Cons_tail, init_ptr, def_Cons_init, isNil_ptr, def_List_isNil, head_ptr, def_List_head, tail_ptr, def_List_tail, cons_ptr, def_List_cons, init_Object_ptr, init_Object, abort_ptr, def_Object_abort, type_name_ptr, def_Object_type_name, copy_ptr, def_Object_copy
init_ptr: .asciiz "init"
Main_dispatch_table: .word print_list_ptr, def_Main_print_list, main_ptr, def_Main_main, init_IO_ptr, init_IO, in_string_ptr, def_IO_in_string, in_int_ptr, def_IO_in_int, out_string_ptr, def_IO_out_string, out_int_ptr, def_IO_out_int
print_list_ptr: .asciiz "print_list"
main_ptr: .asciiz "main"
Object_abort_data_0: .asciiz "Abort()"
List_head_data_1: .asciiz "abort"
List_tail_data_2: .asciiz "abort"
List_cons_data_3: .asciiz "init"
Main_print_list_data_4: .asciiz "isNil"
Main_print_list_data_5: .asciiz "head"
Main_print_list_data_6: .asciiz " "
Main_print_list_data_7: .asciiz "tail"
Main_print_list_data_8: .asciiz "print_list"
Main_print_list_data_9: .asciiz "\n"
Main_main_data_10: .asciiz "cons"
Main_main_data_11: .asciiz "cons"
Main_main_data_12: .asciiz "cons"
Main_main_data_13: .asciiz "cons"
Main_main_data_14: .asciiz "cons"
Main_main_data_15: .asciiz "isNil"
Main_main_data_16: .asciiz "print_list"
Main_main_data_17: .asciiz "tail"
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
loop24c3d7362c464fba9c9d3f2e424efeae:
lw $t2, ($a1)
beq $t1, $a0, brake3bf6e7f288cf48d59898ea7e3c717d88
sw $t2,($t0)
add $a1, $a1, 4
add $t0, $t0, 4
add $t1, $t1, 1
j loop24c3d7362c464fba9c9d3f2e424efeae
brake3bf6e7f288cf48d59898ea7e3c717d88:
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
loop4aa953a0b1414811b5bd618479ce1cd9:
lw $t2, ($a1)
beq $t1, $a0, brakeb72ace6da96c419c8de252a5a9a12ec3
sw $t2,($t0)
add $a1, $a1, 4
add $t0, $t0, 4
add $t1, $t1, 1
j loop4aa953a0b1414811b5bd618479ce1cd9
brakeb72ace6da96c419c8de252a5a9a12ec3:
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
lengthLoopa5f41c1c128248c0965111a6c27cfd85:
lb $t2, ($a1)
beq $t2, $zero, brakeLengthLoopb81c10c761f3443f9303340a5b129d20
add $a0, $a0, 1
add $a1, $a1, 1
j lengthLoopa5f41c1c128248c0965111a6c27cfd85
brakeLengthLoopb81c10c761f3443f9303340a5b129d20:
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
lengthLoop32bc80351b3248218157ae8833093a14:
lb $t2, ($a1)
beq $t2, $zero, brakeLengthLoop1b9d93a4c3a545b98f124b329d223a43
add $a0, $a0, 1
add $a1, $a1, 1
j lengthLoop32bc80351b3248218157ae8833093a14
brakeLengthLoop1b9d93a4c3a545b98f124b329d223a43:
sw $a0, -28($fp)
lw $a1, -16($fp)
li $a0, 0
lengthLoop6f306eac49d148099fcd07a8a2b62eed:
lb $t2, ($a1)
beq $t2, $zero, brakeLengthLoopc467fe8b142747cdac38bc1005bd87d4
add $a0, $a0, 1
add $a1, $a1, 1
j lengthLoop6f306eac49d148099fcd07a8a2b62eed
brakeLengthLoopc467fe8b142747cdac38bc1005bd87d4:
sw $a0, -20($fp)
lw $a1, -24($fp)
lw $a0, -28($fp)
lw $t0, -20($fp)
add $a0, $a0, $t0
li $v0, 9
syscall
move $t0, $v0
loop340a3e5c6c964d649da65c66affdb7bd:
lb $t2, ($a1)
beq $t2, $zero, brake8c3ac554c323480d95180259e54553d2
sb $t2,($t0)
add $a1, $a1, 1
add $t0, $t0, 1
j loop340a3e5c6c964d649da65c66affdb7bd
brake8c3ac554c323480d95180259e54553d2:
lw $a1, -16($fp)
loop2a697d4ede07d47c2a989106284533f57:
lb $t2, ($a1)
beq $t2, $zero, brake21035e2d87be045caa9a1f17dbbed6919
sb $t2,($t0)
add $a1, $a1, 1
add $t0, $t0, 1
j loop2a697d4ede07d47c2a989106284533f57
brake21035e2d87be045caa9a1f17dbbed6919:
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
loop695acf13365b4ddfa6be432f93d99c0a:
lb $t2, ($a1)
beq $t2, $zero, brakea9bf686e97e84ccca879e03416a2cb3b
beq $t1, $a0, brakea9bf686e97e84ccca879e03416a2cb3b
sb $t2,($t0)
add $a1, $a1, 1
add $t1, $t1, 1
add $t0, $t0, 1
j loop695acf13365b4ddfa6be432f93d99c0a
brakea9bf686e97e84ccca879e03416a2cb3b:
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
loopac5ab7843e904293a2f9007f9172dd44:
lb $t2, ($a1)
beq $t2, $zero, brakeeadcb93757644d14b4bda7104a088f4d
beq $t1, $a0, brakeeadcb93757644d14b4bda7104a088f4d
sb $t2,($t0)
add $a1, $a1, 1
add $t1, $t1, 1
add $t0, $t0, 1
j loopac5ab7843e904293a2f9007f9172dd44
brakeeadcb93757644d14b4bda7104a088f4d:
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

.globl init_List
init_List:
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
li $a0, 6
sw $a0, ($v0)
li $a0, 3
sw $a0, 4($v0)
la $a0, List_dispatch_table
sw $a0, 8($v0)
sw $v0, -12($fp)
lw $v0, -12($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_List_isNil
def_List_isNil:
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
li $a0, 1
sw $a0, -20($fp)
lw $a0, -16($fp)
lw $a1, -20($fp)
sw $a1, 12($a0)
lw $v0, -16($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_List_head
def_List_head:
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
lw $a0, 0($fp)
sw $a0, -12($fp)
lw $a1, -12($fp)
li $a0, 1
beq $a1, $zero, isVoid39f6304bafc64a0abe0a8ed985fa8460
li $a0, 0
isVoid39f6304bafc64a0abe0a8ed985fa8460:
sw $a0, -20($fp)
lw $a0, -20($fp)
bne $a0, $zero, label_List_head_not_valid_dispatch_jump_0
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
lw $a0, -12($fp)
sw $a0, ($sp)
la $a0, List_head_data_1
sw $a0, -28($fp)
lw $a3, -12($fp)
lw $t4, -28($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop91edf70d0ea243f58f0908ef5aab3fcb:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoopfad786821cac4bcd8ae07e7d7a71454a:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse2274cd1a30d9477f8c231c7de1bafd3c
beqz $t1, returnTrueefc2c40ed3f94b7e9a256181ae1a91ff
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoopfad786821cac4bcd8ae07e7d7a71454a
j returnTrueefc2c40ed3f94b7e9a256181ae1a91ff
returnFalse2274cd1a30d9477f8c231c7de1bafd3c:
li $a0, 0
returnTrueefc2c40ed3f94b7e9a256181ae1a91ff:
add $t0, $t0, 8
beqz $a0, tableLoop91edf70d0ea243f58f0908ef5aab3fcb
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -24($fp)
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
j label_List_head_end_dispatch_label_1
label_List_head_not_valid_dispatch_jump_0:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_List_head_end_dispatch_label_1:
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
li $a0, 0
sw $a0, -36($fp)
lw $a0, -32($fp)
lw $a1, -36($fp)
sw $a1, 12($a0)
lw $a0, -32($fp)
sw $a0, -16($fp)
sw $a0, -16($fp)
lw $v0, -16($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_List_tail
def_List_tail:
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
lw $a1, -12($fp)
li $a0, 1
beq $a1, $zero, isVoidfe5b26e4dd52447f94f07c9495d1352f
li $a0, 0
isVoidfe5b26e4dd52447f94f07c9495d1352f:
sw $a0, -20($fp)
lw $a0, -20($fp)
bne $a0, $zero, label_List_tail_not_valid_dispatch_jump_2
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
lw $a0, -12($fp)
sw $a0, ($sp)
la $a0, List_tail_data_2
sw $a0, -28($fp)
lw $a3, -12($fp)
lw $t4, -28($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoopb3ead0329375472ebe6023d583ab658b:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoope32966a707b04b4a9dc0c6fd18c82689:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse1debd65153da438e936b3b674bca50eb
beqz $t1, returnTruecc2e6c3ba5604f83a89d8e4c2cac14a4
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoope32966a707b04b4a9dc0c6fd18c82689
j returnTruecc2e6c3ba5604f83a89d8e4c2cac14a4
returnFalse1debd65153da438e936b3b674bca50eb:
li $a0, 0
returnTruecc2e6c3ba5604f83a89d8e4c2cac14a4:
add $t0, $t0, 8
beqz $a0, tableLoopb3ead0329375472ebe6023d583ab658b
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -24($fp)
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
j label_List_tail_end_dispatch_label_3
label_List_tail_not_valid_dispatch_jump_2:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_List_tail_end_dispatch_label_3:
lw $a0, -12($fp)
sw $a0, -32($fp)
sw $a0, -32($fp)
lw $a0, -32($fp)
sw $a0, -16($fp)
sw $a0, -16($fp)
lw $v0, -16($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_List_cons
def_List_cons:
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
lw $a0, 0($fp)
sw $a0, -12($fp)
lw $a0, 4($fp)
sw $a0, -16($fp)
li $a0, 80
li $v0, 9
syscall
li $a0, 7
sw $a0, ($v0)
li $a0, 20
sw $a0, 4($v0)
la $a0, Cons_dispatch_table
sw $a0, 8($v0)
sw $v0, -20($fp)
jal init_Cons
sw $v0, -20($fp)
addu $sp, $sp, 0
lw $a1, -20($fp)
li $a0, 1
beq $a1, $zero, isVoid72dd174f4ace4f338c1d507c9b699204
li $a0, 0
isVoid72dd174f4ace4f338c1d507c9b699204:
sw $a0, -24($fp)
lw $a0, -24($fp)
bne $a0, $zero, label_List_cons_not_valid_dispatch_jump_4
lw $a0, -16($fp)
sw $a0, -28($fp)
sw $a0, -28($fp)
lw $a0, -12($fp)
sw $a0, -32($fp)
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
subu $sp, $sp, 4
lw $a0, -32($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -28($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -20($fp)
sw $a0, ($sp)
la $a0, List_cons_data_3
sw $a0, -40($fp)
lw $a3, -20($fp)
lw $t4, -40($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop1cc60cb6b2dd4c349b885b10c6fd45d3:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoopc04c0a9997984a558b6f191ffd2c1cd4:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse5bf32388a634411a9c2b284798bbe44b
beqz $t1, returnTrue8e80452447eb48c2ab16d8612d9d217b
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoopc04c0a9997984a558b6f191ffd2c1cd4
j returnTrue8e80452447eb48c2ab16d8612d9d217b
returnFalse5bf32388a634411a9c2b284798bbe44b:
li $a0, 0
returnTrue8e80452447eb48c2ab16d8612d9d217b:
add $t0, $t0, 8
beqz $a0, tableLoop1cc60cb6b2dd4c349b885b10c6fd45d3
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -36($fp)
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
j label_List_cons_end_dispatch_label_5
label_List_cons_not_valid_dispatch_jump_4:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_List_cons_end_dispatch_label_5:
lw $v0, -36($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl init_Cons
init_Cons:
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
li $a0, 20
li $v0, 9
syscall
li $a0, 7
sw $a0, ($v0)
li $a0, 5
sw $a0, 4($v0)
la $a0, Cons_dispatch_table
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
lw $a0, -12($fp)
lw $a1, -16($fp)
sw $a1, 12($a0)
li $a0, 0
sw $a0, -24($fp)
lw $a0, -12($fp)
lw $a1, -24($fp)
sw $a1, 16($a0)
lw $v0, -12($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_Cons_isNil
def_Cons_isNil:
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
lw $v0, -16($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_Cons_head
def_Cons_head:
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

.globl def_Cons_tail
def_Cons_tail:
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
lw $a1, 16($a0)
sw $a1, -16($fp)
lw $v0, -16($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_Cons_init
def_Cons_init:
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
lw $a0, 0($fp)
sw $a0, -12($fp)
lw $a0, 4($fp)
sw $a0, -16($fp)
lw $a0, 8($fp)
sw $a0, -20($fp)
lw $a0, -16($fp)
sw $a0, -32($fp)
sw $a0, -32($fp)
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
loopbbd2ecb695294b11bcff26c1e2c0003b:
lw $t2, ($a1)
beq $t1, $a0, brakef5f16ac2e98744dea161ed6919c1bbd3
sw $t2,($t0)
add $a1, $a1, 4
add $t0, $t0, 4
add $t1, $t1, 1
j loopbbd2ecb695294b11bcff26c1e2c0003b
brakef5f16ac2e98744dea161ed6919c1bbd3:
sw $v0, -28($fp)
lw $a0, -12($fp)
lw $a1, -28($fp)
sw $a1, 12($a0)
lw $a0, -20($fp)
sw $a0, -40($fp)
sw $a0, -40($fp)
lw $a0, -40($fp)
sw $a0, -36($fp)
sw $a0, -36($fp)
lw $a0, -12($fp)
lw $a1, -36($fp)
sw $a1, 16($a0)
lw $a0, -12($fp)
sw $a0, -44($fp)
sw $a0, -44($fp)
lw $a0, -44($fp)
sw $a0, -24($fp)
sw $a0, -24($fp)
lw $v0, -24($fp)
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
li $a0, 16
li $v0, 9
syscall
li $a0, 8
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, Main_dispatch_table
sw $a0, 8($v0)
sw $v0, -12($fp)
li $a0, 0
sw $a0, -20($fp)
lw $a0, -12($fp)
lw $a1, -20($fp)
sw $a1, 12($a0)
lw $v0, -12($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

.globl def_Main_print_list
def_Main_print_list:
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
lw $a0, 0($fp)
sw $a0, -12($fp)
lw $a0, 4($fp)
sw $a0, -16($fp)
lw $a0, -16($fp)
sw $a0, -24($fp)
sw $a0, -24($fp)
lw $a1, -24($fp)
li $a0, 1
beq $a1, $zero, isVoid2be2883dccf241228f6d4be81bde370a
li $a0, 0
isVoid2be2883dccf241228f6d4be81bde370a:
sw $a0, -28($fp)
lw $a0, -28($fp)
bne $a0, $zero, label_Main_print_list_not_valid_dispatch_jump_6
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
lw $a0, -24($fp)
sw $a0, ($sp)
la $a0, Main_print_list_data_4
sw $a0, -36($fp)
lw $a3, -24($fp)
lw $t4, -36($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop3d863597e8144b0399cd285abd0eceaf:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop3dc97beb65f6412f96d2208122627222:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalseb38cfc25b24a49e0b9a3a12b53e57df8
beqz $t1, returnTrue78d511e03e7745bcbc7262086b3e2ec9
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop3dc97beb65f6412f96d2208122627222
j returnTrue78d511e03e7745bcbc7262086b3e2ec9
returnFalseb38cfc25b24a49e0b9a3a12b53e57df8:
li $a0, 0
returnTrue78d511e03e7745bcbc7262086b3e2ec9:
add $t0, $t0, 8
beqz $a0, tableLoop3d863597e8144b0399cd285abd0eceaf
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -32($fp)
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
j label_Main_print_list_end_dispatch_label_7
label_Main_print_list_not_valid_dispatch_jump_6:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_print_list_end_dispatch_label_7:
lw $a0, -32($fp)
lw $a1, 12($a0)
sw $a1, -32($fp)
lw $a0, -32($fp)
bne $a0, $zero, label_Main_print_list_if_8
lw $a0, -16($fp)
sw $a0, -44($fp)
sw $a0, -44($fp)
lw $a1, -44($fp)
li $a0, 1
beq $a1, $zero, isVoid352d151a7aff4b6aa2fa3e9f81c8aabd
li $a0, 0
isVoid352d151a7aff4b6aa2fa3e9f81c8aabd:
sw $a0, -48($fp)
lw $a0, -48($fp)
bne $a0, $zero, label_Main_print_list_not_valid_dispatch_jump_10
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
la $a0, Main_print_list_data_5
sw $a0, -56($fp)
lw $a3, -44($fp)
lw $t4, -56($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop4441399066a0440e888e62bd9c83787b:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop2b98d2158063469bb98cbad9cf66c165:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalsecee2cf8b2a46438384cbd632f9a77c12
beqz $t1, returnTrue1578edc249f946e59ba0a3f29da2bfef
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop2b98d2158063469bb98cbad9cf66c165
j returnTrue1578edc249f946e59ba0a3f29da2bfef
returnFalsecee2cf8b2a46438384cbd632f9a77c12:
li $a0, 0
returnTrue1578edc249f946e59ba0a3f29da2bfef:
add $t0, $t0, 8
beqz $a0, tableLoop4441399066a0440e888e62bd9c83787b
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -52($fp)
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
j label_Main_print_list_end_dispatch_label_11
label_Main_print_list_not_valid_dispatch_jump_10:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_print_list_end_dispatch_label_11:
lw $a0, -52($fp)
lw $a1, 12($a0)
sw $a1, -52($fp)
lw $a0, -52($fp)
li $v0, 1
syscall
lw $a0, -12($fp)
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
jal init_String
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
la $a0, Main_print_list_data_6
sw $a0, -60($fp)
lw $a0, -64($fp)
lw $a1, -60($fp)
sw $a1, 12($a0)
lw $a0, -64($fp)
lw $a1, 12($a0)
sw $a1, -64($fp)
lw $a0, -64($fp)
li $v0, 4
syscall
lw $a0, -12($fp)
sw $a0, -64($fp)
sw $a0, -64($fp)
lw $a1, -12($fp)
li $a0, 1
beq $a1, $zero, isVoid190a88443ac44e81b05c83c05df738bc
li $a0, 0
isVoid190a88443ac44e81b05c83c05df738bc:
sw $a0, -68($fp)
lw $a0, -68($fp)
bne $a0, $zero, label_Main_print_list_not_valid_dispatch_jump_12
lw $a0, -16($fp)
sw $a0, -72($fp)
sw $a0, -72($fp)
lw $a1, -72($fp)
li $a0, 1
beq $a1, $zero, isVoid4ffb29cdf6ad45398df0dfcd0354fb9f
li $a0, 0
isVoid4ffb29cdf6ad45398df0dfcd0354fb9f:
sw $a0, -76($fp)
lw $a0, -76($fp)
bne $a0, $zero, label_Main_print_list_not_valid_dispatch_jump_13
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
lw $a0, -72($fp)
sw $a0, ($sp)
la $a0, Main_print_list_data_7
sw $a0, -84($fp)
lw $a3, -72($fp)
lw $t4, -84($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop85d5d28a629d4d9d8c354be0482e6031:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop0c1860b559f746e9b255ac5920990516:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse356cdb8cf1d64fbaae6fdc24870f422c
beqz $t1, returnTrued0b7615e1ae849e292655b4257f04d99
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop0c1860b559f746e9b255ac5920990516
j returnTrued0b7615e1ae849e292655b4257f04d99
returnFalse356cdb8cf1d64fbaae6fdc24870f422c:
li $a0, 0
returnTrued0b7615e1ae849e292655b4257f04d99:
add $t0, $t0, 8
beqz $a0, tableLoop85d5d28a629d4d9d8c354be0482e6031
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -80($fp)
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
j label_Main_print_list_end_dispatch_label_14
label_Main_print_list_not_valid_dispatch_jump_13:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_print_list_end_dispatch_label_14:
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
lw $a0, -12($fp)
sw $a0, ($sp)
la $a0, Main_print_list_data_8
sw $a0, -92($fp)
lw $a3, -12($fp)
lw $t4, -92($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoopb26d34e3aff64af0aba49247cd999143:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop31814806fdb244b7ac43b4b0bf49a7ef:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalsee45ae99dc1ee4b9eac0c90df07f86f9c
beqz $t1, returnTruec847a0ee06b5473bac77e4e8a18f3fb0
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop31814806fdb244b7ac43b4b0bf49a7ef
j returnTruec847a0ee06b5473bac77e4e8a18f3fb0
returnFalsee45ae99dc1ee4b9eac0c90df07f86f9c:
li $a0, 0
returnTruec847a0ee06b5473bac77e4e8a18f3fb0:
add $t0, $t0, 8
beqz $a0, tableLoopb26d34e3aff64af0aba49247cd999143
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -88($fp)
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
j label_Main_print_list_end_dispatch_label_15
label_Main_print_list_not_valid_dispatch_jump_12:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_print_list_end_dispatch_label_15:
lw $a0, -88($fp)
sw $a0, -40($fp)
sw $a0, -40($fp)
lw $a0, -40($fp)
sw $a0, -20($fp)
sw $a0, -20($fp)
j label_Main_print_list_fi_9
label_Main_print_list_if_8:
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
la $a0, Main_print_list_data_9
sw $a0, -96($fp)
lw $a0, -100($fp)
lw $a1, -96($fp)
sw $a1, 12($a0)
lw $a0, -100($fp)
lw $a1, 12($a0)
sw $a1, -100($fp)
lw $a0, -100($fp)
li $v0, 4
syscall
lw $a0, -12($fp)
sw $a0, -100($fp)
sw $a0, -100($fp)
lw $a0, -100($fp)
sw $a0, -20($fp)
sw $a0, -20($fp)
label_Main_print_list_fi_9:
lw $v0, -20($fp)
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
lw $a0, 0($fp)
sw $a0, -12($fp)
li $a0, 48
li $v0, 9
syscall
li $a0, 6
sw $a0, ($v0)
li $a0, 12
sw $a0, 4($v0)
la $a0, List_dispatch_table
sw $a0, 8($v0)
sw $v0, -24($fp)
jal init_List
sw $v0, -24($fp)
addu $sp, $sp, 0
lw $a1, -24($fp)
li $a0, 1
beq $a1, $zero, isVoid7bfdd3060f7c4162b4d01e44dd69d828
li $a0, 0
isVoid7bfdd3060f7c4162b4d01e44dd69d828:
sw $a0, -28($fp)
lw $a0, -28($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_16
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
lw $a0, -32($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -24($fp)
sw $a0, ($sp)
la $a0, Main_main_data_10
sw $a0, -44($fp)
lw $a3, -24($fp)
lw $t4, -44($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop340d35bfdc8449ccb11e6c9ebc5b5e2c:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop9a5b8382d3944517aa8deea6e3b6df1f:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalsedbf5324ae5454bb9b2a96d94ab737aeb
beqz $t1, returnTrued6b05b8870ef447b9430d405e7233e17
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop9a5b8382d3944517aa8deea6e3b6df1f
j returnTrued6b05b8870ef447b9430d405e7233e17
returnFalsedbf5324ae5454bb9b2a96d94ab737aeb:
li $a0, 0
returnTrued6b05b8870ef447b9430d405e7233e17:
add $t0, $t0, 8
beqz $a0, tableLoop340d35bfdc8449ccb11e6c9ebc5b5e2c
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -40($fp)
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
j label_Main_main_end_dispatch_label_17
label_Main_main_not_valid_dispatch_jump_16:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_17:
lw $a1, -40($fp)
li $a0, 1
beq $a1, $zero, isVoidef387d00624c4886a02a9d702687585b
li $a0, 0
isVoidef387d00624c4886a02a9d702687585b:
sw $a0, -48($fp)
lw $a0, -48($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_18
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
sw $v0, -52($fp)
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
sw $a0, -56($fp)
lw $a0, -52($fp)
lw $a1, -56($fp)
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
lw $a0, -52($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -40($fp)
sw $a0, ($sp)
la $a0, Main_main_data_11
sw $a0, -64($fp)
lw $a3, -40($fp)
lw $t4, -64($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop7498119e40eb49bc8d0d60c60063b100:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop4b74f853936349b1b016f69ec1342a41:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalsef910ea7a6b8741158e7a7d069e746e47
beqz $t1, returnTrue0503e9c68dbc4d37aecd80226b58b403
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop4b74f853936349b1b016f69ec1342a41
j returnTrue0503e9c68dbc4d37aecd80226b58b403
returnFalsef910ea7a6b8741158e7a7d069e746e47:
li $a0, 0
returnTrue0503e9c68dbc4d37aecd80226b58b403:
add $t0, $t0, 8
beqz $a0, tableLoop7498119e40eb49bc8d0d60c60063b100
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
j label_Main_main_end_dispatch_label_19
label_Main_main_not_valid_dispatch_jump_18:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_19:
lw $a1, -60($fp)
li $a0, 1
beq $a1, $zero, isVoidb8c8d418c8524811866ab16dd5d1b5fd
li $a0, 0
isVoidb8c8d418c8524811866ab16dd5d1b5fd:
sw $a0, -68($fp)
lw $a0, -68($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_20
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
sw $v0, -72($fp)
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
sw $a0, -76($fp)
lw $a0, -72($fp)
lw $a1, -76($fp)
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
lw $a0, -72($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -60($fp)
sw $a0, ($sp)
la $a0, Main_main_data_12
sw $a0, -84($fp)
lw $a3, -60($fp)
lw $t4, -84($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop9eb187631f33498a9a98e9ea4d8ace43:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop07c86f0c84c34324ac5969bb328abc5f:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalsec3391d0adcbc46f9aaede92a8ffcda3d
beqz $t1, returnTruefbdb188389b44950a3239d2de54b1d31
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop07c86f0c84c34324ac5969bb328abc5f
j returnTruefbdb188389b44950a3239d2de54b1d31
returnFalsec3391d0adcbc46f9aaede92a8ffcda3d:
li $a0, 0
returnTruefbdb188389b44950a3239d2de54b1d31:
add $t0, $t0, 8
beqz $a0, tableLoop9eb187631f33498a9a98e9ea4d8ace43
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -80($fp)
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
j label_Main_main_end_dispatch_label_21
label_Main_main_not_valid_dispatch_jump_20:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_21:
lw $a1, -80($fp)
li $a0, 1
beq $a1, $zero, isVoid98ca8f24a70b4f33a9de0d18013d9b42
li $a0, 0
isVoid98ca8f24a70b4f33a9de0d18013d9b42:
sw $a0, -88($fp)
lw $a0, -88($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_22
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
li $a0, 4
sw $a0, -96($fp)
lw $a0, -92($fp)
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
lw $a0, -92($fp)
sw $a0, ($sp)
subu $sp, $sp, 4
lw $a0, -80($fp)
sw $a0, ($sp)
la $a0, Main_main_data_13
sw $a0, -104($fp)
lw $a3, -80($fp)
lw $t4, -104($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoopdb99245ef1bd47b6a121b23b76bf5aec:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop01f78a941a13491496c2bbe582f677f8:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse308bc7a9c3a04b0fad629154fb3973cf
beqz $t1, returnTrue696a32cbf78c46238cea9822824b5d64
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop01f78a941a13491496c2bbe582f677f8
j returnTrue696a32cbf78c46238cea9822824b5d64
returnFalse308bc7a9c3a04b0fad629154fb3973cf:
li $a0, 0
returnTrue696a32cbf78c46238cea9822824b5d64:
add $t0, $t0, 8
beqz $a0, tableLoopdb99245ef1bd47b6a121b23b76bf5aec
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -100($fp)
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
j label_Main_main_end_dispatch_label_23
label_Main_main_not_valid_dispatch_jump_22:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_23:
lw $a1, -100($fp)
li $a0, 1
beq $a1, $zero, isVoid9f95ea0365744de2a6633dfd9fbfc819
li $a0, 0
isVoid9f95ea0365744de2a6633dfd9fbfc819:
sw $a0, -108($fp)
lw $a0, -108($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_24
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
li $a0, 5
sw $a0, -116($fp)
lw $a0, -112($fp)
lw $a1, -116($fp)
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
lw $a0, -100($fp)
sw $a0, ($sp)
la $a0, Main_main_data_14
sw $a0, -124($fp)
lw $a3, -100($fp)
lw $t4, -124($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoopa000b2e5b4f545609eb8c9574d0bf1b2:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop1af02f2e3ed2416eb02f06c52245c338:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse2d346084ee43453eb47e52462816de1e
beqz $t1, returnTrue068a96f37e464fe7b9be69f5cb140ded
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop1af02f2e3ed2416eb02f06c52245c338
j returnTrue068a96f37e464fe7b9be69f5cb140ded
returnFalse2d346084ee43453eb47e52462816de1e:
li $a0, 0
returnTrue068a96f37e464fe7b9be69f5cb140ded:
add $t0, $t0, 8
beqz $a0, tableLoopa000b2e5b4f545609eb8c9574d0bf1b2
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -120($fp)
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
j label_Main_main_end_dispatch_label_25
label_Main_main_not_valid_dispatch_jump_24:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_25:
lw $a0, -120($fp)
sw $a0, -20($fp)
sw $a0, -20($fp)
lw $a0, -12($fp)
lw $a1, -20($fp)
sw $a1, 12($a0)
label_Main_main_while_26_26:
lw $a0, -12($fp)
lw $a1, 12($a0)
sw $a1, -128($fp)
lw $a1, -128($fp)
li $a0, 1
beq $a1, $zero, isVoid876a71533cc2480dae31ca8bf75322bd
li $a0, 0
isVoid876a71533cc2480dae31ca8bf75322bd:
sw $a0, -132($fp)
lw $a0, -132($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_30
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
la $a0, Main_main_data_15
sw $a0, -140($fp)
lw $a3, -128($fp)
lw $t4, -140($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop8d0b9cf96d6842e8aaecff7a2ac051d6:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop562639bc18654c75bf10c455a726140c:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse7188256286e245948da056977eef4726
beqz $t1, returnTruead6aaa8bc6e54f42922b6279cda68f8f
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop562639bc18654c75bf10c455a726140c
j returnTruead6aaa8bc6e54f42922b6279cda68f8f
returnFalse7188256286e245948da056977eef4726:
li $a0, 0
returnTruead6aaa8bc6e54f42922b6279cda68f8f:
add $t0, $t0, 8
beqz $a0, tableLoop8d0b9cf96d6842e8aaecff7a2ac051d6
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -136($fp)
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
j label_Main_main_end_dispatch_label_31
label_Main_main_not_valid_dispatch_jump_30:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_31:
lw $a0, -136($fp)
lw $a1, 12($a0)
sw $a1, -136($fp)
li $a0, 1
sw $a0, -144($fp)
lw $a0, -144($fp)
lw $a1, -136($fp)
sub $a0, $a0, $a1
sw $a0, -144($fp)
li $a0, 16
li $v0, 9
syscall
li $a0, 3
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, Bool_dispatch_table
sw $a0, 8($v0)
sw $v0, -136($fp)
lw $a0, -136($fp)
lw $a1, -144($fp)
sw $a1, 12($a0)
lw $a0, -136($fp)
lw $a1, 12($a0)
sw $a1, -136($fp)
lw $a0, -136($fp)
bne $a0, $zero, label_Main_main_loop_27_27
j label_Main_main_pool_28_28
label_Main_main_loop_27_27:
lw $a1, -12($fp)
li $a0, 1
beq $a1, $zero, isVoidba2f2f57fbb3490b8e98ae2f304172a5
li $a0, 0
isVoidba2f2f57fbb3490b8e98ae2f304172a5:
sw $a0, -152($fp)
lw $a0, -152($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_32
lw $a0, -12($fp)
lw $a1, 12($a0)
sw $a1, -156($fp)
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
subu $sp, $sp, 4
lw $a0, -12($fp)
sw $a0, ($sp)
la $a0, Main_main_data_16
sw $a0, -164($fp)
lw $a3, -12($fp)
lw $t4, -164($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoope7774a2acb3d49099be82f5c8817ef4e:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop68ccea0f3c9842ff8f2b58a92709409d:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse86258bbe38db4d7ebe63f40305ba4861
beqz $t1, returnTruee1b92672c5a74c17a9bb8d5f85d513e5
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop68ccea0f3c9842ff8f2b58a92709409d
j returnTruee1b92672c5a74c17a9bb8d5f85d513e5
returnFalse86258bbe38db4d7ebe63f40305ba4861:
li $a0, 0
returnTruee1b92672c5a74c17a9bb8d5f85d513e5:
add $t0, $t0, 8
beqz $a0, tableLoope7774a2acb3d49099be82f5c8817ef4e
sub $a0, $t0, 4
add $a0, $a3, $a0
lw $a0, ($a0)
jalr $a0
sw $v0, -160($fp)
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
j label_Main_main_end_dispatch_label_33
label_Main_main_not_valid_dispatch_jump_32:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_33:
lw $a0, -12($fp)
lw $a1, 12($a0)
sw $a1, -172($fp)
lw $a1, -172($fp)
li $a0, 1
beq $a1, $zero, isVoid9a9f5e4669d941b099d352b6e57efa11
li $a0, 0
isVoid9a9f5e4669d941b099d352b6e57efa11:
sw $a0, -176($fp)
lw $a0, -176($fp)
bne $a0, $zero, label_Main_main_not_valid_dispatch_jump_34
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
la $a0, Main_main_data_17
sw $a0, -184($fp)
lw $a3, -172($fp)
lw $t4, -184($fp)
lw $a3, 8($a3)
li $t0, 0
tableLoop26ea6c24396a46f0b7ccd37ac0e8c8e9:
add $t3, $a3, $t0
lw $t3, ($t3)
move $a1, $t4
move $a2, $t3
li $a0, 1
compareLoop68f7da0343784add8a8e90dc4d463544:
lb $t1, ($a1)
lb $t2, ($a2)
bne $t1, $t2, returnFalse84671e4ab46540d7b6f8d096f8f50acd
beqz $t1, returnTruebd87df311e6e484797c2ed3869a47bd9
add $a1, $a1, 1
add $a2, $a2, 1
j compareLoop68f7da0343784add8a8e90dc4d463544
j returnTruebd87df311e6e484797c2ed3869a47bd9
returnFalse84671e4ab46540d7b6f8d096f8f50acd:
li $a0, 0
returnTruebd87df311e6e484797c2ed3869a47bd9:
add $t0, $t0, 8
beqz $a0, tableLoop26ea6c24396a46f0b7ccd37ac0e8c8e9
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
j label_Main_main_end_dispatch_label_35
label_Main_main_not_valid_dispatch_jump_34:
la $a0, null_reference
li $v0, 4
syscall
li $v0, 10
syscall
label_Main_main_end_dispatch_label_35:
lw $a0, -180($fp)
sw $a0, -168($fp)
sw $a0, -168($fp)
lw $a0, -12($fp)
lw $a1, -168($fp)
sw $a1, 12($a0)
lw $a0, -168($fp)
sw $a0, -148($fp)
sw $a0, -148($fp)
j label_Main_main_while_26_26
label_Main_main_pool_28_28:
li $a0, 16
li $v0, 9
syscall
li $a0, 1
sw $a0, ($v0)
li $a0, 4
sw $a0, 4($v0)
la $a0, Object_dispatch_table
sw $a0, 8($v0)
sw $v0, -188($fp)
lw $a0, -188($fp)
sw $a0, -16($fp)
sw $a0, -16($fp)
lw $v0, -16($fp)
move $sp, $fp
subu $a0, $sp, 4
lw $fp, ($a0)
subu $a0, $sp, 8
lw $ra, ($a0)
jr $ra

