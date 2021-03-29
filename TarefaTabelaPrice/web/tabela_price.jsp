<%-- 
    Document   : tabela_price
    Created on : 28 de mar. de 2021, 21:15:21
    Author     : Rodrigo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>tabela</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf"%>
        <h1>Tabela price</h1>
        <p>_______________________________________________</p>

        <form>
        
             <label>Valor Presente:</label><br>
            <input type="number" name="valorP"><br><br>
            <label>Juros em %:</label><br>
            <input type="number" name="juros"><br><br>
            <label>Tempo(em meses):</label><br>
            <input type="number" name="meses"><br><br>
            <input type="submit" value="Calcular"><br><br>
            
             <%
                 try{
               double vp = Double.parseDouble(request.getParameter("valorP"));
            double j = Double.parseDouble(request.getParameter("juros"));
            double n = Double.parseDouble(request.getParameter("meses"));
            double jurosR = j / 100;
            double vf = vp*(1+jurosR*n);
            out.println("Valor Presente: " + vp);
            out.println("<br><br>");
            out.println("Juros em %: " + j);
            out.println("<br><br>");
            out.println("Tempo(em meses): " + n);
            out.println("<br><br>");
            out.println("<p>------------------------------------------</p>");
            out.println("Valor Futuro: " + vf);
            out.println("<br><br>");
         } catch(Exception ex){
           }
              
                 %>
        </form>
         <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>