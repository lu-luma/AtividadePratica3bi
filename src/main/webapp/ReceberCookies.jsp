<%@ page import="java.net.URLDecoder" %><%--
  Created by IntelliJ IDEA.
  User: lumal
  Date: 15/09/2021
  Time: 07:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        #title{
            text-align: center;
            color:white;
        }
        div{
            background-color: rgb(245, 188, 119);
            width: 500px;
            border-radius: 15px;
            border: solid 3px #674130;
            margin: auto;
            padding-left: 10px;
            padding-right: 10px;
        }
    </style>
    <title>Receber Cookies</title>
</head>
<body style="background-image: url('c.jpg')">
<h1 id="title">Fale Conosco - Cookie</h1>
<%
    String nome, email,celular,sugestao;
    nome="";
    email="";
    celular="";
    sugestao="";

    Cookie [] ListaCookies = request.getCookies();
    if(ListaCookies!=null){
        for(Cookie Cookie : ListaCookies){
            if (Cookie.getName().equals("ContatoNome")){
                nome= URLDecoder.decode(Cookie.getValue(),"UTF-8");
            }
            else if (Cookie.getName().equals("ContatoEmail")){
                email= URLDecoder.decode(Cookie.getValue(),"UTF-8");
            }
            else if (Cookie.getName().equals("ContatoCelular")){
                celular= URLDecoder.decode(Cookie.getValue(),"UTF-8");
            }
            else if (Cookie.getName().equals("ContatoSugestao")){
                sugestao= URLDecoder.decode(Cookie.getValue(),"UTF-8");
            }
        }
    }
%>
<div>
    <br>
        <label>Nome: </label><%=nome%>
        <br><br>
        <label>E-mail: </label><%=email%>
        <br><br>
        <label>Celular: </label><%=celular%>
        <br><br>
        <label>Sugestao: </label><%=sugestao%>
    <br>
</div>
</body>
</html>
