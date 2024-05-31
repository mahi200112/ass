include emu8086.inc
.model small
.stack 100h
.data      
msg1 db 10,13, "Simple calculator", 10,13, "1.Addition",10,13,"2.Subtraction", 10,13, "3.Multiplication", 10,13,"4.Division",10,13,'$'
msg2 db "Enter first number: $"
msg3 db 10,13, "Enter 2nd number: $"
msg4 db  10,13,'Enter choice :$' 
newline db 10,13,'$'
a db 0
b db 0
choice db ?
rem db ?
.code
main proc
    mov ax,@data
    mov ds,ax   
    
    mov ah,9   
    lea dx,msg1
    int 21h  
    
    mov ah,9   
    lea dx,msg2
    int 21h  
    
    mov ah,1
    int 21h
    sub al,48
    mov a,al 
    
    
    
    mov ah,9   
    lea dx,msg3
    int 21h
            
    mov ah,1
    int 21h
    sub al,48
    mov b,al    
    
    
    mov ah,9   
    lea dx,msg4
    int 21h
            
    mov ah,1
    int 21h
    sub al,48
    mov choice,al 
    
   
    cmp choice,1
    je addition
    cmp choice,2
    je subtraction
    cmp choice,3
    je multiplication
    cmp choice,4
   je division
           
              
addition: 
    mov ah,9   
    lea dx,newline
    int 21h  
    
    mov al,a
    add al,b
    
    mov ah,0
    mov bl,10
    div bl
    mov rem ,ah
    
    print 'The result of addition:'
    
    mov ah,2
    mov dl,al
    add dl,48
    int 21h 
    
    mov ah,2
    mov dl,rem
    add dl,48
    int 21h
           
           
    jmp exit 
    
subtraction: 
    mov ah,9   
    lea dx,newline
    int 21h  
    
    mov al,a
    sub al,b
    
    mov ah,0
    mov bl,10
    div bl
    mov rem ,ah
    
    print 'The result of subtraction:'
    
    mov ah,2
    mov dl,al
    add dl,48
    int 21h 
    
    mov ah,2
    mov dl,rem
    add dl,48
    int 21h
           
           
    jmp exit  
    
multiplication: 
    mov ah,9   
    lea dx,newline
    int 21h  
    

    mov al,a
    mul b
    
    mov ah,0
    mov bl,10
    div bl
    mov rem ,ah
    
    print 'The result of multiplication:'
    
    mov ah,2
    mov dl,al
    add dl,48
    int 21h 
    
    mov ah,2
    mov dl,rem
    add dl,48
    int 21h
           
           
    jmp exit 
                
division:
    mov ah,9   
    lea dx,newline
    int 21h  
        
    mov al,a
    mov ah,0
    mov bl,b
    div bl
    mov rem ,ah  
    
     print 'The result of division:'  
      print ' Quotient :'
    
    mov ah,2
    mov dl,al
    add dl,48
    int 21h  
    
    print ' Reminder :'
    
    mov ah,2
    mov dl,rem
    add dl,48
    int 21h
           
           
    jmp exit 
    
    mov ah,2
    mov dl,al
    add dl,48
    int 21h 
    
    mov ah,2
    mov dl,rem
    add dl,48
    int 21h
           
           
    jmp exit 
    
    
    
exit:
    mov ah,4ch
    int 21h
    main endp
end main