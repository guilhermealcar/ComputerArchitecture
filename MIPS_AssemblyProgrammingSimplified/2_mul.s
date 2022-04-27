.data

.text

main:
    li $t0, 25      # Inicia a primeira variavel
    li $t1, 10      # Inicia a segunda variavel
    mul $t2, $t0, $t1

    li $v0, 10
    syscall
