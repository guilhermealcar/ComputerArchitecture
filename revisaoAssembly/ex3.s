

.data

	str1: .asciiz "mimico"
	str2: .asciiz "mimic"

.text

main:


	la $a0,str1
	la $a1,str2

	jal strcmp
	
	move $t0, $v0
	
	li $v0, 1
	move $a0, $t0	
	syscall
	
	li $v0, 10
	syscall

	
strcmp:
  	addi $sp, $sp, -12
  	sw $s0, 12($sp)
  	sw $s1, 8($sp)
  	sw $ra, 4($sp)
  
	lb $s0, 0($a0) 
	lb $s1, 0($a1) 
	beq $s0, $zero, true 	
	bne $s0, $s1, false
	addi $a0, $a0, 1
	addi $a1, $a1, 1
	j strcmp		

false:

	li $v0, 1
	j sair
 
true:
	bne $s1, $zero, false
	li $v0, 0 
	j sair
	
sair:

	lw $s0, 12($sp)
  	lw $s1, 8($sp)
  	lw $ra, 4($sp)
  	addi $sp, $sp, 12
  	
	jr $ra	
	
