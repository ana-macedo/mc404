.data
vetor: 
    .word 10, 20, 30

.text
main:
    la s0, vetor   
    addi s1, zero, 3     # s1 contador

loop_inc:
    beq s1, zero, reset_ponteiro

    lw t0, 0(s0)        
    addi t0, t0, 1       
    sw t0, 0(s0)     

    addi s0, s0, 4  
    addi s1, s1, -1     
    j loop_inc

reset_ponteiro:
    la s0, vetor         
    addi s1, zero, 3    

loop_print:
    beq s1, zero, fim

    lw a1, 0(s0)         #carrega o valor atualizado para a1
    addi a0, zero, 1  
    ecall

    addi a1, zero, 32  
    addi a0, zero, 11  
    ecall

    addi s0, s0, 4    
    addi s1, s1, -1   
    j loop_print

fim:
    addi a0, zero, 10 
    ecall