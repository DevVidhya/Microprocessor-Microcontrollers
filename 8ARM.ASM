data segment
a dw 0004h
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
           mov q,ax
           mov r,dx
           mov ax,dx
           mul r
           mul r
           add cx,ax
           mov ax,q
           cmp ax,0
           jg up
       cmp a,cx
       jne down
       mov ax,0001h
       down: int 3
code ends
end start

           
