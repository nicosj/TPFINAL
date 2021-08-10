<%-- 
    Document   : altaCliente
    Created on : 20/07/2021, 16:16:28
    Author     : Pia
--%>

<%@page import="java.util.Date"%>
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
                             List<Habitacion> datoxx=(List<Habitacion>) request.getSession().getAttribute("arhivox");
                             Date dechax =(Date) request.getSession().getAttribute("fecha");
                          
                              
                               
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
                          <%if(datoxx !=null ){ %>
                        <div class="row">
                            <div class="col s12">
                             
                              <table>
                                  <thead>
                                  <th>id</th>
                                  <th>apellido</th>
                                  <th>nombre habitacion</th>
                                  </thead>
                                  <tbody>
                                <%  
                                    
                                   for (Habitacion log : datoxx) {
                                    long id= log.getId();    
                                      //controladora   
                                     Controladora control = new Controladora();
                                     Cliente clie= control.buscaCliente(log.getCliente().getId());
                                      Datoshabitacion dah= control.buscahab(log.getDatoa().getId());
                                      
                                  %>
                                  <tr>
                                  <td><%=id%></td>
                                  <td><%=clie.getName()%></td>
                                  <td><%=dah.getName()%></td>
                                  </tr>
                                  <%}%>
                                  
                                  </tbody>
                                  
                                      
                                  </table>
                            </div>
                                  
                        </div>
                         <%}else{%>
                         <h3>nada por mostrar</h1>
                         <% }%>
                    </div>
           
            </div>
                
            </div>
        </div>
 <%@include file="/pages/footer.jsp" %>
</html>