.data

.text

main:
    li $t1, 2

    slti $t3, $t1, 3    # if($t1<3) then $t3=1; else $t3=0

    li $v0, 10
    syscall