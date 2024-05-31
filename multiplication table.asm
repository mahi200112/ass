.model small
.stack 100h
.data  
msg db 'Enter a digit:$'  
rem db 0

.code

main proc
    mov ax,@data
    mov ds,ax 
     
   
    
    mov ah,9
    lea dx,msg
    int 21h   
    
    mov ah,1
    int 21h
    sub al,48
    mov bh,al
    
    mov bl,01h
    mov ch,10
    mov cl,0
    
  
  
  next:
   mov ah,2
   mov dl,10
   int 21h
   mov dl,13
   int 21h
   
   mov ah,2
   ;int 21
   mov dl,bh
   add dl,48 
   int 21h 
   
   mov ah,2
   mov dl,' '
   int 21h   
   
   mov ah,2
   mov dl,'x'
   int 21h
   
   mov ah,2
   mov dl,' '
   int 21h
   
   ;mov ah,2 
   ;int 21h 
   
   mov al,bl 
   mul bh  
   
   aam
   
   push ax
   
   mov ah,0
   mov al,bl
   
   aaa
   
   mov cl,ah
   mov bl,al
   
   
   mov ah,2
   mov dl,cl
   add dl,48
   int 21h 
    
   mov ah,2
   mov dl,bl
   add dl,48
   int 21h 
   
   
result:

   mov ah,2
   mov dl,' '
   int 21h  
   
   ;mov ah,2
   mov dl,'='
   int 21h  
   
   ;mov ah,2
   mov dl,' '
   int 21h 
   
   pop ax
   
   mov dh,al
   mov rem,ah
   
   mov ah,2
   mov dl,rem
   add dl,48
   int 21h   
   
   mov ah,2
   mov dl,dh
   add dl,48
   int 21h      
   
   
   
 
   
   
   inc bl
   dec ch
   cmp ch,00h
   jne next  
   
   mov ah,4ch
   int 21h
   main endp
end main
   
   