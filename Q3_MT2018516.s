     AREA     oddeven, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
; IGNORE THIS PART 	
		MOV r2,  #0x000000010  ;number that is to checked for odd or even
loop    SUB r2,r2,#2 ; 2 is subtracted till it reaches a 1 or 0 value
		CMP r2,#1
        BGT loop ; if r2 is greater than 0	

		CMP r2,#1  ;this part of the logic says if r3 is 1 its a odd number or else its an even number
		ITE LT
        SUBLT r3 , r2, #0 ; says that r3 is 0 means its even
        SUBGE r3, r2, #0 ; says that r3 is 1 means its a odd no  

stop        B stop  ; stop program
        endfunc
      end

  

	  