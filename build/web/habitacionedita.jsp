<%-- 
    Document   : altaCliente
    Created on : 20/07/2021, 16:16:28
    Author     : Pia
--%>

<%@page import="Logica.Datoshabitacion"%>
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
                <h2>Muestra datos de Habitaciones</h2>
                    <div class="col m12">
                        <table border="1x">
                            <thead>
                            <th>numero</th>
                            <th>piso</th>
                            <th>nombre</tha>
                            <th>tipo</th>
                            <th>precio</th>
                            <th>editar</th>
                            <th>eliminar</th>
                            </thead>
                            <tbody>
                                  <% Controladora control = new Controladora();
                               List <Datoshabitacion> lista = control.traertraerdatoshab();
                               for (Datoshabitacion log : lista) {
                                       %>
                                       <tr>  
                                        <td>
                                       <%= log.getId() %>
                                       </td>
                                        <td>
                                       <%= log.getPiso() %>
                                       </td>
                                        <td>
                                       <%= log.getName() %>
                                       </td>
                                        <td>
                                       <%= log.getTipo() %>
                                       </td>
                                        <td>
                                       <%= log.getPrice() %>
                                       </td>
                                        <td>
                                           <form name="borracliente" action="SVEliminahab" method="post">
                                               <input type="hidden" name="id" value="<%=log.getId()%>">
                                               <button type="submit" class="btn red btn-small">eliminar</button>     
                                           </form>
                                       </td>
                                       <td>
                                          <form name="editacliente" action="SVEditahab" method="post">
                                               <input type="hidden" name="id" value="<%=log.getId()%>">
                                               <button type="submit" class="btn btn-small">editar</button>     
                                           </form>
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