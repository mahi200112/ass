.model small
.stack 100h
.data
msg1 db 'Enter first number:$'  
msg2 db 10,13,'Enter second number:$' 
msg3 db 10,13,'Enter third number:$' 
res db 10,13,'Largest number is:$' 

.code
main proc  
    mov ax,@data
    mov ds,ax
           
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al  
    
    mov ah,9
    lea dx,msg2
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al       
             
             
    mov ah,9
    lea dx,msg3
    int 21h
    
    mov ah,1
    int 21h
    mov cl,al       
    
    
    mov ah,9
    lea dx,res
    int 21h  
    
    cmp bl,bh
    jge large_a
large_b:
    cmp bh,cl
    jge b  
    ;mov ah,2
    ;mov dl,cl
    ;int 21h
    
large_a:
   cmp bl,cl
   jge output
   mov ah,2
   mov dl,cl
   int 21h
   jmp exit 
   
   
b:
   mov ah,2
   mov dl,bh
   int 21h
   jmp exit  
   
output:
   mov ah,2
   mov dl,bl
   int 21h      
   
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main