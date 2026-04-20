main:
    addi t0, zero, 4      
    ecall           

    addi t1, zero, 10
    blt a0, t1, eh_digito

eh_letra:
    addi a0, a0, 55
    j imprimir

eh_digito:
    addi a0, a0, 48

imprimir:
    addi t0, zero, 2     
    ecall

    addi a0, zero, 104  
    addi t0, zero, 2  
    ecall

    ret