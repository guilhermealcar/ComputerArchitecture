.data

.text

main:
    li $t1, 2
    li $t2, 3

    slt $t3, $t1, $t2 # if($t1<$t2) then $t3=1; else $t3=0

    li $v0, 10
    syscall