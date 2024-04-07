.model small
.stack 100h
.data

.code
start:
    mov ax, @data
    mov ds, ax

    mov cx, 4         ; Задаём значение N здесь
    mov bx, 0         ; BX используем для подсчёта количества строк и количества символов

print_lines:
    inc bx            ; Начинаем с 1 символа и увеличиваем количество символов в каждой новой строке
    cmp bx, cx
    jg decrease       ; Если количество символов больше N, начинаем уменьшать количество символов в строке

    ; Выводим bx символов в строке
    mov di, bx        ; DI используем как счётчик символов в строке
    mov dl, 64        
    add dl, cl

print_chars:
    mov ah, 2         ; Функция DOS для вывода символа
    int 21h           ; Вывод символа
    dec dl            ; Переходим к следующему символу
    dec di            ; Уменьшаем счётчик символов в строке
    jnz print_chars   ; Повторяем пока не выведем все символы

    ; Выводим перевод строки
    mov ah, 2         ; Функция DOS для вывода символа
    mov dl, 13        ; Carriage return
    int 21h
    mov dl, 10        ; Line feed
    int 21h

    jmp print_lines   ; Выводим следующую строку

decrease:
    dec bx            ; Уменьшаем количество символов в строке
    jz end_program    ; Если количество символов стало 0, завершаем программу
    jmp print_lines   ; Выводим уменьшенную строку

end_program:
    mov ax, 4C00h     ; Завершение программы
    int 21h

end start
