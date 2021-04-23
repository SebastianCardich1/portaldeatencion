<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" crossorigin="anonymous">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"  crossorigin="anonymous">
        <!-- owl carousel -->
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
        <!--fonts   -->
         <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab" rel="stylesheet">
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

   
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <link rel="stylesheet" href="css/service-style.css" type="text/css">
         <script language="javascript" type="text/javascript">
        function DNI(string){//Solo numeros
            var out = '';
            var filtro = '1234567890';//Caracteres validos

            //Recorrer el texto y verificar si el caracter se encuentra en la lista de validos 
            for (var i=0; i<8; i++)
               if (filtro.indexOf(string.charAt(i)) != -1) 
                     //Se añaden a la salida los caracteres validos
                     out += string.charAt(i);

            //Retornar valor filtrado
            return out;
        } 
        
        function Nombres(string){//solo letras y numeros
         var out = '';
         //Se añaden las letras validas
         var filtro = 'abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZ';//Caracteres validos
	
         for (var i=0; i<string.length; i++)
         if (filtro.indexOf(string.charAt(i)) != -1) 
	     out += string.charAt(i);
            return out;
        }
        
        
           function telefono(string){//Solo numeros
            var out = '';
            var filtro = '1234567890';//Caracteres validos

            //Recorrer el texto y verificar si el caracter se encuentra en la lista de validos 
            for (var i=0; i<8; i++)
               if (filtro.indexOf(string.charAt(i)) != -1) 
                     //Se añaden a la salida los caracteres validos
                     out += string.charAt(i);

            //Retornar valor filtrado
            return out;
        } 
        
        
          
         function codigo(string){//Solo numeros
            var out = '';
            var filtro = 'abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZ1234567890';//Caracteres validos

            //Recorrer el texto y verificar si el caracter se encuentra en la lista de validos 
            for (var i=0; i<9; i++)
               if (filtro.indexOf(string.charAt(i)) != -1) 
                     //Se añaden a la salida los caracteres validos
                     out += string.charAt(i);

            //Retornar valor filtrado
            return out;
        } 
        
        
       
        


        </script>
        <title>Solicitudes en linea</title>
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
                <a class="menu" href="Controlador1?accion=add">REGRISTRA TU SOLICITUD</a>
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
                    <h1 class="text-center">REGISTRO DE SOLICITUD</h1>
                  <nav class="breadcrumb page-linker">
                      <a class="breadcrumb-item" href="index.html">Home <i class="fas fa-angle-right"></i></a>
                      <span class="breadcrumb-item active">Registro de solicitud</span>
                    </nav>
              </div>
      
        </div>
    </div>
</div>
  
        <div class="container">
            <div class="col-lg-6">

                <form name="form_solicitud" action="Controlador1">
                    <div>
                        <br>
                    <label for="correo">CORREO DEL ALUMNO:</label>
                    <input class="form-control" type="email" name="txtcorreoalumno" pattern="^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$" required> <i class="fa fa-check check-ok"></i>
                    </div>
                    <br>
                    CÓDIGO DEL ALUMNO: <br>
                    <input class="form-control" type="text" name="txtcodigoalumno" onkeyup="this.value=codigo(this.value)"><br>
                    APELLIDOS:<br>
                    <input class="form-control" type="text" name="txtapellidos" ><br>
                    NOMBRES: <br>
                    <input class="form-control" type="text" name="txtnombres" ><br>
                    DNI: <br>
                    <input class="form-control" type="text" name="txtdni"  onkeyup="this.value=DNI(this.value)"><br>
                    TELEFONO:<br>
                    <input class="form-control" type="text" name="txttelefono"  id="txttelefono" onkeyup="this.value=telefono(this.value)"><br>
                    SEDE: <br>
                    <input class="form-control" type="text" name="txtsede" ><br>
                    TURNO:<br>
                    <input class="form-control" type="text" name="txttipoprograma" ><br>
                    GRADO: <br>
                    <input class="form-control" type="text" name="txtcarrera" ><br>
                    TRÁMITE:<br>
                    <input class="form-control" type="text" name="txttramite" ><br>
                    DETALLE DE SOLICITUD: <br>
                    <input class="form-control" type="text" name="txtdetallesolicitud" ><br>
                    
    
                    <input class="btn btn-primary" type="submit" name="accion" value="Agregar">

                </form>
                 <br>
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
        
     <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"  crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js"></script>
    <script src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js"></script>
    <script src="js/script.js">  </script>
    </body>
</html>
