.model small
.stack 100h

.data

msg1 db 'Enter First Digit: $'
msg2 db 10,13,'Enter Second Digit: $'
result_msg db 10,13,'Result :$' 
a db 0
b db 0
rem db 0


.code

main proc
     mov ax,@data
     mov ds,ax 
     
     mov ah,9
     lea dx,msg1
     int 21h
     
     mov ah,1
     int 21h
     sub al,48
     mov a,al   
     
     
     mov ah,9
     lea dx,msg2
     int 21h
     
     mov ah,1
     int 21h
     sub al,48
     mov b,al   
     
     
     mov ah,9
     lea dx,result_msg
     int 21h 
     
     
     mov al,a
     mul b 

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
     
     
    