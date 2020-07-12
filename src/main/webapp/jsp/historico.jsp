<%@ include file="cabecalho.jsp"%>
<%@page import="java.util.List" %>
<%@page import="model.MdlCalculadora" %>
<%@page import="model.MdlCalculadoraService" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <div class="corpo">
        <h1> Histórico de operações realizadas na calculadora</h1>
        <% 
            String nomeUsuario = "";
            if((session!=null) && ((String)session.getAttribute("nomeUsuario") != null)){   
                nomeUsuario = (String)session.getAttribute("nomeUsuario");
            }
            out.print("<p>Usuário: " + nomeUsuario+"</p><br/>");
        %>
        
        <ul>
            <%
			List<MdlCalculadora> users = (List<MdlCalculadora>) request.getAttribute("registros");
            for(MdlCalculadora user: users){
                out.print("<li>" + user.getContaEfetuada() + " Horário: "+user.getDataOperacao()+"</li><br/>");                
            } 		
            %>
        </ul>
        

    </div>
<%@ include file="rodape.jsp"%>