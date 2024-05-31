.model small
.stack 200h
.data

msg db 'Enter number of rows:$' 
newline db 10,13,'$'

.code

main proc
    
    mov ax,@data
    mov ds,ax    
    
    ;mov ah,9
    ;lea dx,msg
    ;int 21h
    
    
    mov ah,1
    int 21h
    sub al,48
    mov ah,0
    
    
    
    mov cx,ax
    mov bx,1    
    
    
    
    
level1:   

    mov ah,9
    lea dx,newline 
    int 21h
    
     push cx
      mov ah,2
     mov dl,32  
     int 21h

    
level2:
int 21h
loop level2 
    
 mov ah,2
 mov dl,'*' 
     
 mov cx,bx
 inc bx
     
level3:
 int 21h
  loop level3
    pop cx 
 loop level1
        
        
  
              
              
    mov ah,4ch
   int 21h
   
   main endp
end main          