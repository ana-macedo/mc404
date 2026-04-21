main:
  addi s0, zero, 1     
  addi s1, zero, 2      
  add  s2, s1, s0  

  addi a0, zero, 1       
  add  a1, s2, zero      
  ecall               

  addi a0, zero, 10   
  ecall              