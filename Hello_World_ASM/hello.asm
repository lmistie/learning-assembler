; ----------------------------------------------------------------------------------------
; Это консольная программа macOS, которая пишет «Hello world» в одной строке, а затем завершает работу.
; Он использует puts из библиотеки C. Чтобы собрать и запустить:
;
;     nasm -fmacho64 hello.asm && gcc hello.o && ./a.out
; ----------------------------------------------------------------------------------------

          global    _main
          extern    _puts

          section   .text
_main:    push      rbx                     ; Call stack must be aligned
          lea       rdi, [rel message]      ; First argument is address of message
          call      _puts                   ; puts(message)
          pop       rbx                     ; Fix up stack before returning
          ret

          section   .data
message:  db        "Hello, world!", 0        ; C strings need a zero byte at the end