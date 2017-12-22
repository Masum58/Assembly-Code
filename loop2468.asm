.model small
.stack 100h

.data

main proc
    mov cx,5        ;loop range
    
    mov ah,2
    mov dl,"0"      ;initialize
    
top: int 21h        ;looping
     add dl,2
     loop top


    mov ah,4ch
    int 21h    
main endp
end main