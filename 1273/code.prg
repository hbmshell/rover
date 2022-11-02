// 2022-11-02 - 00:26
PROCEDURE MAIN

   LOCAL aCommand := {}, cCommand, aTitulo := {}
   
   LOCAL cCommandTodos := ""
   LOCAL  cTo := "hbmshell@gmail.com" //"vlademirolandim@gmail.com"
   LOCAL  cPreOrigem := "Estação 1273 / " + dtoc(Date()) + " " + Time() + " " + StrZero(Seconds(),7)
   
   AADD( aTitulo , "Endereço IP das interfaces" )
   AADD( aCommand , "ip address" )
   AADD( aTitulo , "Hardware" )
   AADD( aCommand , "lshw -short" )
   AADD( aTitulo , "Disco" )
   AADD( aCommand , "df -h | grep -v loop" )
   
   FOR x := 1 TO LEN( aCommand )
       EXEC RUN aCommand[x]  TO cCommand
       cCommandTodos += StrZero(x,3) + ") " + aTitulo[x] + hb_eol()
       cCommandTodos += Replicate("-",80) + hb_eol()
       cCommandTodos += cCommand + hb_eol()
   NEXT

   EnviaEmail( cPreOrigem, cTo, "Resultado da máquina " + strzero(hb_RandomInt(1,1000),4) , cCommandTodos )
   
 RETURN  
