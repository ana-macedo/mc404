main:
  addi t0, zero, 4           
  ecall                      
  addi a0, a0, 2  
  addi t0, zero, 1   # escolhe a operacao de escrita de inteiro (1)
  ecall              # efetua a operacao de escrita de inteiro
  ret