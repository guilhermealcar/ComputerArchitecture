
.data

	x: .asciiz " "
	y: .asciiz "Hello World!\n\n"


.text

strcpy:

	la $s0, x 		# $s0 = &x
	la $s1, y 		# $s1 = &y
	li $s3, 0 		# $s3 == i

while:

	add $s5, $s3, $s0 	# $s5 = x[i]
	add $s6, $s3, $s1 	# $s6 = y[i]
	lb $s7, 0($s6)
	beq $s7, $zero, sair #Se chegar no fim da string, sai
	sb $s7, 0($s5)
	addi $s3, $s3, 1
	j while

sair:

	jr $ra

main:
	
	jal strcpy

	li $v0, 4
	la $a0, x
	syscall

	li $v0, 10
	syscall