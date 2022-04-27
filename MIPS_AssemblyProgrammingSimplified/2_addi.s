.data

.text

main:
    li $t0, 25
    
    addi $t0, $t0, 1     # addi recebe num como arg

    li $v0, 10
    syscall