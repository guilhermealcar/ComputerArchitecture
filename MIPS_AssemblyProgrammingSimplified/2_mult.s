.data

.text

main:
    li $t0, 10
    li $t1, 20
    mult $t0, $t1

    li $v0, 10
    syscall