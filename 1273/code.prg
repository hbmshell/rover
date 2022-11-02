// 2022-11-02 - 00:17
PROCEDURE MAIN

   LOCAL aCommand := {}, cCommand
   LOCAL cCommandTodos := ""
   LOCAL  cTo := "hbmshell@gmail.com" //"vlademirolandim@gmail.com"
   LOCAL  cPreOrigem := "Estação 1273 / " + dtoc(Date()) + " " + Time() + " " + StrZero(Seconds(),7)
   
   AADD( aCommand , "ip address" )
   AADD( aCommand , "lshw -short" )
   AADD( aCommand , "df -h | grep -v loop" )
   
   FOR x := 1 TO LEN( aCommand )
       EXEC RUN aCommand[x]  TO cCommand
       cCommandTodos += cCommand + hb_eol()
   NEXT

   EnviaEmail( cPreOrigem, cTo, "Resultado da máquina " + strzero(hb_RandomInt(1,1000),4) , cCommandTodos )
   
 RETURN  
