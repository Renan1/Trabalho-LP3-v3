
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/cabecalho.jspf" %>
<%@include file="/WEB-INF/menu.jspf" %>


<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Juros Compostos</title>
   </head>
   <body>
      <h1>Cálculo Juros Compostos</h1>
      <form action="juros" method="POST">
        <dl>
            <dt><label for ="txtmeses">Meses</label></dt>
            <dd><input type="text" name="meses" value="" placeholder="Meses" id="txtmeses"/></dd>
            <dt><label for ="txttaxa_juros">Taxa de Juros</label></dt>
            <dd><input type="text" name="taxa_juros" value="" placeholder="Taxa de Juros" id ="txttaxa_juros"/></dd>
            <dt><label for ="txtvalor_inicial">Valor Inicial</label></dt>
            <dd><input type="text" name="valor_inicial" value="" placeholder="Valor inicial" id="txtvalor_inicial"/></dd>
            <dd><input type="submit" value="Calcular" /></dd>
        </dl>
        </form>
   </body>
</html>

<%@include file="/WEB-INF/rodape.jspf" %>  