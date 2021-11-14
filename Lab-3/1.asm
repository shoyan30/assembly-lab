.MODEL SMALL
.STACK 100H
.DATA 
  NEW DB 2,4,3 
.CODE
MAIN PROC  
        MOV AX,@DATA
        MOV DS,AX 
        
       
        
        XOR BX,BX
        LEA SI,NEW
        MOV CX,3

        
        ADDITION:
        ADD BX,[SI]
        MOV DL,[SI]
        ADD DL,48         
        MOV AH,2
        INT 21H
        
        MOV DL,32 
        MOV AH,2
        INT 21H
        ADD SI,1
        LOOP ADDITION 
          
       MOV AH,2
       MOV DL,0AH
       INT 21H
       
       
       MOV AH,2
       MOV DL,0DH
       INT 21H
        
        
        
        ADD BX,30H
        MOV AH,2
        MOV DX,BX
        INT 21H 
        
        
        MOV AH,4CH
        INT 21H
        
        MAIN ENDP
    END MAIN
    