
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="erro.jsp"%>
<%@include file="/WEB-INF/cabecalho.jspf" %>
<%@include file="/WEB-INF/menu.jspf" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Exercício 2</title>
    </head>
    <body>
        <h1>Juros Simples</h1>
    <%
        try {
            Float taxa_juros = Float.parseFloat(request.getParameter("taxa_juros"));
            int meses = Integer.parseInt(request.getParameter("meses"));
        
            Float valor_final = (1000*(1+meses*taxa_juros));
    %>
    
    <p><samp>Para um investimento inicial de R$1000 a uma taxa de juros simples de
            <%=taxa_juros*100%>% ao mês, você terá R$<%=valor_final%> ao final de <%=meses%> meses!</samp></p>
    
    <%       
         } catch (Exception e) {
    %>

    <h1>Erro! <%=e.getMessage()%></h1>
        <p>Dados inválidos!
            Exemplo: <a href="jurosimples.jsp?meses=12&taxa_juros=0.01">meses=12 e taxa_juros=0.01</a>.</p>
        <%
               }
        %>
    </body>
</html>

<%@include file="/WEB-INF/rodape.jspf" %>  