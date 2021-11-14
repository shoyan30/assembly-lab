
.MODEL SMALL
.STACK 100H
.DATA
 MSG DB 'EXAM$'
 CHAR DB ?
 MSG1 DB 'FOUND$'
 MSG2 DB 'NOT FOUND$'  
.CODE
MAIN PROC  
        MOV AX,@DATA
        MOV DS,AX
        MOV ES,AX
        
        
        MOV AH,1
        INT 21H
        MOV CHAR,AL
        
        
        
        
        
        
        
        END:
        LEA DX,MSG
        MOV AH,9          
        INT 21H 
        
        
        
        MOV AH,4CH
        INT 21H
        
        MAIN ENDP
    END MAIN    




