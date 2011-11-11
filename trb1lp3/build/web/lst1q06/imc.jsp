
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="erro.jsp"%>
<%@include file="/WEB-INF/cabecalho.jspf" %>
<%@include file="/WEB-INF/menu.jspf" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Calculo IMC</title>
    </head>
    <body>
    <%
        try {
            Float altura = Float.parseFloat(request.getParameter("altura"));
            Float massa = Float.parseFloat(request.getParameter("massa"));
            Float valor=(massa/(altura*altura));
    %>
        <h1>Dados IMC</h1>
        <p>O valor da <var>altura</var> é 
            <kdb><%=altura%></kdb>.</p>
        <p>O valor da <var>massa</var> é 
            <kdb><%=massa%></kdb>.</p>
        <p>O valor do IMC é <samp><%=valor%></samp>.</p>
    
    <h2>Tabela IMC</h2>
        <table  border="2" bordercolor="black" whidth="30%" height="30%">
            <tr>
                <td><b>Cálculo IMC</b></td>
                <td><b>Situação</b></td>
            </tr>
            <tr <% if(valor < 18.5){%> style="color:red"<%}%>>
                <td>Abaixo de 18,5</td>
                <td>Você está abaixo do peso ideal</td>
            </tr>
            <tr <% if((valor >= 18.5) && (valor <= 24.9)){%> style="color:red"<%}%>>
                <td>Entre 18,5 e 24,9</td>
                <td>Parabéns! Você está em seu peso normal!</td>
            </tr>
            <tr <% if((valor >= 25) && (valor <= 29.9)){%> style="color:red"<%}%>>
                <td>Entre 25,0 e 29,9</td>
                <td>Você está acima de seu peso (sobrepeso)</td>
            </tr>
            <tr <% if((valor >= 30) && (valor <= 34.9)){%> style="color:red"<%}%>>
                <td>Entre 30,0 e 34,9</td>
                <td>Obesidade grau I</td>
            </tr>
            <tr <% if((valor >= 35) && (valor <= 39.9)){%> style="color:red"<%}%>>
                <td>Entre 35,0 e 39,9</td>
                <td>Obesidade grau II(severa)</td>
            </tr>
            <tr <% if(valor >= 40){%> style="color:red"<%}%>>
                <td>40,0 e acima</td>
                <td>Obesidade grau III(mórbida)</td>
            </tr>
        </table>

    <%       
         } catch (Exception e) {
    %>

    <h1>Erro! <%=e.getMessage()%></h1>
        <p>Dados inválidos!
            Exemplo: <a href="imc.jsp?altura=1.85&massa=55">altura=1.85 e massa=55</a>.</p>
        <%
               }
        %>
    </body>
</html>

<%@include file="/WEB-INF/rodape.jspf" %> 