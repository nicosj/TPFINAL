<%-- 
    Document   : altaCliente
    Created on : 20/07/2021, 16:16:28
    Author     : Pia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <%@include file="/pages/header.jsp" %>
   
     
        <div class="cointainer">
            <div class="card z-depth-2">
            <div class="row center">
                <h2>Alta Empleado</h2>
                    <div class="col m12">
                        <form action="SVEmpleado" method="POST">
                        <div class="input-field col s12">
                            <input id="dni" name="dni" type="number" class="validate">
                          <label for="dni" data-error="wrong" data-success="right">DNI</label>
                      </div>
                            <div class="input-field col s12">
                                <input id="name" name="name" type="text" class="validate">
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
                        <select id="cargo" name="cargo">
                            <option value="" disabled selected>Elejir</option>
                            <option value="recepcionista">Recepcionista</option>
                            <option value="ayudante de recepcion">Ayudante de Recepcion</option>
                            <option value="segundo jefe de recepcion">Segundo Jefe de recepcion</option>
                            <option value="jefe de recepcion">Jefe de recepcion</option>
                          </select>
                        <label for="cargo">Cargo</label>
                      </div>
                        <div class="input-field col s12">
                            <input id="usuario" name="usuario" type="text" class="validate">
                          <label for="usuario" data-error="wrong" data-success="right">Usuario</label>
                      </div>
                      <div class="input-field col  s12">
                          <input id="password" name="password" type="password" class="validate">
                        <label for="password">Contraseña</label>
                      </div>
                        <div class="input-field col  s12">
                            <input id="repassword" name="repassword" type="password" class="validate">
                        <label for="repassword">Repita Contraseña</label>
                      </div>
                   
                <div class="col s12">
            <button class="btn   waves-effect waves-light" type="submit" name="action"> Alta Personal  <i class="material-icons right">send</i></button> 
                </div>
                              
                </form> 
            </div>
            </div>
                
            </div>
        </div>
 <%@include file="/pages/footer.jsp" %>
</html>