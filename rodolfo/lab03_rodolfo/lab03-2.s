main:
    addi t0, zero, 4       
    ecall          
    
    andi t1, a0, 3        

    beq t1, zero, multiplo

nao_e:
    addi a0, zero, 78 
    addi t0, zero, 2  
    ecall                 
    j fim                  

multiplo:
    addi a0, zero, 83
    addi t0, zero, 2
    ecall

fim:
    ret                  