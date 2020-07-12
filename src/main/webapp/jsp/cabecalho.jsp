<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
  <title>Calculadora JSP</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta charset="utf-8">
</head>
<style>
  body{
    margin: 0px;
    padding: 0px;
  }
  ul {
      list-style-type: none;
      margin: 0;
      padding: 0;
      overflow: hidden;
      background-color: #333;
  }
  
  li {
      float: left;
  }
  
  li a {
      display: block;
      color: white;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
  }

  .container{
    margin : 5vh;
  }
  
  
  li a:hover:not(.active) {
      background-color: #111;
  }
  
  .active {
      background-color: #4CAF50;
  }

  .desactive{
    background-color: crimson;
  }
  </style>
<body>

  <ul>
    <li><a href="/Calculadora/inicio" class="inicio">Inicio</a></li>
    <li><a href="/Calculadora/calculadora">Calculadora</a></li>
    <li><a href="/Calculadora/historico">Histórico</a></li>
    <li style="float:right"><a class="desactive" href="/Calculadora/logout">Logout</a></li>
  </ul>
      <!--<ul>
        <li><a href="/Calculadora/inicio" class="inicio">Inicio</a></li>
        <li><a href="/Calculadora/calculadora">Calculadora</a></li>
        <li><a href="/Calculadora/historico">Histórico</a></li>
      </ul>  -->
  
     




