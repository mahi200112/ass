.model small
.stack 100h
.data
msg1 db 'CAPITAL LETTERS :',10,13,'$' 
msg2 db 10,13,'SMALL LETTERS :',10,13,'$' 
msg3 db 10,13,'0 TO 9 :',10,13,'$'

.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h
   
    mov cx,26
    mov ah,2
    mov dl,65
    
level1:
    int 21h
    inc dl
    mov bl,dl
    mov ah,2
    mov dl,' '
    int 21h
    mov dl,bl
    
    loop level1 
    
    
    mov ah,9
    lea dx,msg2
    int 21h
   
    mov cx,26
    mov ah,2
    mov dl,97
    
level2:
    int 21h
    inc dl
    mov bl,dl
    mov ah,2
    mov dl,' '
    int 21h
    mov dl,bl
    
    loop leveL2    
    
    mov ah,9
    lea dx,msg3
    int 21h
   
    mov cx,10
    mov ah,2
    mov dl,48
    
level3:
    int 21h
    inc dl
    mov bl,dl
    mov ah,2
    mov dl,' '
    int 21h
    mov dl,bl
    
    loop level3
   
    
    mov ah,4ch
    int 21h
    main endp
end main