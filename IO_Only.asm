.model small
.stack 100h 


main proc
    mov ah,1   ;input
    int 21h
    mov bl,al  ;storing input
       
    mov ah,2   ;output
    int 21h 
    
    mov dl,0ah    ;newline
    int 21h
    
    mov dl,0dh    ;newline
    int 21h
    
    mov dl,bl     ;output storing in dl and showing
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main
    
