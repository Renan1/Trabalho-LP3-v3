
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="erro.jsp"%>
<%@include file="/WEB-INF/cabecalho.jspf" %>
<%@include file="/WEB-INF/menuprincipal.jspf" %>
<%@page import="java.util.Date"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Exercício 1</title>
    </head>
    <body>
        <h1>Data e Hora Atual</h1>
        
        <% 
            Date data = new java.util.Date();
            out.print(data);
        %>
        
        <pre><samp><%
                        out.print(new java.util.Date());
            %></samp></pre>
            
        <pre><samp><%=new java.util.Date()%></samp></pre>
        
        <h2>Comentário HTML</h2>
        <pre><samp><!--
                         
        --></samp></pre>
        
        <a href="index.jsp">   Atualizar</a>
    </body>
</html>

<%@include file="/WEB-INF/rodape.jspf" %>  