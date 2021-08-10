

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="/pages/header.jsp" %>

       
<div id="login-page" class="row ">
    <div class="col s12 z-depth-2 card-panel">
      <form class="login-form">
        <div class="row">
        </div>
        <div class="row">
          <div class="input-field col s12">
            <i class="material-icons prefix">face</i>
            <input class="validate" id="email" type="email">
            <label for="email" data-error="wrong" data-success="right">Usuario</label>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s12">
            <i class="material-icons prefix">lock_outline</i>
            <input id="password" type="password">
            <label for="password">Password</label>
          </div>
        </div>
      
        <div class="row">
          <div class="input-field col s12">
            <a href="#" class="btn waves-effect waves-light col s12">Login</a>
          </div>
        </div>
       

      </form>
    </div>
  </div> 
        
     
  <%@include file="/pages/footer.jsp" %>
</html>
