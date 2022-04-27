.data

.text

main:
    li $t0, 25
    li $t1, 10
    div $t2, $t0, $t1

    li $v0, 10
    syscall