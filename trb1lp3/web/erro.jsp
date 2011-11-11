
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@page isErrorPage="true"%>
    <%@include file="/WEB-INF/cabecalho.jspf" %>
    <%@include file="/WEB-INF/menuprincipal.jspf" %>

            <h1> Erro </h1>
            <p> Erro <%=exception%></p>

    <%@include file="/WEB-INF/rodape.jspf" %>
