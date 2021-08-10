<%-- 
    Document   : altaCliente
    Created on : 20/07/2021, 16:16:28
    Author     : Pia
--%>

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
                <h2>Alta Habitacion</h2>
                    <div class="col m12">
                     <form action="SVHabitacion" method="POST">      
                        <div class="input-field col s12">
                            <input id="numero" name="numero"  type="number"  class="validate">
                          <label for="numero" data-error="wrong" data-success="right">Numero</label>
                         </div>
                         <div class="input-field col s12">
                        <input id="piso" name="piso"  type="text" class="validate">
                          <label for="piso" data-error="wrong" data-success="right">Piso</label>
                         </div>
                      <div class="input-field col  s12">
                        <input id="nombre" name="nombre" type="text" class="validate">
                        <label for="nombre">Nombre</label>
                      </div>
                        <div class="input-field col  s12">
                            <select id="tipo" name="tipo">
                            <option value="" disabled selected>Elejir</option>
                            <option value="single">Single</option>
                            <option value="doble">Doble</option>
                            <option value="triple">Triple</option>
                            <option value="multiple">Multiple</option>
                          </select>
                        <label for="tipo">Tipo de habitacion</label>
                      </div>
                      <div class="input-field col  s12">
                        <input id="price" name="price" type="number" class="validate">
                        <label for="price">Precio</label>
                      </div>
                <div class="col s12">
            <button class="btn   waves-effect waves-light" type="submit" name="action"> Alta Habitacion  <i class="material-icons right">send</i></button> 
                </div>
           
                      </form>
                    </div>
           
            </div>
                
            </div>
        </div>
 <%@include file="/pages/footer.jsp" %>
</html>