.data


.text
		
	main:
		addi $t1, $zero, 3  # t1 = 0 + 3 => a = 3
		addi $t2, $zero, 4  # t2 = 0 + 4 => b = 4
		addi $t3, $zero, 10 # t3 = 0 + 10 => m = 10

		addi $t5, $zero, 1  #auxiliar = 1

		add $t3, $zero, $t1 # t3 = 0 + t1 => m = a

		slt $t4, $t2, $t3   # if($t2 < $t3) $t4 = 1; else $t4 = 0

		beq $t4, $t5, atribui # Se t2 < t3, t4 = 1, entao vai p atribui
		j fim

		beq $t4, $t0, fim # finaliza exibindo valor 0

	atribui:
		li $v0, 1 # print
		add $a0, $zero, $t3
		syscall

		li $v0, 10 # exit
		syscall

	fim:
		li $v0, 1 # print
		add $a0, $zero, $t0
		syscall

		li $v0, 10 # exit
		syscall