.data

.text

main:
    li $t1, 5
    li $t2, 3

    beq $t1, $t2, end   # if $t1 == $t2, go to end
    addi $t3, $t2, 5    # else

end:
    li $v0, 10
    syscall