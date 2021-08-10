

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<title>Hotel sistema</title>
 <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/materialize.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css"/>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

</head>
   

       
<div id="login-page" class="row ">
    <div class="col s12 z-depth-2 card-panel">
      <form action="SVUsuario" method="POST">
        
        <div class="row">
          <div class="input-field col s12">
            <i class="material-icons prefix">face</i>
            <input class="validate" name="usuario" id="usuario" type="text">
            <label for="usuario" data-error="wrong" data-success="right">Usuario</label>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s12">
            <i class="material-icons prefix">lock_outline</i>
            <input id="password" name="password" type="password">
            <label for="password">Password</label>
          </div>
        </div>
      
        <div class="row">
          <div class="input-field col s12">
            <button  class="btn waves-effect waves-light col s12">Login</button>
          </div>
        </div>
     

      </form>
    </div>
  </div> 
        
     
  <%@include file="/pages/footer.jsp" %>
</html>
