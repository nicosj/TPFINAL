<%-- 
    Document   : altaCliente
    Created on : 20/07/2021, 16:16:28
    Author     : Pia
--%>

<%@page import="java.util.List"%>
<%@page import="Logica.Cliente"%>
<%@page import="Logica.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <%@include file="/pages/header.jsp" %>
   
     
        <div class="cointainer">
            <div class="card z-depth-2">
            <div class="row center">
               
                    <div class="col m12">
                        <% 
                        HttpSession misession=request.getSession();
                        String mod=(String) request.getSession().getAttribute("mod");
                        
                        if(mod == "si"){
                         Cliente cli=(Cliente) request.getSession().getAttribute("cliente");
                        misession.setAttribute("mod","no");
                        %>
                         <h2>Alta Cliente</h2>
                        <form action="SVCliente" method="POST">      
                        <div class="input-field col s12">
                            <input id="id" name="id"  type="number"  readonly value="<%= cli.getId() %>" class="validate">
                          <label for="id" data-error="wrong" data-success="right">ID</label>
                         </div>
                            <div class="input-field col s12">
                            <input id="dni" name="dni"  type="number"  value="<%= cli.getDni() %>" class="validate">
                          <label for="dni" data-error="wrong" data-success="right">DNI * solo numeros</label>
                         </div>
                         <div class="input-field col s12">
                             <input id="name" name="name"  type="text" value="<%= cli.getName() %>" class="validate">
                          <label for="name" data-error="wrong" data-success="right">Nombre</label>
                         </div>
                      <div class="input-field col  s12">
                          <input id="surname" name="surname" value="<%= cli.getSurname()%>" type="text" class="validate">
                        <label for="surname">Apellido</label>
                      </div>
                         <div class="input-field col s12">
                             <input id="nacimiento" name="nacimiento" type="date" value="<%=cli.getNacimiento() %>" class="validate">
                          <label for="nacimiento" data-error="wrong" data-success="right">Fecha de Nacimiento</label>
                      </div>
                      <div class="input-field col  s12">
                          <input id="direccion" name="direccion" value="<%=cli.getDireccion()%>" type="text" class="validate">
                        <label for="direccion">direccion</label>
                      </div>
                         <div class="input-field col  s12">
                             <input id="profesion" name="profesion" value="<%= cli.getProfesion()%>" type="text" class="validate">
                        <label for="profesion">Profesion</label>
                      </div>
                <div class="col s12">
            <button class="btn   waves-effect waves-light" type="submit" name="action"> Modificar Cliente  <i class="material-icons right">send</i></button> 
                </div>
           
                      </form>
                     <% }  else {  %>
                     <form action="SVCliente" method="POST">      
                        <div class="input-field col s12">
                            <input id="dni" name="dni"  type="number" class="validate">
                          <label for="dni" data-error="wrong" data-success="right">DNI * solo numeros</label>
                         </div>
                         <div class="input-field col s12">
                        <input id="name" name="name"  type="text" class="validate">
                          <label for="name" data-error="wrong" data-success="right">Nombre</label>
                         </div>
                      <div class="input-field col  s12">
                        <input id="surname" name="surname" type="text" class="validate">
                        <label for="surname">Apellido</label>
                      </div>
                         <div class="input-field col s12">
                        <input id="nacimiento" name="nacimiento" type="date" class="validate">
                          <label for="nacimiento" data-error="wrong" data-success="right">Fecha de Nacimiento</label>
                      </div>
                      <div class="input-field col  s12">
                        <input id="direccion" name="direccion" type="text" class="validate">
                        <label for="direccion">direccion</label>
                      </div>
                         <div class="input-field col  s12">
                        <input id="profesion" name="profesion" type="text" class="validate">
                        <label for="profesion">Profesion</label>
                      </div>
                <div class="col s12">
            <button class="btn   waves-effect waves-light" type="submit" name="action"> Alta CLiente  <i class="material-icons right">send</i></button> 
                </div>
           
                      </form>
                   <% } %>
                    </div>
           
            </div>
                
            </div>
        </div>
 <%@include file="/pages/footer.jsp" %>
</html>