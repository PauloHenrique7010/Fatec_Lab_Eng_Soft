<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Calculadora JSP</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<style>
  ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
  }
  
  li {
    display: inline;
    
  }
  .inicio{
    background-color: dodgerblue;
  }

  body{
    margin: 0px;
    padding: 0px;
  }

  .menu{
    background-color: dodgerblue;
    width: 100%;
    height: 5vw;
    margin:  0px;
    padding: 0px;
  }
  .item{
    width:50vh;
    border-radius: 20px;
    background-color: cadetblue;
  }

  .corpo{
    padding: 2vh;
  }

  li.dotted {border-style: dotted;}
</style>
<body>
  <div class="html">
    <div class="menu">  
      <ul>
        <li><a href="/Calculadora/inicio.action" class="inicio">Inicio</a></li>
        <li><a href="/Calculadora/calculadora.action">Calculadora</a></li>
        <li><a href="/Calculadora/historico.action">Histórico</a></li>
      </ul>  
    </div>   
     




