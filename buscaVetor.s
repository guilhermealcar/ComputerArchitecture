.data
	str: .asciiz "Valor nao encontrado \n"
	str2: .asciiz "Valor "
	str3: .asciiz " encontrado \n"

	bemvindo: .asciiz "Procure um valor no vetor: \n"
	vetor: .word 1, 2, 3, 4, 5, -1, -2, -3, -100

.text

main:
	li $t5, -100	#$t5 = -100
	la $s0, vetor	#$s0 = vetor[]

	li $v0, 4
	la $a0, bemvindo
	syscall

	li $v0, 5 		#$v0 = var
	syscall

	li $t0, 0 		#i = 0

while:
		sll $t1, $t0, 2
		add $t1, $t1, $s0	#$t1 = &vetor[i]
		lw $t3, 0($t1)		#$t3 = vetor[i]
		beq $t3, $v0, imprimir
		beq $t3, $t5, fim
		addi $t0, $t0, 1
		j while

imprimir:
	
	li $v0, 4
	la $a0, str2
	syscall

	li $v0, 1
	move $a0, $t3
	syscall

	li $v0, 4
	la $a0, str3
	syscall

	li $v0, 10
	syscall

fim:
	li $v0, 4
	la $a0, str
	syscall

	li $v0, 10
	syscall