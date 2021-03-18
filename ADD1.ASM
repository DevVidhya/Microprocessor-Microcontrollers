data segment
a dw 0ffffh
b dw 0002h
c dw ?
d dw ?
ends data
code segment
assume cs:code, ds:data
start: mov ax,data
       mov ds,ax
       mov dx,a
       mov cx,b
       add dx,cx
       mov c,dx
       sub dx,cx
       mov d,dx
       int 3
ends code
end start

