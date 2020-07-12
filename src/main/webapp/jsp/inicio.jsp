<%@ include file="cabecalho.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <div class="container">

        <form method="get" action="escrevernome.action">
            <div class="form-group">
              <label for="email">Nome inicio:</label>
              <input type="text" class="form-control" placeholder="Informe o seu nome" name="nome_completo">
            </div>
            <button type="submit" class="btn btn-primary">Enviar</button>
          </form>
    </div>
<%@ include file="rodape.jsp"%>