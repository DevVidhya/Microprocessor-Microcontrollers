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
       up: add cx,ax
           dec bx
           jnz up
           int 3
code ends
end start 
