
<%@page import="br.cesjf.lp3.dominio.IMC"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/cabecalho.jspf" %>
<%@include file="/WEB-INF/menu.jspf" %>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Cálculo IMC</title>
   </head>
   <body>
      <jsp:useBean id="valorIMC" scope="request" class="br.cesjf.lp3.dominio.IMC" />
      <h1>IMC: Resultado</h1>
      <p>Com uma massa: <samp><jsp:getProperty name="valorIMC" property="massa" /></samp> 
          e uma altura: <samp><jsp:getProperty name="valorIMC" property="altura" /></samp> 
          temos o valor de IMC igual a <samp><jsp:getProperty name="valorIMC" property="resultado" /></samp>.</p>
   </body>
   <%     
        IMC dadoRecebido = (IMC)request.getAttribute ("valorIMC");
 
        out.print(dadoRecebido.getResultado());     
   %>
  
   <h2>Tabela IMC</h2>
        <table  border="2" bordercolor="black" whidth="30%" height="30%">
            <tr>
                <td><b>Cálculo IMC</b></td>
                <td><b>Situação</b></td>
            </tr>
            <tr <% if(dadoRecebido.getResultado() < 18.5){%> style="color:red"<%}%>>
                <td>Abaixo de 18,5</td>
                <td>Você está abaixo do peso ideal</td>
            </tr>
            <tr <% if((dadoRecebido.getResultado() >= 18.5) && (dadoRecebido.getResultado() <= 24.9)){%> style="color:red"<%}%>>
                <td>Entre 18,5 e 24,9</td>
                <td>Parabéns! Você está em seu peso normal!</td>
            </tr>
            <tr <% if((dadoRecebido.getResultado() >= 25) && (dadoRecebido.getResultado() <= 29.9)){%> style="color:red"<%}%>>
                <td>Entre 25,0 e 29,9</td>
                <td>Você está acima de seu peso (sobrepeso)</td>
            </tr>
            <tr <% if((dadoRecebido.getResultado() >= 30) && (dadoRecebido.getResultado() <= 34.9)){%> style="color:red"<%}%>>
                <td>Entre 30,0 e 34,9</td>
                <td>Obesidade grau I</td>
            </tr>
            <tr <% if((dadoRecebido.getResultado() >= 35) && (dadoRecebido.getResultado() <= 39.9)){%> style="color:red"<%}%>>
                <td>Entre 35,0 e 39,9</td>
                <td>Obesidade grau II(severa)</td>
            </tr>
            <tr <% if(dadoRecebido.getResultado() >= 40){%> style="color:red"<%}%>>
                <td>40,0 e acima</td>
                <td>Obesidade grau III(mórbida)</td>
            </tr>
        </table>
   
</html>

<%@include file="/WEB-INF/rodape.jspf" %> 

