.MODEL SMALL
.STACK 100H
.DATA 
VO DB 10,13,"THE INPUT IS VOWEL:  $"  
CON DB 10,13,"THE INPUT IS CONSONANT:  $"
NUM DB 10,13,"THE INPUT IS NUMBER:  $"
SC DB 10,13,"THE INPUT IS SPECIAL CHARACTER:  $"
.CODE
MAIN PROC   
    MOV AX, @DATA
    MOV DS, AX
                                ;INPUT 
  MOV AH,1
  INT 21H
  MOV BL,AL
  
    
    CMP BL,032
    JGE SPCLCHAR
    
  SPCLCHAR: 
    CMP BL,047 
    JLE SCCHK
    JMP NUMBERCHK
    
  CMP BL,'0'
  JGE NUMBERCHK
  JMP VOWELCHK
NUMBERCHK:
  CMP BL,'9'
  JLE PRINTNUM    

VOWELCHK:
  CMP BL,'a'
  JE VOWEL
  CMP BL,'A'
  JE VOWEL 
  
  CMP BL,'e'
  JE VOWEL
  CMP BL,'E'
  JE VOWEL 
  
  CMP BL,'i'
  JE VOWEL
  CMP BL,'I'
  JE VOWEL 
  
  CMP BL,'o'
  JE VOWEL
  CMP BL,'O'
  JE VOWEL 
  
  CMP BL,'u'
  JE VOWEL
  CMP BL,'U'
  JE VOWEL    
  JMP CONSCHK

  CMP BL,'A'
  JGE CONSCHK  
  
CONSCHK:
  CMP BL,'Z'
  JLE PRINTCONS  
  JMP SPCLCHAR  


PRINTNUM:
    LEA DX,NUM
    MOV AH,9
    INT 21H  
    MOV AH,2
    MOV DL,BL
    INT 21H
    JMP EXITT
VOWEL:
    LEA DX,VO
    MOV AH,9
    INT 21H  
    MOV AH,2
    MOV DL,BL
    INT 21H
    JMP EXITT
PRINTCONS:
    LEA DX,CON
    MOV AH,9
    INT 21H  
    MOV AH,2
    MOV DL,BL
    INT 21H
    JMP EXITT    
SCCHK:
    LEA DX,SC
    MOV AH,9
    INT 21H  
    MOV AH,2
    MOV DL,BL
    INT 21H
    JMP EXITT
    
      
 EXITT:   
    MOV AH,4CH
    INT 21H
    MAIN ENDP 
ENDP MAIN
    