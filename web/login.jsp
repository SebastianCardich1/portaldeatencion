<%@page import="Modelo.Usuarios"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
  <head>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"  crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
         <link href="https://fonts.googleapis.com/css?family=Roboto+Slab" rel="stylesheet">
         <link rel="stylesheet" href="css/icomoon/style.css">
        <link rel="stylesheet" href="css/logincss.css" type="text/css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/style1.css">
        <link rel="stylesheet" href="css/style_1.css">
         <title>Login</title>
    </head>
    <body>
        <form name="frmLogin" action="servUsuarios" method="POST">
             <div class="container-fluid px-1 px-md-5 px-lg-1 px-xl-5 py-5 mx-auto">
                        <div class="card card0 border-0">
                   <div class="row d-flex">
                       <div class="col-lg-6">
                           <div class="card1 pb-5">
                               <div class="row"> <img src="image/LOGOSDP.jpg" class="logo"> </div>
                               <div class="row px-3 justify-content-center mt-4 mb-5 border-line"> <img src="image/login.jpg" class="image"> </div>
                           </div>
                       </div>
                       <div class="col-lg-6">
                           <div class="card2 card border-0 px-4 py-5">

                               <div class="row px-3"> <label class="mb-1">
                                       <h6 class="mb-0 text-sm">Codigo del docente</h6>
                                   </label> <input class="mb-4" type="text" name="txtUsuario" value="" placeholder="Enter a valid email address"> </div>
                               <div class="row px-3"> <label class="mb-1">
                                       <h6 class="mb-0 text-sm">Contraseña</h6>
                                   </label> <input type="password" name="txtContra" value="" placeholder="Enter password"> </div>
                               <div class="row px-1 mb-1">
                             
                               <div class="row mb-3 px-3"><input class="btn btn-blue text-center" type="submit" value="Iniciar Sesion" name="btnIniciar" /></div>
                               <div class="row mb-3 px-3"><input class="btn btn-blue text-center" type="submit" onclick="location.href='index.html'" value="Regresar" name="btnCancelar" /></div>
                           </div>
                       </div>
                   </div>
                   <div class="bg-blue py-4">

                   </div>
               </div>
           </div> 
        </form>
        
        <%  
            HttpSession sesion = request.getSession();
            
            
             List<Usuarios> datos = new ArrayList<Usuarios>();
                if(request.getAttribute("fail")!=null){
                    out.print("<script>alert('Ususario o contra erroneos!');</script>   ");
                }
                if(request.getAttribute("datos")!=null){
                    out.print("<script>alert('Bienvenido al sistema!');</script>   ");
                    datos = (List<Usuarios>)request.getAttribute("datos");
                    String nombrecompleto="";
                    int nivel=0;
                    for(Usuarios u : datos){
                        nombrecompleto = u.getNombrecompleto();
                        nivel = u.getNivel();
                        
                    }
                    sesion.setAttribute("usuario", nombrecompleto);
                    sesion.setAttribute("nivel",nivel);
                    response.sendRedirect("principal.jsp"); 
                 
                }
                if(request.getParameter("cerrar")!=null){
                    sesion.invalidate();
                    response.sendRedirect("login.jsp");
                }

        %>

    </body>
</html>
