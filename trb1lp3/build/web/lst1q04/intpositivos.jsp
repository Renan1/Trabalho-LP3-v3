
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="erro.jsp"%>
<%@include file="/WEB-INF/cabecalho.jspf" %>
<%@include file="/WEB-INF/menu.jspf" %>

<!DOCTYPE html>
<html>
    <head>
        <meta  charset="UTF-8">
        <title>Exercício 4</title>
    </head>
    <body>
    <%
            int N1 = Integer.parseInt(request.getParameter("N1"));
            int N2 = Integer.parseInt(request.getParameter("N2"));
            int D = Integer.parseInt(request.getParameter("D"));                                               
    %>
        <h1>Dados Numéricos</h1>
        <p>O valor de <var>N1</var> é 
            <kdb><%=N1%></kdb>.</p>
        <p>O valor de <var>N2</var> é 
            <kdb><%=N2%></kdb>.</p
        <p>O valor de <var>D</var> é 
            <kdb><%=D%></kdb>.</p>
    
   <% if((N1<=N2/3) && (1<=D && D<=N1)){
        
        out.print("Condição Válida!!");
        for (int i = N1; i <= N2; i++){
            int divisivel = i % D;
            if (divisivel == 0){
                out.println("<ul>"+i+"</ul>");
            }
        }
                        
   } else { 
        
        out.print("Condição Inválida!!");
   %><a href="index.jsp" target="_parent">Informe dados válidos por favor.</a><%  
   }
            
   %>
   
   
    </body>
</html>

<%@include file="/WEB-INF/rodape.jspf" %> 
