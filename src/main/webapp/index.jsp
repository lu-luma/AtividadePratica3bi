<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Enviar Cookie</title>
    <style>
        #title{
            text-align: center;
            color:white;
        }
        form{
            background-color: rgb(245, 188, 119);
            width: 500px;
            border-radius: 15px;
            border: solid 3px #674130;
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
        }
    </style>

</head>
<body style="background-image: url('c.jpg')">
<h1 id="title">Fale Conosco - Cookie</h1>
<form name="contato" action="ProcessarCookies.jsp">
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