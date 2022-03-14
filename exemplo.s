.data #Label de segmento tem que por .

.text

main: #Label de programa

	addi $t0, $zero, 10 #Soma 10 + 0 no reg $t0
	addi $t1, $zero, 15 #Soma 15 + 0 no reg $t1

	add $t0, $t0, $t1
