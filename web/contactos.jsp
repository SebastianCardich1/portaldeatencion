<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<html>
    
  <head>  
      
      
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"  crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <!-- Required meta tags -->
        
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- font awesome-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
       <!-- owl carousel -->
       <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
       <!--fonts   -->
      <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Roboto+Slab" rel="stylesheet">
       <link rel="stylesheet" href="css/service-style.css" type="text/css">
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <title>Contacto</title>
    </head>
    <body>
            <div class="main-container contact-color">
          <div class="inside-container ">
                  <div class="row row-spc">
                    <div class="col-md-12  col-disp">
                    </div>
                  </div>
            </div>
    </div> 
    <!--menu-->
    <div class="main-container nav-bg-color">
      <div class="inside-container nav-contain">
        <nav class="navbar navbar-expand-lg navbar-light ">
            <img src="image/LOGOSDP.jpg" class="img-fluid" alt="">
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav nav-list ml-auto">
                <a class="menu" href="index.html">INICIO</a>
                <a class="menu" href="services.html">CONSULTAS</a>
                <a class="menu" href="Controlador1?accion=add">REGISTRA TU SOLICITUD</a>
                <a class="menu" href="contactos.jsp">CONTACTOS</a>
                <a class="menu" href="login.jsp">LOGIN</a>
               <span class="menu last-spc color-line"> </span>
          </div>
         </div>
        </nav>
        </div>
     </div> 
    
    <div class="main-container connect">
    <div class="inside-container">
        <div class="row">
              <div class="col-12 subhead">
                    <h1 class="text-center">CONTACTOS</h1>
                  <nav class="breadcrumb page-linker">
                      <a class="breadcrumb-item" href="index.html">Home <i class="fas fa-angle-right"></i></a>
                      <span class="breadcrumb-item active">Contactos</span>
                    </nav>
              </div>
      
        </div>
    </div>
</div>

        
        
 <div class="container p-3 my-3  text-white"  >
    <div class="row">
        <div class="col-md-12 ">
            <div class="well well-sm">
                <form class="form-horizontal" method="post">
                    <fieldset>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon" style=" font-size: 35px;color: skyblue;"></i></span>
                            <div class="col-md-8">
                                <input name="txtNombres" type="text" placeholder="First Name" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"  style=" font-size: 35px; color:skyblue;"></i></span>
                            <div class="col-md-8">
                                <input id="lname" name="txtApellidos" type="text" placeholder="Last Name" class="form-control">
                            </div>
                        </div>

 

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-envelope bigicon"  style=" font-size: 35px;color: skyblue;"></i></span>
                            <div class="col-md-8">
                                <input id="email" name="txtCorreo" type="text" placeholder="Email Address" class="form-control">
                            </div>
                        </div>

 

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-phone-square bigicon"  style=" font-size:35px; color:skyblue;"></i></span>
                            
                            <div class="col-md-8">
                                <input id="phone" name="txtTelefono" type="text" placeholder="Phone" class="form-control">
                            </div>
                        </div>

 

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-pencil-square-o bigicon"  style=" font-size: 35px; color:skyblue;"></i></span>
                            <div class="col-md-8">
                                <textarea class="form-control" id="message" name="txtMensaje" placeholder="Enter your massage for us here. We will get back to you within 2 business days." rows="7"></textarea>
                            </div>
                        </div>

 

                        <div class="form-group">
                            <div class="col-md-12 text-center">
                                <button type="submit" class="btn btn-primary btn-lg"  style="background:skyblue; border-color:skyblue" name="btnInsertar" >Enviar</button>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>
        
 <footer class="page-footer footer-bg">
  <div class="inside-container">
      <div class="row footer-padd">
        <div class=" col-sm-6 col-lg-3 foot-col-padd">
          <div class="foot-logo"><img src="image/piepagina.jpg" alt="" class="img-fluid"></div>
            <div class="dream-text"> 
                
            </div>
        </div>  
         <div class="col-sm-6 col-lg-3 pop-col ">
              <span>Contáctanos</span>
                <div class="row contact-row-margin"> 
                  <i class="fas fa-map-marker-alt contact-icon"></i>
                  <p> IEP-SDP <br>  Mz. A Lt. 3 y 4, SMP </br> </p>
                </div>
                <div class="row contact-row-margin">
                  <i class="fas fa-phone fa-rotate-90 contact-icon"></i>
                  <p> Lima (01) 711 9965 </p>
                </div>
                <div class="row contact-row-margin">
                  <i class="far fa-envelope contact-icon "> </i>
                  <p> iepsdp@hotmail.com</p>
                </div>
            </div>
      </div>
  </div>
</footer>        
        
        
             <%
            if(request.getParameter("btnInsertar")!=null){
            String Nombres=request.getParameter("txtNombres");
            String Apellidos=request.getParameter("txtApellidos");
            String Correo=request.getParameter("txtCorreo");
            int Teléfono=Integer.parseInt(request.getParameter("txtTelefono"));
            String Mensaje=request.getParameter("txtMensaje");
            
            
            Connection cnx=null;
            ResultSet rs=null;
            Statement sta=null;
            try{
            Class.forName("com.mysql.jdbc.Driver");
                        cnx=DriverManager.getConnection("jdbc:mysql://localhost/gestiondocumental?user=root&password=");
                        sta=cnx.createStatement();
            
            sta.execute("insert into contacto values('"+Nombres+"','"+Apellidos+"','"+Correo+"','"+Teléfono+"','"+Mensaje+"')");
            request.getRequestDispatcher("contactos.jsp").forward(request, response);
            }catch(Exception e){
                out.print(e+"");
                
            }
            }
        %>


    </body>
 

    
</html>
