<%--
  Created by IntelliJ IDEA.
  User: lumal
  Date: 20/09/2021
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Enviar Sessão</title>
    <style>
        body{
            background-image: url("colorido.jpg");
        }
        #title{
            text-align: center;
            color:white;
        }
        form{
            background-color: #F6C288;
            width: 500px;
            border-radius: 15px;
            border: solid 3px #F8AD59;
            margin: auto;
            padding-left: 10px;
            padding-right: 10px;
        }
        label{
            position: relative;
            width: 120px;
            left: 10px;
            display: inline-block;
        }
        input{
            position: relative;
            left: 20px;
            width: 250px ;
        }
        textarea{
            margin-left: 140px;
            width: 250px ;
        }
        button{
            width: 100px;
            background-color: #FCCEB7;
            border: solid 1px #FCCEB7;
            border-radius: 3px;
        }
        fieldset{
            border:solid 1px #FAD8CF;
            color: white;
        }
    </style>

</head>
<body>
<h1 id="title">Fale Conosco - Sessão</h1>
<form name="contato" action="ProcessarSessao.jsp">
    <br><br>
    <fieldset>
        <legend>Contato</legend>
        <label>Nome:</label><input type="text" name="nome">
        <br><br>
        <label>E-mail:</label><input type="text" name="email">
        <br><br>
        <label>Celular:</label><input type="text" name="celular">
        <br><br>
        <label>Sugestão:</label><br><textarea name="sugestao" cols="10" rows="5"></textarea>
        <br> <br>
        <button type="submit" value="Salvar" name="btnOperacao">Salvar</button>
        <button type="submit" value="Novo" name="btnOperacao">Novo</button>
    </fieldset>
    <br><br>
</form>
</body>
</html>
