########### c

# void main(){
#	int fat = fact(5)
#	printf("%i", fat);
# }
#
# int fact(int n){
# 	if(n <= 1) return 1;
#	else 
#	}
# 	f = (g + h) - (i + j);
#	return f;
# }
#

########### ASSEMBLY Mips

.data

	
.text

main:
	
	li $a0, 5

	li $t0, 1
	li $v0, 1

	jal fact

	move $t0, $v0
	li $v0, 1
	move $a0, $t0
	syscall

	li $v0, 10
	syscall

fact:
	
	addi $sp, $sp, -12
	sw $a0, 12($sp)
	sw $s0, 8($sp)
	sw $ra, 4($sp)

	beq $a0, $t0, sair
	slti $s0, $a0, 1 			# se (n <= 1)
	bne $s0, $zero, sair

	addi $a0, $a0, -1
	jal fact 

	# Restaura todo mundo
	lw $a0, 12($sp)
	lw $s0, 8($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 12

	mul $v0, $v0, $a0

sair:

	jr $ra