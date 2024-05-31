.model small
.stack 100h
.data  
str db 20 dup('$')

msg1 db 'Enter a string :$'
msg2 db 'Reversed String: $'  
pal  db 10,13,'palindrome string $'
npal db 10,13,'not palindrome string $'

main proc
    mov ax,@data
    mov ds,ax   
    
    mov ah,9
    lea dx,msg1
    int 21h       
    
    
    mov si,offset str
  
  
  input:
     mov ah,1
     int 21h
     cmp al,13
     je end_input
     mov str[si],al
     inc si
     jmp input
     
  end_input:
     mov di,si
     dec di
     
     
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h
     
     mov ah,9
     lea dx,msg2
     int 21h
     
  rev:
     mov ah,2
     mov dl,str[di]
     dec di
     int 21h
     cmp di,-1
     je set
     loop rev
 set:
    mov di,si
     dec di
     
 check:
   mov si,offset str
   mov al,str[si]
   mov bl,str[di]
   
   cmp al,bl
   jne not_palindrome
   
   cmp si,di
   jng palindrome
   
   
not_palindrome: 

    mov ah,9
     lea dx,npal
     int 21h   
     
palindrome: 

    mov ah,9
     lea dx,pal
     int 21h  
    
    
exit:
mov ah,4ch
int 21h

main endp
end main