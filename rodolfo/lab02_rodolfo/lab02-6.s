main:
  # le um numero do teclado
  addi t0, zero, 4
  ecall    
    # subtrai 10 do numero lido 
  addi a0, a0, -10 

  bge a0, zero, positivo
  mv t1, a0
  addi a0, zero, 45
  addi t0, zero, 2
  ecall

  sub a0, zero, t1

positivo: 
  addi t0, zero, 1
  ecall 

fim:
  ret
