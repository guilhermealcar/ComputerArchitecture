# Sum of 0 to 10
.data

.text

main:
    li $t0, 0   # count = 0
    li $t1, 0   # sum = 0

while:
    beq $t0, 11, exit
    add $t1, $t1, $t0   # sum = sum + count
    addi $t0, $t0, 1    # count = count + 1
    j while             # repete o while

exit:
    li $v0, 10
    syscall