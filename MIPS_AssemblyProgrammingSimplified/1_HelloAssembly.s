.data
    myMessage: .asciiz "Hello World !\n"
    .extern foobar 4

.text

.globl main

    main:
        li $v0, 4           # syscall 4 (print_str)
        la $a0, myMessage   # argument: string
        syscall             # print the string

        jr $ra