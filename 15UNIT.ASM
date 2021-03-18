data segment
arr db 1,0,0,0,1,0,0,0,1
n dw 0003h
msg1 db "Unit matrix $"
msg2 db "Not unit matrix $"
data ends
code segment
assume cs:code,ds:data
start: mov ax,data
       mov ds,ax
       mov ax,0000h
       mov bx,0000h  
       lea si, arr
       loop1: cmp bx,n
              je success
              mov cx,0000h
       loop2: mov al,[si]
              inc si
              cmp cx,bx
              je equal
              cmp al,0
              jne fail
       resume: inc cx
               cmp cx,n
               jne loop2
               inc bx
               jmp loop1  
       equal: cmp al,1
              jne fail
              jmp resume
       success: lea dx,msg1
                mov ah,09h
                int 21h
                jmp exit
       fail: lea dx,msg2
             mov ah,09h
             int 21h 
       exit: mov ah,4ch
             int 21h
code ends
end start

