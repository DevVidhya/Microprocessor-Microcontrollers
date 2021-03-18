data segment
c dw 0009h
data ends
code segment
assume cs:code, ds:data
start: mov ax,data
       mov ds,ax
       mov ax,0001h
       mov bx,c
       mov cx,0000h
       up: mul bx
           mul bx
           add cx,ax
           mov ax,0001h
           dec bx
           jnz up
           int 3
code ends
end start 
