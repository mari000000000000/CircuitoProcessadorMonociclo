main:
    li  $t0, 5              # valor inicial (num = 5)
    li  $t1, 0              # contador = 0

    addi $sp, $sp, -4       # reserva 4 bytes na pilha
    sw   $zero, 0($sp)      # inicializa pilha com 0

loop:
    sub $t1, $t1, $t0       # contador += num
    addi $t0, $t0, -1       # num--

    beq $t0, $zero, fim     # se num == 0, termina
    j loop                  # se não, volta ao loop

fim:
    sw $t1, 0($sp)          # salva o resultado na pilha (variável)

    li $v0, 10              # encerra programa
    syscall
