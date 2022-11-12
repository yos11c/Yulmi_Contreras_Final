<%-- 
    Document   : home
    Created on : 12/11/2022, 07:55:35
    Author     : Yosmeri C. Cruz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio de Sesion</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="js/script.js" type="text/javascript"></script>
        
        <nav class="navbar navbar-light bg-light">
  <div class="container">
    <a class="navbar-brand" href="#">
      <img src="/docs/5.0/assets/brand/bootstrap-logo.svg" alt="" width="30" height="24">
    </a>
  </div>
</nav>
        
    </head>
     <body>        
            <br>
           <div class="container">             
               <c:if test="${success ==0}">
                   <%--<div class="alert alert-danger" id="error">Usuario o Contraseña Incorrecto</div>--%>
                </c:if>
            <h1>Bienvenido</h1>
            <div class="abs-center">
            <form action="ServletUser" method="POST">
            <div class="form-group">
              <label for="exampleInputEmail1">Ingrese usuario</label>
              <input type="text" class="form-control" name="user" id="user" aria-describedby="emailHelp" placeholder="Ingrese usuario">
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1">Ingrese su contraseña</label>
              <input type="password" class="form-control" name="pass" id="pass" placeholder="Contraseña">
            </div>
            
                 <button type="submit" class="btn btn-primary">Iniciar Sesion</button>
          </form>
        </div>
                 <style> 
                     .abs-center {
                        display: flex;
                        align-items: center;
                        justify-content: center;
                        min-height: 50vh;}
                     .form-group{
                         width: 300px;
                     }
                    h1{text-align: center;} 
                 </style>
    </body>
</html>