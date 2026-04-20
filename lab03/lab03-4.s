main:
    addi t0, zero, 4       
    ecall                  
    add s0, a0, zero      

    addi t0, zero, 4      
    ecall                 

    xor a0, a0, s0       

    addi t0, zero, 1     
    ecall             

    ret       