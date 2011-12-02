
<%@page import="br.cesjf.lp3.dominio.Montante"%>
<%@page import="java.util.List"%>
<%@page import="br.cesjf.lp3.dominio.Juros"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/cabecalho.jspf" %>
<%@include file="/WEB-INF/menu.jspf" %>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Cálculo Juros Compostos</title>
   </head>
   <body>
      <jsp:useBean id="valorJuros" scope="request" class="br.cesjf.lp3.dominio.Juros" />
      <h1>Juros Compostos: Resultado</h1>
      <p>Para um investimento inicial de: <samp><jsp:getProperty name="valorJuros" property="valor_inicial" /></samp> 
          a uma taxa de juros compostos de: <samp><jsp:getProperty name="valorJuros" property="taxa_juros" /></samp> 
          ao mês, você terá <samp><jsp:getProperty name="valorJuros" property="resultado" /></samp>
          ao final de <samp><jsp:getProperty name="valorJuros" property="meses" /></samp> meses!</p>
   </body>
   <% 
            
        List<Montante> investimento = (List<Montante>)request.getAttribute ("investimento");
                
        for (int i = 0; i < investimento.size(); i++)
        { 
            out.print(investimento.get(i).getValor());
        }
        
        
        
        
   %>
   
   
   
   </html>

<%@include file="/WEB-INF/rodape.jspf" %> 