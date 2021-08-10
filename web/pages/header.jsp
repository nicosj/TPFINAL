

<%@page import="java.io.PrintWriter"%>
<head>
<title>Hotel sistema</title>
 <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/materialize.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css"/>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<script src="http://momentjs.com/downloads/moment.min.js"></script>
</head>
 <body>
     <%
         HttpSession otrasession= request.getSession();
         String usu= (String) otrasession.getAttribute("usuario");
         if(usu == null){
         response.sendRedirect("login.jsp");
         }
      
     %>
     <nav>
 
   <ul id="dropdown1" class="dropdown-content">
  <li><a href="empleado.jsp">alta</a></li>
  <li><a href="empleadoedita.jsp">edita</a></li>
 
</ul>
          <ul id="cliente" class="dropdown-content">
  <li><a href="altaCliente.jsp">alta</a></li>
  <li><a href="Clienteedita.jsp">edita</a></li>
 
</ul>
   <ul id="habitacion" class="dropdown-content">
  <li><a href="habitacion.jsp">alta</a></li>
  <li><a href="habitacionedita.jsp">edita</a></li>
 
</ul>      
  <ul id="muestra" class="dropdown-content">
  <li><a href="dia.jsp">Reservas por dia</a></li>
  <li><a href="muestrah.jsp">Muestra Huespedes</a></li>
 <li><a href="muestraemp.jsp">Muestra Reservas por empleado</a></li>
 <li><a href="muestrahues.jsp">Muestra Reservas por Huesped</a></li>
</ul>
   
         <div class="nav-wrapper">
      <a href="#!" class="brand-logo">Hotel California</a>
      <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
      <ul class="right hide-on-med-and-down">
          
         
          <li><a class="dropdown-trigger"  data-target="cliente" >Clientes <i class="material-icons right">arrow_drop_down</i></a> </li>
        <li><a class="dropdown-trigger"  data-target="habitacion" >habitacion <i class="material-icons right">arrow_drop_down</i></a></li>
        <li><a class="dropdown-trigger"  data-target="dropdown1" >Empleados <i class="material-icons right">arrow_drop_down</i></a></li>
          <li><a href="registro.jsp" >Registro</a></li>
          <li><a <a class="dropdown-trigger" href="#!" data-target="muestra" >Reporte <i class="material-icons right">arrow_drop_down</i></a></li>
            <li>  <span class="badge black">Usuario: <%= usu%></span></li>
      
    
      </ul>
     
    </div>
        

     </nav>

  <ul class="sidenav" id="mobile-demo">
  <li><a href="sass.html">Clientes</a></li>
        <li><a href="badges.html">Habitaciones</a></li>
        <li><a href="collapsible.html">Empleados</a></li>
          <li><a class="dropdown-trigger" href="#!" data-target="dropdown2">Dropdown<i class="material-icons right">arrow_drop_down</i></a></li>
  </ul>
 
