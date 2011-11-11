
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="erro.jsp"%>
<%@include file="/WEB-INF/cabecalho.jspf" %>
<%@include file="/WEB-INF/menuprincipal.jspf" %>

<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <title>Exercício 5</title>
    </head>
    <body>
        <h1>Tabela Produto Linha/Coluna</h1>
        <form method="get">
            <dl>
                <dt><label for="txtA">Valor 1</label>:</dt>
                <dd><input type="text" name="N1" id="N1"></dd>
                <dt><label for="txtA">Valor 2</label>:</dt>
                <dd><input type="text" name="N2" id="N2"></dt>
                <dd><input type="submit" value="Enviar"></dd>
            </dl>
            <%
                int N1 = 0;
                int N2 = 0;
                if (request.getParameter("N1") != null){
                    N1 = Integer.parseInt(request.getParameter("N1"));
                }
                if (request.getParameter("N2") != null){
                    N2 = Integer.parseInt(request.getParameter("N2"));
                }

                if (N1 > 0 && N2 > 0){
                    out.println("<table>");
                    for (int i = N1; i <= N2; i++){
                        if (i == N1){
                            out.println("<tr>");
                            out.println("<td>"+0+"</td>");
                            out.println("<td>"+1+"</td>");
                            out.println("<td>"+2+"</td>");
                            out.println("<td>"+3+"</td>");
                            out.println("<td>"+4+"</td>");
                            out.println("<td>"+5+"</td>");
                            out.println("<td>"+6+"</td>");
                            out.println("<td>"+7+"</td>");
                            out.println("<td>"+8+"</td>");
                            out.println("<td>"+9+"</td>");
                            out.println("<td>"+10+"</td>");
                            out.println("</tr>");
                        }
                        out.println("<tr>");
                        out.println("<td>"+i+"</td>");
                        for (int x = 1; x <= 10; x++){
                            out.println("<td>"+i*x+"</td>");
                        }
                        out.println("</tr>");
                    }
                    out.println("</table>");
                }
            %>
        </form>
    </body>
</html>

<%@include file="/WEB-INF/rodape.jspf" %> 