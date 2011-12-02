
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/cabecalho.jspf" %>
<%@include file="/WEB-INF/menu.jspf" %>


<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>IMC</title>
   </head>
   <body>
      <h1>Cálculo IMC</h1>
      <form action="imc" method="POST">
         <dl>
                <dt><label for="txtAltura">Altura</label>:</dt>
                <dd><input type="text" name="altura" value="" placeholder="Altura"/></dd>
                <dt><label for="txtMassa">Massa</label>:</dt>
                <dd><input type="text" name="massa" value="" placeholder="Massa"/></dd>
                <dd><input type="submit" value="Calcular" /></dd>
         </dl>  
      </form>
   </body>
</html>

<%@include file="/WEB-INF/rodape.jspf" %>  