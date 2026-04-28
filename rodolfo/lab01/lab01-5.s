main:
  addi t0, zero, 4           
  ecall                      
  add s0, zero, a0
  addi t0, zero, 4           
  ecall                      
  add a0, a0, s0
  addi t0, zero, 1   # escolhe a operacao de escrita de inteiro (1)
  ecall              # efetua a operacao de escrita de inteiro
  ret