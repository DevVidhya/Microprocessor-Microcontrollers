data segment
block1 db 'malayalam'
msg1 db "Palindrome$"
msg2 db "Not Palindrome$"
data ends
extra segment
block2 db 9 dup(?)
extra ends
code segment
assume cs:code, ds:data
start: mov ax,data
       mov ds,ax
       mov ax,extra
       mov es,ax
       lea si,block1
       lea di,block2+8
       mov cx,0009h
       loop1: cld
              lodsb
              std
              stosb
              loop loop1
       lea si,block1
       lea di,block2
       mov cx,0009h
       cld
       repz cmpsb
       jnz fail
       lea dx,msg1
       mov ah,09h
       int 21h
       jmp exit
       fail: lea dx,msg2
             mov ah,09h
             int 21h
       exit: mov ah,4ch
             int 21h
code ends
end start
       
