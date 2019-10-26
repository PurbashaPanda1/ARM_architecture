     AREA     GCD, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
; IGNORE THIS PART 	
		MOV  r1, #0x00000005    
		           ; a value
	    MOV  r2, #0x0000000F    
		           ; b value
	
		; logic implemented 
	    ; r1 is a and r2 is b
		;while (a != b)
 ;{
  ;  if (a > b) 
  ;          a = a – b;
  ;     else 
  ;          b = b – a;
;}
loop    CMP r1,r2       
		
        ITE LT
        SUBLT r2 , r2, r1 ; 
        SUBGE r1, r1 , r2 ; 
		CMP r1,r2 
        BNE loop ; if r1 and r2 are not equal

stop        B stop  ; stop program
        endfunc
      end

  
