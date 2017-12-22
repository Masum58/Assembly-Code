.model small   
.stack 100h
.data
        msg db 'Hello$'
        msg1 db 'SEU$' 
        msg3 db 'Microprocessor$'

.code
    mov ax,@data
    mov ds,ax  
    
    mov ah,9
    lea dx,msg      ;msg
    int 21h
    
    mov ah,2
    mov dl,0ah      ;new line
    int 21h
    
    mov ah,2        ;new line
    mov dl,0dh
    int 21h
    
    mov ah,9
    lea dx, msg1     ; msg1 
    int 21h 
    
    mov ah,2
    mov dl,0ah      ;new line
    int 21h
    
    mov ah,2        ;new line
    mov dl,0dh
    int 21h 
    
    mov ah,9
    lea dx,msg3     ; load msg3
    int 21h
    
    mov ah,4ch
    int 21h     

end

