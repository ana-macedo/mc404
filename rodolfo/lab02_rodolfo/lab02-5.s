main: 
    # le n1
    addi t0, zero, 4
    ecall
    add s0, a0, zero                                

    #le n2
    addi t0, zero, 4
    ecall
    add s1, a0, zero                               

    #se n1 ou n2 for 0, encerra
    beq s0, zero, fim 
    beq s1, zero, fim

    blt s0, s1, outro
    mv a0, s0
    addi t0, zero, 1
    ecall
    j fim

outro:
    mv a0, s1
    addi t0, zero, 1
    ecall

fim:
    ret