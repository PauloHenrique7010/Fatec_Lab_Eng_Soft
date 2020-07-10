<%@ include file="cabecalho.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="model.MdlCalculadora" %>
<%@page import="model.MdlCalculadoraService" %>
    <div class="corpo">
        <h1> Histórico de operações realizadas na calculadora</h1>
        <ul>
            <%
			List<MdlCalculadora> users = (List<MdlCalculadora>) request.getAttribute("registros");
            for(MdlCalculadora user: users){
                out.print("<li>" + user.getContaEfetuada() + "</li><br/>");                
            } 		
            %>
        </ul>
        

    </div>
<%@ include file="rodape.jsp"%>