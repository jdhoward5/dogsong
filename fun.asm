default rel
bits 64
segment .data
    music: times 0x64A04E db 0x41
segment .text
global main
extern _CRT_INIT
extern PlaySound
extern GetConsoleWindow
extern ShowWindow
extern ExitProcess
main:
    push rbp
    mov rbp, rsp
    sub rsp, 32
    call _CRT_INIT
    lea rcx, [music]
    xor rdx, rdx
    mov r8, 0x20000D
    call PlaySound
    call GetConsoleWindow
    mov rcx, rax
    xor rdx, rdx
    call ShowWindow
    jmp $
    xor rax, rax
    call ExitProcess