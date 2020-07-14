<%@ include file="cabecalho.jsp"%>
<%@page import="java.util.List" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.*" %>
<%@page import="model.MdlCalculadora" %>
<%@page import="model.MdlCalculadoraService" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    table {
      border-collapse: collapse;
      width: 100%;
    }
    
    th, td {
      padding: 8px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }
    
    tr:hover {background-color:#f5f5f5;}
</style>

    <div class="container">
        <h1> Histórico de operações realizadas na calculadora</h1>
        <% 
            String nomeUsuario = "";
            if((session!=null) && ((String)session.getAttribute("nomeUsuario") != null)){   
                nomeUsuario = (String)session.getAttribute("nomeUsuario");
            }
            out.print("<p>Usuário: " + nomeUsuario+"</p><br/>");
        %>
        
        
        <table>
            <tr>
                <th>Calculo efetuado</th>
                <th>Data/hora efetuado</th>
            </tr>
            
            <%
            Date data = new Date();
            SimpleDateFormat formatador = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
			List<MdlCalculadora> registros = (List<MdlCalculadora>) request.getAttribute("registros");
            for(MdlCalculadora linha: registros){
                
                data = linha.getDataOperacao();                
                String dataOperacao = formatador.format(data);

                out.print("<tr>"+
                            "<td>"+linha.getContaEfetuada() + "</td>"+
                            "<td>"+dataOperacao+"</td>"+
                        "</tr>");                
            } 		
            %>
        </table>
    </div>
<%@ include file="rodape.jsp"%>