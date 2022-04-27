

.data

tx: .asciiz "Resultado "
barran: .asciiz "\n\n"

.text

main:

li $v0, 5
syscall



move $a0,$v0
move $v0, $zero


jal somador


move $t0, $v0

la $s0, tx
li $v0, 4 
move $a0,$s0
syscall

li $v0, 1 
move $a0,$t0
syscall

la $s0, barran
li $v0, 4 
move $a0,$s0
syscall

li $v0, 10 
syscall


somador:

addi $sp, $sp, -8
sw $ra, 8($sp)
sw $a0, 4($sp)


beq $a0, $zero, sair
addi $a0, $a0, -1

jal somador 


sair:

lw $ra, 8($sp)
lw $a0, 4($sp)
addi $sp, $sp, 8

add $v0, $v0, $a0


jr $ra
 

 
 
