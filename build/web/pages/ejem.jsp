<%-- 
    Document   : ejem
    Created on : 08/08/2021, 12:47:46
    Author     : Pia
--%>

<%@page import="Logica.Login"%>
<%@page import="Logica.Login"%>
<%@page import="Logica.Persona"%>
<%@page import="java.util.List"%>
<%@page import="Logica.Controladora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  Controladora control = new Controladora();
                List <Login> lista = control.traerpersonas();
                for (Login per : lista){
                String nom = per.getName();
                }
        %>
    </body>
</html>
