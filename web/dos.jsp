

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Respuesta de cliente</title>
    </head>
    <body>
        <h1>ingreso lo siguientes datos</h1>
        <p>Nombre: <%= session.getAttribute("nombre")  %></p>
         <p>Apellido: <%= session.getAttribute("apellido")  %></p>
          <p>Pelo: <%= session.getAttribute("pelo")  %></p>
          <p>Tiene Titulo: <%= session.getAttribute("titulo")  %></p>
          <p>Tiene Nievel de Java: <%= session.getAttribute("java")  %></p>
    </body>
</html>
