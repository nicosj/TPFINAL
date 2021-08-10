<%-- 
    Document   : altaCliente
    Created on : 20/07/2021, 16:16:28
    Author     : Pia
--%>

<%@page import="java.util.List"%>
<%@page import="Logica.Cliente"%>
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
                <h2>Mostrar Clientes</h2>
                    <div class="col m12">
                            
                        <table>
                            <thead>
                            <th>id</th>
                            <th>DNI</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                          
                            <th>Editar</th>
                            <th>Eliminar</th>
                            </thead>
                            <tbody>
                                  <% 
                                     //HttpSession misession=request.getSession();
                                     // List<Cliente> lista=(List) request.getSession().getAttribute("lista");
                                    Controladora control = new Controladora();
                                        List<Cliente>     lista = control.traerclientes();
                                  
                                
                               for (Cliente log : lista) {
                                  long id= log.getId();    
                                   String dni= log.getDni(); 
                                   String name= log.getName();
                                   String surname=log.getSurname();
                                  %>
                                       <tr>  
                                           <td>
                                       <%= id  %>         
                                           </td>
                                        <td>
                                       <%= dni %>
                                       </td>
                                        <td>
                                       <%= name  %>
                                       </td>
                                        <td>
                                       <%= surname  %>
                                       </td>
                                       <td>
                                           <form name="borracliente" action="SVEliminar" method="post">
                                               <input type="hidden" name="id" value="<%=id%>">
                                               <button type="submit" class="btn red btn-small">eliminar</button>     
                                           </form>
                                       </td>
                                       <td>
                                          <form name="editacliente" action="SVEditar" method="post">
                                               <input type="hidden" name="id" value="<%=id%>">
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