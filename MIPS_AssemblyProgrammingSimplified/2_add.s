.data

.text

main:
    li $t0, 25     #inicia primeira variavel = t0 = 25
    li $t1, 10     #inicia segunda variavel = t1 = 10
    add $t2, $t0, $t1

    li $v0, 10
    syscall