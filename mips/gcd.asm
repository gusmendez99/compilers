.data
num_1: .asciiz "Enter the first number: "
num_2: .asciiz "Enter the second number: "

.text
.globl main
main:
    li $v0,4
    la $a0,num_1
    syscall
    
    li  $v0, 5
    syscall
    move $t0,$v0

    li $v0,4
    la $a0,num_2
    syscall

    li  $v0, 5
    syscall
    move $a1,$v0
    move $a0,$t0

    jal GCD

    add $a0,$v0,$zero 
    li $v0,1
    syscall
    li $v0, 10
    syscall

GCD:
    addi $sp, $sp, -12
    sw $ra, 0($sp)
    sw $s0, 4($sp)
    sw $s1, 8($sp)

    add $s0, $a0, $zero
    add $s1, $a1, $zero

    addi $t1, $zero, 0
    beq $s1, $t1, return

    add $a0, $zero, $s1
    div $s0, $s1
    mfhi $a1

    jal GCD
    
exitGCD:
    lw $ra, 0 ($sp)
    lw $s0, 4 ($sp)
    lw $s1, 8 ($sp)
    addi $sp,$sp , 12 
    jr $ra

return:
    add $v0, $zero, $s0 
    j exitGCD   
