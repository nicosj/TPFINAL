<%-- 
    Document   : altaCliente
    Created on : 20/07/2021, 16:16:28
    Author     : Pia
--%>

<%@page import="Logica.Login"%>
<%@page import="Logica.Controladora"%>
<%@page import="java.util.List"%>
<%@page import="Logica.Habitacion"%>
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
                <h4>Muestra habitaciones por empleado</h4>
                    <div class="col m12">
                    <% 
                              String usuz= (String) otrasession.getAttribute("usuario");
   
                             HttpSession misession=request.getSession();
                             List<Habitacion> habo=(List<Habitacion>) request.getSession().getAttribute("chico");
                        
                            //controladora   
                            Controladora control = new Controladora();
                              
                               
                          %>
                        <form action="SVMuestraemp" method="POST">
                  
                                <div class="row">
                         
                     
                        <div class="input-field col s6">
                            <select name="idemp" id="idemp">
                                <%
                                  List<Login> loco= control.traerpersonas();
                                 for (Login log : loco) {
                                     long idx= log.getId();
                                     String namex= log.getName();
                                 
                                %>
                                <option value="<%=idx %>"> <%=namex %></option>
                                <%}%>
                            </select>
                          <label for="idemp" data-error="wrong" data-success="right">empleado</label>
                         </div>
                          <div class="input-field col s4">
                              <button class="btn btn-block" >buscar</button>
                         </div>
                             
                       </div>
                          </form>
                          <%if(habo !=null ){ %>
                        <div class="row">
                            <div class="col s12">
                              <table>
                                  <thead>
                                  <th>numero</th>
                                  <th>nombre</th>
                                  <th>piso</th>
                                  </thead>
                                  <tbody>
                                      
                                <%  
                                    
                                   for (Habitacion habx : habo) {
                                    long id= habx.getId();
                                    String name= habx.getDatoa().getName();
                                     int num=habx.getDatoa().getId();
                                     int piso =habx.getDatoa().getPiso();
                                      
                                  %>
                                  <tr>
                                  <td><%=num%></td>
                                  <td><%=name%></td>
                                  <td><%=piso%></td>
                                  </tr>
                                  <%  } 
                                         
                                  %>
                                  </tbody>
                                  
                                      
                                  </table>
                            </div>
                                  <% habo=null; }else{ %> 
                                  <h1>nada</h1>
                            <%}  
                                    
                                   %>
                        </div>
                     
                    </div>
                    </div>
           
            </div>
                
            </div>
        </div>
 <%@include file="/pages/footer.jsp" %>
</html>