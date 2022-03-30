########### c

# void main(){
#	int f = folha(1, 2, 3, 4);
#	printf("O resultado de folha é: %d\n", f);
# }
#
# int folha(int g, int h, int i, int j){
# 	int f;
# 	f = (g + h) - (i + j);
#	return f;
# }
#

########### ASSEMBLY Mips

.data

	M1: .asciiz "O resultado de folha é: "
	M2: .asciiz "\n\n"

.text

main:

	li $a0, 1
	li $a1, 2
	li $a2, 3
	li $a3, 4

	jal folha 			# end da linha 31 em $ra

	move $t0, $v0		# $t0 = aux

	# Imprime M1
	li $v0, 4
	la $a0, M1
	syscall

	li $v0, 1
	move $a0, $t0
	syscall

	# Imprime M2
	li $v0, 4
	la $a0, M2
	syscall

	li $v0, 10
	syscall

folha:

	# Pilha -> sp = stack pointer
	# Pilha em assembly cresce p baixo
	addi $sp, $sp, -12	# 3 regitradores ocupam 12 espaços de memoria -> negativo pq tem que deslocar o sp p baixo
	sw $s0, 12($sp)
	sw $s1, 8($sp)
	sw $ra, 4($sp)

	add $s0, $a0, $a1
	add $s1, $a2, $a3
	sub $v0, $s0, $s1

	# Restaura
	lw $s0, 12($sp)
	lw $s1, 8($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 12	# Restaura o sp adicionando 12 p voltar p valor inicial, ja que tinha subtraido 12

	jr $ra 				# salto que endereça