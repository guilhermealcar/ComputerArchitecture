.data

.text

main:
    li $t0, 2   # count = 2
    li $t1, 4   # sum = 4

    bgt $t0, $t1, division  # if cont > sum
    add $t0, $t0, $t1

division:
    div $t0, $t1

exit:
    li $v0, 10
    syscall