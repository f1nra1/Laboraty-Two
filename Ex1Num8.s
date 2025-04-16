.section __TEXT,__text
.global _main
.align 2

_main:
    // Сохраняем регистры
    stp x29, x30, [sp, #-16]!

    // Выводим приглашение "Введите n: "
    adrp x1, prompt@PAGE
    add x1, x1, prompt@PAGEOFF
    mov x2, #18             // Длина приглашения (11 байт, включая нулевой терминатор)
    mov x0, #1              // stdout
    mov x16, #4             // sys_write
    svc #0

    // Читаем ввод (до 16 цифр)
    sub sp, sp, #32         // Буфер для ввода
    mov x0, #0              // stdin
    mov x1, sp
    mov x2, #16
    mov x16, #3             // sys_read
    svc #0

    // Преобразуем ввод в число (N)
    mov x19, #0             // Инициализация N
    mov x20, sp             // Указатель на текущий символ
convert_loop:
    ldrb w21, [x20], #1     // Загружаем символ
    cmp w21, #'\n'          // Проверяем конец строки
    b.eq convert_done
    sub w21, w21, #'0'      // ASCII -> цифра
    cmp w21, #0
    b.lt invalid_input
    cmp w21, #9
    b.gt invalid_input
    mov x22, #10
    mul x19, x19, x22       // N *= 10
    add x19, x19, x21       // N += digit
    b convert_loop
convert_done:

    // Проверяем что N > 0
    cmp x19, #0
    b.le invalid_input

    mov x20, #1             // Счетчик строк (i)

outer_loop:
    cmp x20, x19            // if (i > N) → exit
    b.gt exit_program

    mov x21, #0             // Счетчик столбцов (j)

inner_loop:
    cmp x21, x20            // if (j >= i) → next_line
    b.ge next_line

    // Вычисляем символ: 'A' + (N - 1 - j)
    mov x0, x19             // x0 = N
    sub x0, x0, #1          // N - 1
    sub x0, x0, x21         // (N - 1 - j)
    add x0, x0, #'A'        // 'A' + (N - 1 - j)

    // Выводим символ
    strb w0, [sp, #-1]!
    mov x0, #1              // stdout
    mov x1, sp              // Адрес символа
    mov x2, #1              // длина = 1
    mov x16, #4             // sys_write
    svc #0
    add sp, sp, #1

    // Выводим пробел (кроме последнего символа)
    add x21, x21, #1        // j++
    cmp x21, x20
    b.eq skip_space

    mov w0, #' '
    strb w0, [sp, #-1]!
    mov x0, #1
    mov x1, sp
    mov x2, #1
    mov x16, #4
    svc #0
    add sp, sp, #1

    b inner_loop

skip_space:
    b inner_loop

next_line:
    // Перевод строки
    mov w0, #'\n'
    strb w0, [sp, #-1]!
    mov x0, #1
    mov x1, sp
    mov x2, #1
    mov x16, #4
    svc #0
    add sp, sp, #1

    add x20, x20, #1        // i++
    b outer_loop

invalid_input:
    // Сообщение об ошибке
    adrp x1, error_msg@PAGE
    add x1, x1, error_msg@PAGEOFF
    mov x2, #23
    mov x0, #1
    mov x16, #4
    svc #0

exit_program:
    // Восстановление стека
    add sp, sp, #32
    ldp x29, x30, [sp], #16
    
    // Выход
    mov x0, #0
    mov x16, #1
    svc #0

.section __TEXT,__cstring
prompt:     .asciz "Введите n: "
error_msg:  .asciz "Ошибка: неверный ввод\n"
