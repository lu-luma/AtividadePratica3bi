<%--
  Created by IntelliJ IDEA.
  User: lumal
  Date: 15/09/2021
  Time: 07:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import=" java.net.*" %>
<%@page import=" java.net.*" %>
<html>
<head>
    <title>Processar Cookies</title>
</head>
<body>
<%
String nome;
String email;
String celular;
String sugestao;
String operacao;
//pegar dados
    operacao=request.getParameter("btnOperacao");
    nome= request.getParameter("nome");
    email = request.getParameter("email");
    celular = request.getParameter("celular");
    sugestao = request.getParameter("sugestao");
    if(operacao.equals("Salvar")) {
        Cookie ckNome = new Cookie("ContatoNome", URLEncoder.encode(nome,"UTF-8"));
        ckNome.setMaxAge(30);// segundos * minutos * horas * dias
        response.addCookie(ckNome);

        Cookie ckEmail = new Cookie("ContatoEmail", URLEncoder.encode(email,"UTF-8"));
        ckEmail.setMaxAge(30);
        response.addCookie(ckEmail);

        Cookie ckCelular = new Cookie("ContatoCelular", URLEncoder.encode(celular,"UTF-8"));
        ckCelular.setMaxAge(30);
        response.addCookie(ckCelular);

        Cookie ckSugestao = new Cookie("ContatoSugestao", URLEncoder.encode(sugestao,"UTF-8"));
        ckSugestao.setMaxAge(30);
        response.addCookie(ckSugestao);
        response.sendRedirect("ReceberCookies.jsp");
    }
    else if(operacao.equals("Novo")){
        Cookie [] ListaCookies = request.getCookies();
        if(ListaCookies!=null) {
            Cookie o_Cookie;
            o_Cookie = new Cookie("ContatoNome","");
            o_Cookie.setMaxAge(0);
            response.addCookie(o_Cookie);

            o_Cookie = new Cookie("ContatoEmail","");
            o_Cookie.setMaxAge(0);
            response.addCookie(o_Cookie);

            o_Cookie = new Cookie("ContatoCelular","");
            o_Cookie.setMaxAge(0);
            response.addCookie(o_Cookie);

            o_Cookie = new Cookie("ContatoSugestao","");
            o_Cookie.setMaxAge(0);
            response.addCookie(o_Cookie);

            out.println("<h1> Não há cookies cadastrados </h1>");
        }
    }
%>
</body>
</html>
