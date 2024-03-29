// HP - Backup
PROCEDURE MAIN 

   LOCAL aCommand := {}, cCommand, x
   
   LOCAL cCommandTodos := ""
   LOCAL  cTo := "hbmshell@gmail.com" 
   LOCAL cLabel := "HP Backup - FCPC 23641 "
      
   AADD( aCommand , "date" )
   AADD( aCommand , "users" )
   AADD(  aCommand , "ps -aux | grep ssh" )
   Aadd( aCommand, 'ls -lh /media/lia/dados01/semanal'  )
   AADD( aCommand , "ls -lh /home/lia/QEmu" )
   
   //AADD( aCommand , "ps -aux" ) 
   AADD( aCommand , "uptime" )
   //AADD( aCommand , "route -n" )
   //AADD( aCommand , "ping –c 5 200.19.179.48" )
   AADD( aCommand , "ip address" )
  // AADD( aCommand , "halt" )
   //AADD( aCommand , "df -h | grep -v loop" )
   
   FOR x := 1 TO LEN( aCommand )
       EXEC RUN aCommand[x]  TO cCommand
       cCommandTodos += StrZero(x,3) + ") " + aCommand[x] + hb_eol()
       cCommandTodos += Replicate("-",80) + hb_eol()
       cCommandTodos += cCommand + hb_eol()
   NEXT
   EnviaEmail( cTo,  cLabel  , cCommandTodos )
   
 RETURN  

