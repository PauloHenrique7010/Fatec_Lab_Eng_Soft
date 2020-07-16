<%@ include file="cabecalho.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
    let numero1 = 0;
    let numero2 = 0;
    let operacao =  "";  
    let inseriuOP = false;  

    function Digitar(valor){
        edit = document.getElementById("texto");       
                
        if (edit.value == "0" && valor != "."){
            edit.value = "";
        }
        edit.value += valor;
    }         

    function Operador(valor){
        if (inseriuOP == true){
            calcular(true);
        }
        inseriuOP = true;
        operacao = valor;
        Digitar(valor);
    }

    function Limpar(){
        document.getElementById("texto").value = "0";
        operacao = "";
        inseriuOP = false;

    }

    function validar(){
        msgValidacao = "";
        if (operacao == "/"){
            if (numero2 == "0"){
                msgValidacao += "Não é possível dividir um número por 0";
            }
        }

        if (operacao != "V```"){
            if (numero1 == 0){
                msgValidacao += "Necessário informar o primeiro número da operação.";
            }
            if (numero2 == 0){
                msgValidacao += "Necessário informar o segundo número da operação.";
            }
        }

        
        if (msgValidacao != ""){
            alert(msgValidacao);
            return false;            
        }
        return true;
    }
    
    function calcular(operadorChamou){
        visor = document.getElementById("texto").value;

        //console.log("valor antes do operador: "+visor.substring(visor.indexOf(operacao),0));
        //console.log("valor dps do operador: "+visor.substring(visor.indexOf(operacao) + 1));
        //https://www.devmedia.com.br/javascript-substring-selecionando-parte-de-uma-string/39232 
        //exemplo tirado a cima

        numero1 = visor.substring(visor.indexOf(operacao),0);
        numero2 = visor.substring(visor.indexOf(operacao) + 1);  
        numero2 = numero2.replace(/`/g , ""); //caso digite a raiz quadrada     

        if (validar()){
            $.ajax({
                url: 'calcular',
                type: "post",
                data: {
                        "numero1":numero1,
                        "numero2":numero2,
                        "operacao":operacao
                      }
            }).done(function(resposta){
                document.getElementById("texto").value = resposta;
                if (operadorChamou == false){
                    inseriuOP = false;
                    operacao = "";
                }
                else{
                    document.getElementById("texto").value+=operacao;         
                }
            });  
        }        
    }        
</script>
<style>
    .botao{
        color:#FFB90F; 
        background-color:#000000; 
        cursor:hand; 
        padding:9px; 
        border:0;
    }
</style>
<div class="container">
    <form name="frm_calc" action="" method="POST">
    <center>
    <table width="200" cellpadding="3" cellspacing="5" style="color:#FFB90F; background-color:#000000; border:2pt solid#FFB90F">
        <tr>
        <td colspan="6"align="Center" bgColor="#FFB90F"><Font Face="Verdana" Size="4" Color="#000000"><b>Calculadora</b></font></td>
        </tr>
        <tr>
        <td colspan="4" align="center" border:2pt solid#FFB90F><input type="text" id="texto" name="txtTexto" value="0" style="color:#000000; background-color:#CFCFCF;border:2pt solid#FFB90F"></td>
        <td><center><input type="button" value="AC" onclick="Limpar()" class="botao"></center></td>
        <td><center><input type="button" value="=" name="btn_igual" onclick="calcular(false)" class="botao"></center></td>
        </tr>
        <tr>
        <td><center><input type="button" value="7" name="btn_7" onclick="Digitar(7)" class="botao"></center></td>
        <td><center><input type="button" value="8" name="btn_8" onclick="Digitar(8)" class="botao"></center></td>
        <td><center><input type="button" value="9" name="btn_9" onclick="Digitar(9)" class="botao"></center></td>
        <td><center><input type="button" value="+" name="btn_soma" onclick="Operador('+')" class="botao"></center></td>
        <td><center><input type="button" value="-" name="btn_subt" onclick="Operador('-')" class="botao"></center></td>
        <td><center><input type="button" value="^" name="btn_subt" onclick="Operador('^')" class="botao"></center></td>
        </tr>
        <tr>
        <td><center><input type="button" value="4" name="btn_4" onclick="Digitar(4)" class="botao"></center></td>
        <td><center><input type="button" value="5" name="btn_5" onclick="Digitar(5)" class="botao"></center></td>
        <td><center><input type="button" value="6" name="btn_6" onclick="Digitar(6)" class="botao"></center></td>
        <td><center><input type="button" value="*" name="btn_mult" onclick="Operador('*')" class="botao"></center></td>
        <td><center><input type="button" value="/" name="btn_divi" onclick="Operador('/')" class="botao"></center></td>
        <td><center><input type="button" value="&radic;" name="btn_divi" onclick="Operador('V```')" class="botao"></center></td>
        </tr>
        <tr>
        <td><center><input type="button" value="1" name="btn_1" onclick="Digitar(1)" class="botao"></center></td>
        <td><center><input type="button" value="2" name="btn_2" onclick="Digitar(2)" class="botao"></center></td>
        <td><center><input type="button" value="3" name="btn_3" onclick="Digitar(3)" class="botao"></center></td>
        <td><center><input type="button" value="0" name="btn_0" onclick="Digitar(0)" class="botao"></center></td>
        <td><center><input type="button" value="." name="btn_pont" onclick="Digitar('.')" class="botao"></center></td>
        </tr>
    </table>
    </form></center>
</div>
<%@ include file="rodape.jsp"%>