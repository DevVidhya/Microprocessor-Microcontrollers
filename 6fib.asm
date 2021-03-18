data segment
c dw 0009h
data ends
code segment
assume cs:code, ds:data
start: mov ax,data
       mov ds,ax
       mov ax,0000h
       mov bx,0001h
       mov cx,c
       mov dx,0000h
       up: add ax,bx
           mov dx,ax
           mov ax,bx
           mov bx,dx
           dec cx
           jnz up
           int 3
code ends
end start 
