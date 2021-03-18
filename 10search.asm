data segment
arr dw 0001h,0002h,0003h,0004h,0005h,0006h,0007h,0008h,0009h
len dw ($-arr)/2
key dw 0007h
msg1 db "Key not found !!!$"
msg2 db "Key is found at "
res db " th position",13,10,"$"
data ends
code segment
assume cs:code,ds:data
start: mov ax,data
       mov ds,ax
       mov ax,0000h
       mov cx,len
       mov dx,key
       up: cmp ax,cx
           jg fail
           mov bx,ax
           add bx,cx
           shr bx,1
           mov si,bx
           add si,si
           cmp dx,arr[si]
           jge down
           dec bx
           mov cx,bx
           jmp up
       down: je success
             inc bx
             mov ax,bx 
             jmp up
       success: add ax,01
                add ax,'0'
                mov res,al
                lea dx,msg2
                jmp disp
       fail: lea dx,msg1
       disp: mov ah,09h
             int 21h
             mov ah,4ch
             int 21h
code ends
end start
