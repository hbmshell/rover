// Dell Optiflex 09/11/2022 - 21:45
PROCEDURE MAIN(...)

   LOCAL aCommand := {}, cCommand
   
   LOCAL cCommandTodos := ""
   LOCAL  cTo := "hbmshell@gmail.com" 
   LOCAL cLabel := "0346208 - Vlad"
      
   AADD( aCommand , "date" )
   AADD( aCommand , "users" )
    AADD( aCommand , "ps -aux | grep ssh" )
// Aadd( aCommand, 'shutdown -r now' )
   //AADD( aCommand , "find / *" )
   
   //AADD( aCommand , "ps -aux" ) 
   AADD( aCommand , "uptime" )
   //AADD( aCommand , "route -n" )
   AADD( aCommand , "ping –c 5 10.11.12.169" )
   //AADD( aCommand , "ip address" )
   //AADD( aCommand , "lshw -short" )
   //AADD( aCommand , "df -h | grep -v loop" )
   
   FOR x := 1 TO LEN( aCommand )
       EXEC RUN aCommand[x]  TO cCommand
       cCommandTodos += StrZero(x,3) + ") " + aCommand[x] + hb_eol()
       cCommandTodos += Replicate("-",80) + hb_eol()
       cCommandTodos += cCommand + hb_eol()
   NEXT
   EnviaEmail( cTo,  cLabel  , cCommandTodos )
   
 RETURN  
