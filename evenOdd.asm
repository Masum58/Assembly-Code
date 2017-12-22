.model small
.stack 100h
.data
    msg db 'Even$'
    msg1 db 'odd$'

main proc
    mov ax,@data
    mov ds,ax 
    
    mov ah,1     ;input
    int 21h
    
    mov bl,2 
    div bl
    
    cmp ah,0     ;comparison
    jne odd 
    
    mov ah,2
    mov dl,0ah   ;new line
    int 21h 
    
    mov ah,9h
    lea dx,msg   ;output EVEN
    int 21h
    jmp exit

odd:
    mov ah,2
    mov dl,0ah   ;new line
    int 21h    
    
    mov ah,9h
    lea dx,msg1  ;output ODD
    int 21h
    
exit:
       mov ah,4ch
       int 21h
main endp
end main    
    
    