<%@ page import="java.net.URLDecoder" %><%--
  Created by IntelliJ IDEA.
  User: lumal
  Date: 20/09/2021
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        body{
            background-image: url("colorido.jpg");
        }
        #title{
            text-align: center;
            color:white;
        }
        div{
            background-color: #F6C288;
            width: 500px;
            border-radius: 15px;
            border: solid 3px #F8AD59;
            margin: auto;
            padding-left: 10px;
            padding-right: 10px;
        }
    </style>
    <title>Receber Sessão</title>
</head>
<body>
<h1 id="title">Fale Conosco - Sessão</h1>
<%
    String nome, email,celular,sugestao;
    nome="";
    email="";
    celular="";
    sugestao="";

    if(session.getAttribute("ContatoNome") !=null){
        nome=(String) session.getAttribute("ContatoNome");
        nome= URLDecoder.decode(nome,"UTF-8");
    }
    if(session.getAttribute("ContatoEmail") !=null){
        email=(String) session.getAttribute("ContatoEmail");
        email= URLDecoder.decode(email,"UTF-8");
    }
    if(session.getAttribute("ContatoCelular") !=null){
        celular=(String) session.getAttribute("ContatoCelular");
        celular= URLDecoder.decode(celular,"UTF-8");
    }
    if(session.getAttribute("ContatoSugestao") !=null){
        sugestao=(String) session.getAttribute("ContatoSugestao");
        sugestao= URLDecoder.decode(sugestao,"UTF-8");
    }
%>
<div>
    <label>Nome: </label><%=nome%>
    <br><br>
    <label>E-mail: </label><%=email%>
    <br><br>
    <label>Celular: </label><%=celular%>
    <br><br>
    <label>Sugestao: </label><%=sugestao%>
</div>
</body>
</html>
