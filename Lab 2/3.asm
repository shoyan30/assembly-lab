.model small
.stack 100h
.data
  MSG1 DB 0AH,0DH,'Its a char $'
  MSG2 DB 0AH,0DH,'Its a digit $'  
.code
main PROC
    MOV AX,@data
    MOV DS,AX
    
    MOV AH,1
    INT 21h
    MOV CL,AL 
    
    CMP CL,'9'
    JLE pt2
    JGE pt1
pt1:
    MOV AH,9
    LEA DX,MSG1
    INT 21h
    JMP done
pt2:
     CMP CL,'0'
     JL pt1
     JGE pt3
     
pt3:
     MOV AH,9
    LEA DX,MSG2
    INT 21h
    JMP done
done:
    MOV AH,4ch
    INT 21h
    main ENDP
END main