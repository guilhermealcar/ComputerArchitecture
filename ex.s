.data

.text

main:
	li $t0, 0	#n=0
	li $t1, 10
	li $t2, 1

	WHILE:
		add $t0, $t0, $t2
		bne $t0, $t1, WHILE

	li $v0, 1
	add $a0, $zero, $t0
	syscall

	li $v0, 10
	syscall