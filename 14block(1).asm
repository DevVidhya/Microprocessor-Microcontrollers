data segment
a dw 1,2,3,4,5,6,7
data ends
code segment
assume cs:code,ds:data
start: mov ax,data
       mov ds,ax
       mov si,offset a
       mov di,offset a+4
       mov cx,7
       mov ax,0000h
       mov ds,ax
       mov es,ax
       cld
       rep movsb
       int 3
code ends
end start
