main:
  addi s0, zero, 0     #contador i
  addi s1, zero, 10   #maximo 
  
for: 
  bge s0, s1, fim
  addi t0, zero, 4
  ecall
  add s2, zero, a0

  beq s2, zero, fim
  addi a0, a0, 2

  addi t0, zero, 1
  ecall
  
  addi s0, s0, 1
  j for

fim:
  ret