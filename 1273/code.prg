// 2022-11-02 - 00:09
PROCEDURE MAIN

   LOCAL cCommand1 := cCommand2 := ""
   LOCAL cCommandTodos := ""
   LOCAL  cTo := "hbmshell@gmail.com" //"vlademirolandim@gmail.com"
   LOCAL  cPreOrigem := "Estação 1273 / " + dtoc(Date()) + " " + Time() + " " + StrZero(Seconds(),7)
   
   //EXEC RUN "ip address"  TO cCommand1
   //EXEC RUN "lshw -short"  TO cCommand2
   EXEC RUN "df -h | grep -v loop"  TO cCommand1
   

   cCommandTodos += cCommand1 + hb_eol()
   cCommandTodos += cCommand2 + hb_eol()
   EnviaEmail( cPreOrigem, cTo, "Resultado da máquina " + strzero(hb_RandomInt(1,1000),4) , cCommandTodos )
   
 RETURN  
