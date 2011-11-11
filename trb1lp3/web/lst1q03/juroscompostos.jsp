
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="erro.jsp"%>
<%@include file="/WEB-INF/cabecalho.jspf" %>
<%@include file="/WEB-INF/menu.jspf" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Exercício 3</title>
    </head>
    <body>
        <h1>Juros Compostos</h1>
    <%
        try {
            Double taxa_juros = Double.parseDouble(request.getParameter("taxa_juros"));
            int meses = Integer.parseInt(request.getParameter("meses"));
            Double valor_inicial = Double.parseDouble(request.getParameter("valor_inicial"));
            Double valor_final = valor_inicial*Math.pow(1+taxa_juros,meses);
            
            Double rendimento = ((valor_final - valor_inicial)/meses);
    %>
    
    <p><samp>Para um investimento inicial de <%=valor_inicial%> a uma taxa de juros simples de
            <%=taxa_juros*100%>% ao mês, você terá R$<%=valor_final%> ao final de <%=meses%> meses!</samp></p>
    <p><samp>O rendimento é <%=rendimento%></samp></p>
    
    <% if(rendimento > 200){
        
        out.print("<strong style=\"color:green;\">Bom negocio!</strong>");
        
    } else { 
        
        out.print("<strong style=\"color:red;\">Mau negocio!</strong>");
    }
    %>
    
    <%       
            
         } catch (Exception e) {
    %>

    <h1>Erro! <%=e.getMessage()%></h1>
        <p>Dados inválidos!
            Exemplo: <a href="juroscompostos.jsp?taxa_juros=0.01&meses=12&valor_inicial=5000">meses=12 e taxa_juros=0.01 e valor_inicial=1000</a>.</p>
        <%
               }
        %>
    </body>
</html>

<%@include file="/WEB-INF/rodape.jspf" %> 