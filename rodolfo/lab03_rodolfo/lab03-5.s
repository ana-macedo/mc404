main:
    addi t0, zero, 4      
    ecall
    add s0, a0, zero   

loop:
    addi t0, zero, 4   
    ecall            

    beq a0, zero, fim     

    xor a0, a0, s0   

    addi t0, zero, 1  
    ecall

    j loop

fim:
    ret                