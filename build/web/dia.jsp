<%-- 
    Document   : altaCliente
    Created on : 20/07/2021, 16:16:28
    Author     : Pia
--%>

<%@page import="Logica.Datoshabitacion"%>
<%@page import="Logica.Cliente"%>
<%@page import="Logica.Habitacion"%>
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
                <h2>Reserva por dia</h2>
                    <div class="col m12">
                           <% 
                              String usuz= (String) otrasession.getAttribute("usuario");
   
                             HttpSession misession=request.getSession();
                             List<Habitacion> hab=(List<Habitacion>) request.getSession().getAttribute("lista");
                        
                            //controladora   
                            Controladora control = new Controladora();
                              
                               
                          %>
                        <form action="SVMuestradia" method="POST">
                  
                                <div class="row">
                         
                     
                        <div class="input-field col s6">
                            <input id="decha" name="decha"  type="Date"  class="validate">
                          <label for="decha" data-error="wrong" data-success="right">Fecha</label>
                         </div>
                          <div class="input-field col s4">
                              <button class="btn btn-block" >buscar</button>
                         </div>
                             
                       </div>
                          </form>
                          <%if(hab !=null ){ %>
                        <div class="row">
                            <div class="col s12">
                              <table>
                                  <thead></thead>
                                  <tbody>
                                <%  
                                    
                                   for (Habitacion log : hab) {
                                    long id= log.getId();    
                                     Cliente clie= control.buscaCliente(log.getCliente().getId());
                                      Datoshabitacion dah= control.buscahab(log.getDatoa().getId());
                                      
                                  %>
                                  <td><%=id%></td>
                                  <td><%=clie.getName()%></td>
                                  <td><%=dah.getName()%></td>
                                  <%}%>
                                  </tbody>
                                  
                                      
                                  </table>
                            </div>
                                  
                        </div>
                         <%}%>
                    </div>
           
            </div>
                
            </div>
        </div>
 <%@include file="/pages/footer.jsp" %>
</html>