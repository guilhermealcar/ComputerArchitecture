.data
    msg: .asciiz "E ai"

.text

main:
    li $v0, 4   # print_string syscall code
    la $a0, msg
    syscall

    li $v0, 10
    syscall