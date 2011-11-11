
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="erro.jsp"%>
<%@include file="/WEB-INF/cabecalho.jspf" %>
<%@include file="/WEB-INF/menuprincipal.jspf" %>

<!DOCTYPE html>
<html>
    <head>
        <meta  charset="UTF-8">
        <title>Exercício 4</title>
    </head>
    <body>
        <h1>Dados Numéricos</h1>
        <form action="intpositivos.jsp" method="post">
            <dl>
                <dt><label for="txtA">N1</label>:</dt>
                <dd><input type="text" name="N1" value=""/></dd>
                <dt><label for="txtA">N2</label>:</dt>
                <dd><input type="text" name="N2" value=""/></dd>
                <dt><label for="txtA">D</label>:</dt>
                <dd><input type="text" name="D" value=""/></dd>
                <dd><input type="submit" value="Calcular" /></dd>
            </dl>    
    </body>
</html>

<%@include file="/WEB-INF/rodape.jspf" %> 