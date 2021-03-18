data segment
a dw -16
b dw 3
c dw ?
ends data
code segment
assume cs:code, ds:data
start: mov ax,data
       mov ds,ax
       mov ax,a
       mov bx,b
       mov ax,a
       mov bx,b
       div bx
       mov ax,a
       mov bx,b
       cwd
       idiv bx
       int 3
ends code
end start
