
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="erro.jsp"%>
<%@include file="/WEB-INF/cabecalho.jspf" %>
<%@include file="/WEB-INF/menuprincipal.jspf" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Exercício 6</title>
    </head>
    <body>
        <h1>Cálculo IMC</h1>
        <form action="imc.jsp" method="post">
            <dl>
                <dt><label for="txtA">Altura</label>:</dt>
                <dd><input type="text" name="altura" value="" placeholder="Altura"/></dd>
                <dt><label for="txtA">Massa</label>:</dt>
                <dd><input type="text" name="massa" value="" placeholder="Massa"/></dd>
                <dd><input type="submit" value="Calcular" /></dd>
            </dl>    
    </body>
</html>

<%@include file="/WEB-INF/rodape.jspf" %>  