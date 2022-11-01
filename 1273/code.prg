// 2022-11-01
PROCEDURE MAIN

   LOCAL cCommand1, cCommand2
   LOCAL cCommandTodos := ""
   
   EXEC RUN "ip address"  TO cCommand1
   EXEC RUN "lshw -short"  TO cCommand2
   

   cCommandTodos += cCommand1 + hb_eol()
   cCommandTodos += cCommand2 + hb_eol()
   ? cCommandTodos
   
 RETURN  
