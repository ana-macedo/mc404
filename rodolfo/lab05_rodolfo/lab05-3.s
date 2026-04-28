.data
vetor: 
    .word 10, 20, 30

.text
main:
    la s0, vetor  

    lw t1, 0(s0)   
    lw t2, 4(s0)      
    lw t3, 8(s0)     

    add s1, t1, t2    
    add s1, s1, t3   

    addi a0, zero, 1   
    add  a1, s1, zero   
    ecall

    addi a0, zero, 10  
    ecall