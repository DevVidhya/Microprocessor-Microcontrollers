data segment
ip1 dd 12345678h
ip2 dd 9abcdef0h
op dw ?
data ends
code segment
assume cs:code,ds:data
start: mov ax,data
       mov ds,ax
       mov dl,00h
       mov ax,word ptr ip1
       mov bx,word ptr ip2
       sub ax,bx
       mov word ptr op,ax
       mov ax,word ptr ip1+2
       mov bx,word ptr ip2+2
       sbb ax,bx
       mov word ptr op+2,ax
       jnc down
       inc dl
       down: mov byte ptr op+3,dl
       int 3
code ends
end start
