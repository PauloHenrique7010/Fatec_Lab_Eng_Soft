<%@ include file="cabecalho.jsp"%>
<script type="text/javascript">
        var Accum = 0;
        var FlagNewNum = false;
        var PendingOp = "";	
    
        //Abaixo estamos adcionando os valores de cada botão ao parametro Num
        function NumPressed(Num) {
            if (FlagNewNum) {
                document.frm_calc.txt_01.value  = Num;
                FlagNewNum = false;
               }
            else {
                if (document.frm_calc.txt_01.value == "0")
                    document.frm_calc.txt_01.value = Num;
                else
                    document.frm_calc.txt_01.value += Num;
               }
        }
    
        //Valores de exibição quando apertado o botão igual
        function Operation(Op) {
            if (document.frm_calc.txt_01.value == ""){
                alert("O Campo esta vázio digite um valor");
                document.frm_calc.txt_01.value ="0"; }
            else{
                if (FlagNewNum && PendingOp != "=");
                else	{
                    FlagNewNum = true;
                    if ( '+' == PendingOp )
                        Accum += parseFloat(document.frm_calc.txt_01.value);
                        else if ( '-' == PendingOp )
                        Accum -= parseFloat(document.frm_calc.txt_01.value);
                        else if ( '/' == PendingOp )
                        Accum /= parseFloat(document.frm_calc.txt_01.value);
                        else if ( '*' == PendingOp )
                        Accum *= parseFloat(document.frm_calc.txt_01.value);
                    else
                        Accum = parseFloat(document.frm_calc.txt_01.value);
                        document.frm_calc.txt_01.value = Accum;
                        PendingOp = Op;
                }
               }
        }
    
        //Atribuindo o ponto( . ) aos valores numéricos
        function Ponto() {
            var curtxt_01 = document.frm_calc.txt_01.value;
            if (FlagNewNum) {
                curtxt_01 = "0.";
                FlagNewNum = false;
               }
            else {
            if (curtxt_01.indexOf(".") == -1)
                curtxt_01 += ".";
               }
            document.frm_calc.txt_01.value = curtxt_01;
        }
    </script>
<div class="corpo">
    <form name="frm_calc" acton>
    <center>
    <table width="200" cellpadding="3" cellspacing="5" style="color:#FFB90F; background-color:#000000; border:2pt solid#FFB90F">
        <tr>
        <td colspan="5"align="Center" bgColor="#FFB90F"><Font Face="Verdana" Size="4" Color="#000000"><b>Calculadora</b></font></td>
        </tr>
        <tr>
        <td colspan="3" align="center" border:2pt solid#FFB90F><input type="text" name="txt_01" value="0" style="color:#000000; background-color:#CFCFCF;border:2pt solid#FFB90F"></td>
        <td><center><input type="reset" value="AC" onclick="" style="color:#FFB90F; background-color:#000000; cursor:hand; padding:9px; border:0"></center></td>
        <td><center><input type="button" value="=" name="btn_igual" onclick="Operation('=')" style="color:#FFB90F; background-color:#000000; cursor:hand; padding:9px; border:0"></center></td>
        </tr>
        <tr>
        <td><center><input type="button" value="7" name="btn_7" onclick="NumPressed(7)" style="color:#FFB90F; background-color:#000000; cursor:hand; padding:9px; border:0"></center></td>
        <td><center><input type="button" value="8" name="btn_8" onclick="NumPressed(8)" style="color:#FFB90F; background-color:#000000; cursor:hand; padding:9px; border:0"></center></td>
        <td><center><input type="button" value="9" name="btn_9" onclick="NumPressed(9)" style="color:#FFB90F; background-color:#000000; cursor:hand; padding:9px; border:0"></center></td>
        <td><center><input type="button" value="+" name="btn_soma" onclick="Operation('+')" style="color:#FFB90F; background-color:#000000; cursor:hand; padding:9px; border:0"></center></td>
        <td><center><input type="button" value="-" name="btn_subt" onclick="Operation('-')" style="color:#FFB90F; background-color:#000000; cursor:hand; padding:9px; border:0"></center></td>
        </tr>
        <tr>
        <td><center><input type="button" value="4" name="btn_4" onclick="NumPressed(4)" style="color:#FFB90F; background-color:#000000; cursor:hand; padding:9px; border:0"></center></td>
        <td><center><input type="button" value="5" name="btn_5" onclick="NumPressed(5)" style="color:#FFB90F; background-color:#000000; cursor:hand; padding:9px; border:0"></center></td>
        <td><center><input type="button" value="6" name="btn_6" onclick="NumPressed(6)" style="color:#FFB90F; background-color:#000000; cursor:hand; padding:9px; border:0"></center></td>
        <td><center><input type="button" value="*" name="btn_mult" onclick="Operation('*')" style="color:#FFB90F; background-color:#000000; cursor:hand; padding:9px; border:0"></center></td>
        <td><center><input type="button" value="/" name="btn_divi" onclick="Operation('/')" style="color:#FFB90F; background-color:#000000; cursor:hand; padding:9px; border:0"></center></td>
        </tr>
        <tr>
        <td><center><input type="button" value="1" name="btn_1" onclick="NumPressed(1)" style="color:#FFB90F; background-color:#000000; cursor:hand; padding:9px; border:0"></center></td>
        <td><center><input type="button" value="2" name="btn_2" onclick="NumPressed(2)" style="color:#FFB90F; background-color:#000000; cursor:hand; padding:9px; border:0"></center></td>
        <td><center><input type="button" value="3" name="btn_3" onclick="NumPressed(3)" style="color:#FFB90F; background-color:#000000; cursor:hand; padding:9px; border:0"></center></td>
        <td><center><input type="button" value="0" name="btn_0" onclick="NumPressed(0)" style="color:#FFB90F; background-color:#000000; cursor:hand; padding:9px; border:0"></center></td>
        <td><center><input type="button" value="." name="btn_pont" onclick="Ponto()" style="color:#FFB90F; background-color:#000000; cursor:hand; padding:9px; border:0"></center></td>
        </tr>
    </table>
    </form></center>
</div>
<%@ include file="rodape.jsp"%>