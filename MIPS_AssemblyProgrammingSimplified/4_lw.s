.data

.text

main:
    li $t2, 10      # Load immediate
    lw $t3, value   # variavel value = 20 bits
    add $t4, $t2, $t3   # Adiciona
    sub $t5, $t2, $t3   # Subtrai

    li $v0, 10
    syscall