.data #Label de segmento tem que por .

.text

main: #Label de programa

	addi $t0, $zero, 10 #Soma 10 + 0 no reg $t0
	addi $t1, $zero, 15 #Soma 15 + 0 no reg $t1
	add $t0, $t0, $t1

	li $v0, 1 #li = load immediate que recebe 1 pro valor de print
	add $a0, $zero, $t0
	syscall

	li $v0, 10 #Recebe o valor 10 que eh pra exit
	syscall
