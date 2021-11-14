
.MODEL SMALL
.STACK 100H
.DATA
 MSG DB 'this is a message$'  
.CODE
MAIN PROC  
        MOV AX,@DATA
        MOV DS,AX
        MOV ES,AX
        
        
        LEA SI,MSG
        MOV AH,01H
          
          
        MOV CX,17
        XOR SI,SI
        
        TOP: 
        CMP MSG[SI],' '
        JE NEXT
        
        
        NEXT:
        INC SI
        AND MSG[SI],0DFH
        LOOP TOP
        
        END:
        LEA DX,MSG
        MOV AH,9          
        INT 21H 
        
        
        
        MOV AH,4CH
        INT 21H
        
        MAIN ENDP
    END MAIN    




