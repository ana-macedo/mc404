.rodata
vetorA: .word 1, 2, 3, 4, 5
vetorB: .word 10, 20, 30, 40, 50

.data
vetorC: .word 0, 0, 0, 0, 0

.text
main:
    # 1. Inicializar ponteiros e variáveis
    la s0, vetorA    
    la s1, vetorB       
    la s2, vetorC      
    addi s3, zero, 5   
    addi s4, zero, 0  

loop_soma:
    beq s3, zero, imprimir_resultado

    lw t0, 0(s0)      
    lw t1, 0(s1)       
    
    add t2, t0, t1     
    sw  t2, 0(s2)    

    add s4, s4, t2      

    addi s0, s0, 4      # Avança ponteiro A
    addi s1, s1, 4      # Avança ponteiro B
    addi s2, s2, 4      # Avança ponteiro C
    addi s3, s3, -1     # i--
    j loop_soma

imprimir_resultado:
    addi a0, zero, 1    
    add  a1, s4, zero 
    ecall

    addi a0, zero, 10
    ecall