.data
   addi $t0, $zero, 12 #$t0 = 0 + 3 = 3
   addi $t1, $zero, 7 #$t1 = 0 + 3 = 3
   addi $t2, $zero, 0 #$t2 = 0 + 0 = 0
   addi $t3, $zero, 1 #$t3 = 0 + 1 = 1
   addi $t4, $zero, 1

.text

main: #Label de programa

   MULT:
      beq $t1, $t2, fim #if($t1 == $t3) go to fim
      add $t3, $t3, $t0 #$t2 = 0 + 3
      sub $t1, $t1, $t4 #$t1 = 3 + 1
      j MULT

   fim:
