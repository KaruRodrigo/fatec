<%-- 
    Document   : index
    Created on : 5 de abr. de 2021, 10:01:13
    Author     : Rodrigo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tarefa - Controle de acesso</title>
    </head>
    <body>
        <%@ include file="WEB-INF/jspf/menu.jspf" %>
        <h2>Página inicial</h2>
        <h3>Login</h3>
        
        <form action="index.jsp" method="post">
            Usuário: <br/><input type="text" name="usuario" /> <br/>
            <input type="submit" value="Logar" />
        </form>
        <%
            String usuario = request.getParameter("usuario");
            
            if(usuario!=null && !usuario.isEmpty()) {
                session.setAttribute("usuario", usuario);
                response.sendRedirect("dados.jsp"); 
                        }%>
        <%@ include file="WEB-INF/jspf/rodape.jspf" %>      
    </body>
</html>
