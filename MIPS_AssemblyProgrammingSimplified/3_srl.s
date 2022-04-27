# Shift Right Logical
# divide p 2 por bit de movimentacao
# 8 4 2 1

.data

.text

main:
    li $t1, 8

    srl $t0, $t1, 3     # $t0 = $t1 >> 3
    
    li $v0, 10
    syscall