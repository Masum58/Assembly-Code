.model small
.stack 100h
.data 
msg db 'UPPERCASE$'
MSG1 DB 'LOWERCASE$'
MSG3 DB 'Neither UPPERCASE Nor LOWERCASE$'
main proc
    mov ax,@data
    mov ds,ax        ;DATA SEGMENT
    
    
    mov ah,1         ;INPUT
    int 21h 
    
    
    cmp al,"A"       ;COMPARISON
    jl level1
    cmp al,"Z"
    jg level2
    
    mov ah,2
    mov dl,0ah
    int 21h          ;NEWLINE
    
    MOV AH,2
    MOV DL, 0DH      ;NEW LINE
    INT 21H
    
    mov ah,9
    lea dx,msg       ;UPPERCASE OUTPUT
    int 21h
    jmp exit
    
level1: 
        mov ah,2
        mov dl,0ah
        int 21h          ;NEWLINE
    
        MOV AH,2
        MOV DL, 0DH      ;NEW LINE
        INT 21H
        
        
        mov ah,9
        lea dx,MSG3   ;Neither UPPERCASE Nor LOWERCASE
        int 21h
        JMP EXIT 
        
LEVEL2:
        cmp al,"z"
        jg level1
        mov ah,2
        mov dl,0ah
        int 21h          ;NEWLINE
    
        MOV AH,2
        MOV DL, 0DH      ;NEW LINE
        INT 21H 
        
        
        MOV AH,9
        LEA DX,MSG1      ;LOWERCASE OUTPUT
        INT 21H
exit:
      mov ah,4ch
      int 21h
      end main
      main endp