//
PROCEDURE MAIN

  LOCAL cCommand1, cCommand2, cErro1, cErro2 
  LOCAL cErroTodos := "", cCommandTodos := ""
  
  EXEC RUN "ip address" ERROR cErro1 TO cCommand1
  EXEC RUN "lshw" ERROR cErro2 TO cCommand2
  
  IF EMPTY( cErro1 )
      cCommandTodos += cCommand1 + hb_eol()
      
  ENDIF    
  IF EMPTY( cErro2 )
      cCommandTodos += cCommand2 + hb_eol()
      
  ENDIF    
  
  ? cCommandTodos
  ? cErro1
  ? cErro2
  
  
  
  
RETURN  
