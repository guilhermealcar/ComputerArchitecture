.data

.text

main:
    li $t1, 5
    li $t2, 5

    bne $t1, $t2, end
    addi $t3, $t2, 10

end:
    li $v0, 10
    syscall