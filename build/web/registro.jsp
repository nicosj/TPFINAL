<%-- 
    Document   : altaCliente
    Created on : 20/07/2021, 16:16:28
    Author     : Pia
--%>

<%@page import="Logica.Login"%>
<%@page import="Logica.Datoshabitacion"%>
<%@page import="Logica.Cliente"%>
<%@page import="java.util.List"%>

<%@page import="Logica.Controladora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <%@include file="/pages/header.jsp" %>
     
        <div class="cointainer">
            <div class="card z-depth-2">
            <div class="row center">
                <h2>Registro de Habitacion</h2>
                    <div class="col m12">
                          <% 
                              String usuz= (String) otrasession.getAttribute("usuario");
   
                             HttpSession misession=request.getSession();
                             Cliente cli=(Cliente) request.getSession().getAttribute("clientereg");
                           Datoshabitacion habitacion=(Datoshabitacion) request.getSession().getAttribute("habitacion");
                            Login empleado=(Login) request.getSession().getAttribute("empleado");
                            //controladora   
                            Controladora control = new Controladora();
                               List <Datoshabitacion> dah= control.traertraerdatoshab();
                               List <Login> log=control.traerpersonas();
                           
                          %>
                          
                          <form action="SVPivot" method="POST">
                                <div class="row">
                                    <input type="hidden" name="manag" value="<%= usuz %>">
                              <div class="input-field col  s12">
                            <select  id="tipo" name="tipo">
                                 <%
                                    
                                     for (Datoshabitacion dahx : dah) 
                                 {
                                     long id= dahx.getId();    
                                   String tipo= dahx.getTipo(); 
                                   int piso= dahx.getPiso(); 
                                   String name= dahx.getName();
                                   float price=dahx.getPrice(); 
                                  %>
                           <option value="<%=id%>">Numero:0<%= id  %>- Piso:0<%= piso  %> - Tipo: <%= tipo  %> - Nombre: <%=name%> Precio: $ <%=price%> </option>
                        
                           <% } %>
                             </select>
                        <label for="tipo">Elegir Tipo de Habitacion</label>
                     
                        <div class="input-field col s6">
                            <input id="dni" name="dni"  type="number"  class="validate">
                          <label for="dni" data-error="wrong" data-success="right">DNI</label>
                         </div>
                          <div class="input-field col s4">
                              <button class="btn btn-block" >buscar</button>
                         </div>
                             
                       </div>
                          </form>
                        <% if(cli !=null){  %>
                        
                     <form action="SVRegistra" method="POST">
                   <input type="hidden" name="xfin" value="<%= empleado.getId() %>">
                         <input type="hidden" name="client" value="<%= cli.getId() %>">
                                <input type="hidden" name="manag" value="">
                         <div class="input-field col s6">
                             <input id="piso" name="piso" disabled value="<%=cli.getSurname()%>" type="text" class="validate">
                          <label for="piso" data-error="wrong"  data-success="right">Apellido</label>
                         </div>
                      <div class="input-field col  s6">
                        <input id="nombre" name="nombre" disable value="<%=cli.getName()%>" type="text" class="validate">
                        <label for="nombre">Nombre</label>
                      </div>
                        <div class="input-field col s6">
                             <input id="nomhab" name="nomhab" disabled value="<%=habitacion.getName()%>" type="text" class="validate">
                          <label for="nomhab" data-error="wrong"  data-success="right">Nombre habitacion</label>
                         </div>
                      <div class="input-field col  s6">
                        <input id="numhab" name="numhab" disable value="<%=habitacion.getId()%>" type="text" class="validate">
                        <label for="numhab">Numero habitacion</label>
                      </div>
                        
                      
                               <div class="input-field col s6">
                        <input id="dede" name="desde" type="date"  class="validate">
                          <label for="desde" data-error="wrong" data-success="right">Desde</label>
                      </div>
                               <div class="input-field col s6">
                                   <input id="hasta" name="hasta" type="date" onchange="calcula()" class="validate">
                          <label for="hasta" data-error="wrong" data-success="right">hasta</label>
                      </div>
                      <div class="input-field col  s6">
                          <input id="price" name="price" type="number" value="<%= habitacion.getPrice() %>" class="validate">
                        <label for="price">Precio por dia</label>
                      </div>
                         <div class="input-field col  s6">
                        <input id="price" name="price" type="number"value="<%= habitacion.getPrice() %>" class="validate">
                        <label for="price">total</label>
                      </div>
                <div class="col s12">
            <button class="btn   waves-effect waves-light" type="submit" name="action"> Alta Habitacion  <i class="material-icons right">send</i></button> 
                </div>
           
                      </form>
                          <%     } cli=null; empleado=null;%>
                    </div>
           
            </div>
                
            </div>
        </div>
 <%@include file="/pages/footer.jsp" %>
</html> 