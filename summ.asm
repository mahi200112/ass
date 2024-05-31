.model small
.stack 100h

.data
a db 'Enter First Number: $'
b db 10,13,'Enter Second Number: $'  
c db 10,13,'Enter Third Number :$'
res db 10,13 ,'Result $'
rem db 0

.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h   
    
    mov ah,1
    int 21h
    sub al,48
    mov bh,al 
    
    mov ah,9
    lea dx,b
    int 21h   
    
    mov ah,1
    int 21h
    sub al,48
    mov bl,al   
    
     mov ah,9
    lea dx,c
    int 21h   
    
    mov ah,1
    int 21h
    sub al,48
    mov cl,al 
              
    mov ah,9
    lea dx,res
    int 21h           
              
    
    add bl,bh 
    mov ch,bl
    add cl,ch  
    
    mov al,cl
    
     
    
    mov ah,0
    mov bl,10
    div bl 
    mov rem,ah 
    
     
    
    mov ah,2 
    mov dl,al 
    add dl,48
    int 21h 
    
    
    mov ah,2 
    mov dl,rem
    add dl,48
    int 21h
    
    
    
     
    mov ah,4ch
    int 21h
    main endp
end main