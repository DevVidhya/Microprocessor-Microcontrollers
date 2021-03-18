data segment
a dw 000ffh
b dw 0006h
data ends
code segment
assume cs:code, ds:data
start: mov ax,data
       mov ds,ax
       mov ax,a
       mov bx,b
       mov cx,0000h
       up: inc cx
           sub ax,bx
           cmp ax,bx
           jge up
           int 3
code ends
end start 
