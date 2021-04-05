<%-- 
    Document   : application
    Created on : 5 de abr. de 2021, 10:19:40
    Author     : Rodrigo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("set")!=null){
        application.setAttribute("application.name", request.getParameter("name"));
        response.sendRedirect(request.getRequestURI());
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Applicaion</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
        <h2>Atributo de Aplicação</h2>
        <%if(application.getAttribute("application.name")!=null){%>
            <div>name: <%= application.getAttribute("application.name") %></div>
        <%}%>
        
        <form>
            <input type="text" name="name"/>
            <input type="submit" name="set" value="Set"/>
        </form>
        
        <%@ include file="WEB-INF/jspf/rodape.jspf" %>  
    </body>
</html>
