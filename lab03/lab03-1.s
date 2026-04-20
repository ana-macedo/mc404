main:
    addi t0, zero, 4       
    ecall          
    
    andi t1, a0, 1        

    beq t1, zero, par 

impar:
    addi a0, zero, 73 
    addi t0, zero, 2  
    ecall                 
    j fim               

par:
    addi a0, zero, 80     
    addi t0, zero, 2 
    ecall       

fim:
    ret                  