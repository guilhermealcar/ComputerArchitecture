

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


	addi $sp, $sp, -12
	sw $s0, 12($sp)
	sw $s1, 8($sp)
	sw $ra, 4($sp)


	move $s0, $zero           #s0 contador


while:


	lb $s1, 0($a0)

	beq $s1, $zero, sair
	addi $a0, $a0, 1
	addi $s0, $s0, 1	  

	j while

sair:
	move $v0, $s0


	lw $s0, 12($sp)
	lw $s1, 8($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 12

	jr $ra
	
	




	



