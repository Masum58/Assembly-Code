.model small
.stack 100h

main proc
    mov cx,5    
top:
    mov ah,2
    mov dl,"*"
    int 21h
    loop top
    
    mov ah,4ch
    int 21h
main endp
end main