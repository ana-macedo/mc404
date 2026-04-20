main:
  # Le um numero do teclado e armazena em a0
  addi t0, zero, 4
  ecall
  add s0, zero, a0

  beq s0, zero, fim
  # Soma 2 ao valor de a0
  addi a0, a0, 2

  # Imprima o valor de a0 na tela
  addi t0, zero, 1
  ecall
  bne s0, zero, main
  # Se o valor lido for diferente de zero, volte para o inicio
fim:
  ret