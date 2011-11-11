
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="erro.jsp"%>
<%@include file="/WEB-INF/cabecalho.jspf" %>
<%@include file="/WEB-INF/menuprincipal.jspf" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Exercício 3</title>
    </head>
    <body>
        <h1>Juros Compostos</h1>
        <form action="juroscompostos.jsp" method="post">
                <input type="text" name="meses" value="" placeholder="Meses"/>
                <input type="text" name="taxa_juros" value="" placeholder="Taxa de Juros" />
                <input type="text" name="valor_inicial" value="" placeholder="Valor inicial"/>
                <input type="submit" value="Calcular" />
        </form>
    </body>
</html>

<%@include file="/WEB-INF/rodape.jspf" %> 