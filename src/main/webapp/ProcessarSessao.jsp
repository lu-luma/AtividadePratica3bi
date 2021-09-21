<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: lumal
  Date: 20/09/2021
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import=" java.net.*" %>
<%@page import=" java.net.*" %>
<html>
<head>
    <title>Processar Sessão</title>
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
        session.setAttribute("ContatoNome", URLEncoder.encode(nome,"UTF-8"));
        session.setAttribute("ContatoEmail", URLEncoder.encode(email,"UTF-8"));
        session.setAttribute("ContatoCelular", URLEncoder.encode(celular,"UTF-8"));
        session.setAttribute("ContatoSugestao", URLEncoder.encode(sugestao,"UTF-8"));
        session.setMaxInactiveInterval(30);
        response.sendRedirect("ReceberSessao.jsp");
    }
    else if(operacao.equals("Novo")){
       session.removeAttribute("ContatoNome");
       session.removeAttribute("ContatoEmail");
       session.removeAttribute("ContatoCelular");
       session.removeAttribute("ContatoSugestao");
            out.println("<h1> Sessão removida! </h1>");
        }
%>
</body>
</html>
