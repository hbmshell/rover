// 2022-11-02 - 00:26
PROCEDURE MAIN

   LOCAL aCommand := {}, cCommand
   
   LOCAL cCommandTodos := ""
   LOCAL  cTo := "hbmshell@gmail.com" //"vlademirolandim@gmail.com"
   LOCAL  cPreOrigem := "HbmShell "
   
   AADD( aCommand , "date" )
   AADD( aCommand , "ip address" )
   AADD( aCommand , "lshw -short" )
   AADD( aCommand , "df -h | grep -v loop" )
   
   FOR x := 1 TO LEN( aCommand )
       EXEC RUN aCommand[x]  TO cCommand
       cCommandTodos += StrZero(x,3) + ") " + aCommand[x] + hb_eol()
       cCommandTodos += Replicate("-",80) + hb_eol()
       cCommandTodos += cCommand + hb_eol()
   NEXT

   EnviaEmail( cPreOrigem, cTo, "Resultado da máquina " + dtoc(Date()) + " " + Time() + " " + StrZero(Seconds(),7) , cCommandTodos )
   
 RETURN  
