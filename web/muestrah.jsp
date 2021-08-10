<%-- 
    Document   : altaCliente
    Created on : 20/07/2021, 16:16:28
    Author     : Pia
--%>

<%@page import="Logica.Habitacion"%>
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
                <h2>Muestra Huespedes</h2>
                   
                    <div class="col m12">
                            
                        <table>
                            <thead>
                            <th>Habitacion</th>
                            <th>DNI</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                          
                          
                            </thead>
                            <tbody>
                                  <% 
                                     //HttpSession misession=request.getSession();
                                     // List<Cliente> lista=(List) request.getSession().getAttribute("lista");
                                    Controladora control = new Controladora();
                                        List<Habitacion>     lista = control.traerhabitacion();
                                  
                                
                               for (Habitacion log : lista) {
                                  int id= log.getDatoa().getId();    
                                  Cliente cli=control.buscaCliente( log.getCliente().getId());
                                   String dni=cli.getDni();
                                        String name=cli.getName();
                                 String surname=cli.getSurname();
                                   
                                   
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
                                       
                                       </tr>
                                  <% }
                               %>
                               
                            </tbody>
                        </table>
              
           
                    </div>
                    </div>
           
            </div>
                
            </div>
        </div>
 <%@include file="/pages/footer.jsp" %>
</html>