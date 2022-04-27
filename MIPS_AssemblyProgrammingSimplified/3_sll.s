# Shift Left Logical
# multiplica p 2 por bit de movimentacao

.data

.text

main:
    li $t1, 1

    sll $t0, $t1, 2     # $t0 = $t1 << 2
    
    li $v0, 10
    syscall