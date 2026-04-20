main:
    addi s0, zero, 0      
    addi s1, zero, 0   

while:
    addi t0, zero, 4
    ecall

    beq a0, zero, fim

    andi t1, a0, 1
    beq t1, zero, par

impar:
    add s1, s1, a0  
    j while        

par:
    add s0, s0, a0
    j while

fim:
    sub s2, s1, s0
    mv a0, s2
    addi t0, zero, 1
    ecall
    ret                  