

.data

	str1: .asciiz "teste1"



.text

main:

	la $a0, str1 

	jal strlen
	
	move $t0, $v0 

	li $v0, 1
	move $a0, $t0
	syscall

	li $v0, 10
	syscall


strlen:


	addi $sp, $sp, -16
	sw $s0, 16($sp)
	sw $s1, 12($sp)
	sw $s2, 8($sp)
	sw $ra, 4($sp)


	move $s0, $zero           #s0 contador


while:

	add $s1, $s0, $a0
	lb $s2, 0($s1)

	beq $s2, $zero, sair
	addi $s0, $s0, 1  

	j while

sair:
	move $v0, $s0


	lw $s0, 16($sp)
	lw $s1, 12($sp)
	lw $s2, 8($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 16

	jr $ra
	
	




	



