main:
    addi t0, zero, 5    
    ecall     

    li t1, 65
    blt a0, t1
    li t1, 90
    bgt a0, t1, check_min

    ori a0, a0, 32
    j imprimir

check_min:
    li t1, 97
    blt a0, t1, imprimir
    li t1, 122
    bgt a0, t1, imprimir

    andi a0, a0, 223

imprimir:
    addi t0, zero, 2  
    ecall

    ret