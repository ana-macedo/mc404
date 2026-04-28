main:
    addi t0, zero, 4
    ecall
    add s0, a0, zero    

    addi s1, zero, 32  
    
loop:
    beq s1, zero, fim 

    srli t1, s0, 31       
    
    andi a0, t1, 1         

    addi t0, zero, 1      
    ecall

    slli s0, s0, 1        
    addi s1, s1, -1   
    j loop

fim:
    ret