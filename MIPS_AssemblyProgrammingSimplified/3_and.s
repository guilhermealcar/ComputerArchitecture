.data

.text

main:
    li $t1, 1       # $t1 = 1
    li $t2, 1       # $t2 = 1

    and $t0, $t1, $t2   # $t0 = $t1 & $t2
    
    li $v0, 10
    syscall