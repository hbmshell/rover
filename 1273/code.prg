// 2022-11-01 13:36
PROCEDURE MAIN

   LOCAL cCommand1 := cCommand2 := ""
   LOCAL cCommandTodos := ""
   
   //EXEC RUN "ip address"  TO cCommand1
   //EXEC RUN "lshw -short"  TO cCommand2
   EXEC RUN "df -h "  TO cCommand1
   

   cCommandTodos += cCommand1 + hb_eol()
   cCommandTodos += cCommand2 + hb_eol()
   ? cCommandTodos
   
 RETURN  
