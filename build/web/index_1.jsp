

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="/pages/header.jsp" %>
    <body>
        <h1>Datos</h1>
        <form action="SvTest" method="POST">
            <p>Nombre: <input type="text" name="nombre"></p>
            <p>    Apellido: <input type="text" name="apellido"></p>
            <p> Color de cabello: <select name="pelo"> 
                    <option>-</option>  
                    <option>castaño</option>  
                    <option>Rubio</option>  
                    <option>Rojo</option>  
                </select></p>
                <p>Titulo Universitario: <input type="checkbox" name="titulo" value="true"> </p> 
                <p>Conocimiento de Java
                <input type="radio" name="java" value="bajo"> bajo
                <input type="radio" name="java" value="medio"> medio
                <input type="radio" name="java" value="alto"> alto</p>
                <button> enviar </button>
        </form>
    </body>
</html>
