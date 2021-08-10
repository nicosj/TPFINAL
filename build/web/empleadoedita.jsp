<%-- 
    Document   : altaCliente
    Created on : 20/07/2021, 16:16:28
    Author     : Pia
--%>

<%@page import="Logica.Login"%>
<%@page import="java.util.List"%>
<%@page import="Logica.Controladora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <%@include file="/pages/header.jsp" %>
   <!--
        this.numero = numero;
        this.piso = piso;
        this.name = name;
        this.tipo = tipo;
        this.price = price;
   -->
     
        <div class="cointainer">
            <div class="card z-depth-2">
            <div class="row center">
                <h2>Muestra empleados</h2>
                    <div class="col m12">
                            
                        <table>
                            <thead>
                            <th>DNI</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Usuario</th>
                            <th>Editar</th>
                            <th>Eliminar</th>
                            </thead>
                            <tbody>
                               <% Controladora control = new Controladora();
                               List <Login> lista = control.traerpersonas();
                               for (Login log : lista) {
                                       %>
                                       <tr>  
                                        <td>
                                       <%= log.getDni() %>
                                       </td>
                                        <td>
                                       <%= log.getName() %>
                                       </td>
                                        <td>
                                       <%= log.getSurname() %>
                                       </td>
                                        <td>
                                       <%= log.getUsuario() %>
                                       </td>
                                       </tr>
                                  <% }
                               %>
                            </tbody>
                        </table>
              
           
                    </div>
           
                  </div>
                
            </div>
        </div>
 <%@include file="/pages/footer.jsp" %>
</html>