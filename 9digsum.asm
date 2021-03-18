data segment
a dw 0099h
q dw ?
r dw ?
ten dw 0000ah
data ends
code segment
assume cs:code, ds:data
start: mov ax,data
       mov ds,ax
       mov ax,a
       mov cx,0000h
       up: cwd
           idiv ten
           add cx,dx
           cmp ax,0
           jg up
           int 3
code ends
end start

           
