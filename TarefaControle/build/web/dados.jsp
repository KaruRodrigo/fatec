<%-- 
    Document   : dados
    Created on : 5 de abr. de 2021, 11:24:20
    Author     : Rodrigo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Seus Dados <br/><br/>
        <% 
            String usuario = (String) session.getAttribute("usuario");
            if(usuario == null){
                response.sendRedirect("index.jsp");
            } else {
            out.print("Nome: " +usuario+" <br/>" ); 
            }
        %>
        <br/><br/>
        <a href= "index.jsp">Deslogar<a/>
    </body>
</html>
