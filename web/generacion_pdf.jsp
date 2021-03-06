<%@page import="ModeloDAO.PdfDAO"%>
<%@page import="Modelo.PdfVO"%>
<%@ page import="ModeloDAO.PersonaDAO" %>
<%@ page import="java.util.*" %>
<%@ page import="Modelo.Persona" %>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<% 
PersonaDAO dao=new PersonaDAO();
List<Persona> datos = new ArrayList();
datos=dao.listar();
HttpSession ses = request.getSession();
String usuario="";
int nivel=0;

if(ses.getAttribute("usuario")!=null && ses !=null && ses.getAttribute("nivel")!=null){
    usuario = ses.getAttribute("usuario").toString();
    nivel = Integer.parseInt(ses.getAttribute("nivel").toString()); 
    
    if(nivel!=1){
        response.sendRedirect("login.jsp");
    }  
}else{
    response.sendRedirect("login.jsp");
}



%>





    <%
        PdfDAO emp = new PdfDAO();
        PdfVO pdfvo = new PdfVO();
        ArrayList<PdfVO> listar = emp.Listar_PdfVO();
    %>




<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Generación de PDF</title>
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/sweetalert2.css">
	<link rel="stylesheet" href="css/material.min.css">
	<link rel="stylesheet" href="css/material-design-iconic-font.min.css">
	<link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
	<link rel="stylesheet" href="css/main.css">
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
	<script src="js/material.min.js" ></script>
	<script src="js/sweetalert2.min.js" ></script>
	<script src="js/jquery.mCustomScrollbar.concat.min.js" ></script>
	<script src="js/main.js" ></script>
         <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/jquery-1.11.2.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        
</head>



<body>
    
    
    

	<div class="full-width navBar">
		<div class="full-width navBar-options">
			<i class="zmdi zmdi-more-vert btn-menu" id="btn-menu"></i>	
			<div class="mdl-tooltip" for="btn-menu">Menu</div>
			<nav class="navBar-options-list">
				<ul class="list-unstyle">
				
					<li class="btn-exit" id="btn-exit">
						<i class="zmdi zmdi-power"></i>
						<div class="mdl-tooltip" for="btn-exit" >LogOut</div>
					</li>
					<li class="text-condensedLight noLink" ><small> <%= usuario %></small></li>
					<li class="noLink">
						<figure>
							<img src="assets/img/avatar-male.png" alt="Avatar" class="img-responsive">
						</figure>
					</li>
				</ul>
			</nav>
		</div>
	</div>
	<!-- navLateral -->
	<section class="full-width navLateral">
		<div class="full-width navLateral-bg btn-menu"></div>
		<div class="full-width navLateral-body">
			<div class="full-width navLateral-body-logo text-center tittles">
				<i class="zmdi zmdi-close btn-menu"></i> SGD
			</div>
			<figure class="full-width" style="height: 77px;">
				<div class="navLateral-body-cl">
					<img src="assets/img/avatar-male.png" alt="Avatar" class="img-responsive">
				</div>
				<figcaption class="navLateral-body-cr hide-on-tablet">
					<span>
						<%= usuario %><br>
						<small>Admin</small>
					</span>
				</figcaption>
			</figure>
			<div class="full-width tittles navLateral-body-tittle-menu">
				<i class="zmdi zmdi-desktop-mac"></i><span class="hide-on-tablet">&nbsp; DASHBOARD</span>
			</div>
			<nav class="full-width">
				<ul class="full-width list-unstyle menu-principal">
					<li class="full-width">
						<a href="principal.jsp" class="full-width">
							<div class="navLateral-body-cl">
								<i class="zmdi zmdi-view-dashboard"></i>
							</div>
							<div class="navLateral-body-cr hide-on-tablet">
								INICIO
							</div>
						</a>
					</li>
					
					<li class="full-width divider-menu-h"></li>
					<li class="full-width">
						<a href="#!" class="full-width btn-subMenu">
							<div class="navLateral-body-cl">
								<i class="zmdi zmdi-face"></i>
							</div>
							<div class="navLateral-body-cr hide-on-tablet">
								USUARIOS
							</div>
							<span class="zmdi zmdi-chevron-left"></span>
						</a>
						<ul class="full-width menu-principal sub-menu-options">
							<li class="full-width">
								<a href="usuarios.jsp" class="full-width">
									<div class="navLateral-body-cl">
										<i class="zmdi zmdi-account"></i>
									</div>
									<div class="navLateral-body-cr hide-on-tablet">
										AÑADIR USUARIOS
									</div>
								</a>
							</li>
						</ul>
					</li>
				       <li class="full-width divider-menu-h"></li>
					<li class="full-width">
						<a href="#!" class="full-width btn-subMenu">
							<div class="navLateral-body-cl">
								<i class="zmdi zmdi-case"></i>
							</div>
							<div class="navLateral-body-cr hide-on-tablet">
								SOLICITUDES
							</div>
							<span class="zmdi zmdi-chevron-left"></span>
						</a>
						<ul class="full-width menu-principal sub-menu-options">
							<li class="full-width">
								<a href="solicitudes_pendientes.jsp" class="full-width">
									<div class="navLateral-body-cl">
										<i class="zmdi zmdi-balance"></i>
									</div>
									<div class="navLateral-body-cr hide-on-tablet">
										SOLICITUDES PENDIENTES
									</div>
								</a>
							</li>
							<li class="full-width">
								<a href="solicitudes_atendidas.jsp" class="full-width">
									<div class="navLateral-body-cl">
										<i class="zmdi zmdi-truck"></i>
									</div>
									<div class="navLateral-body-cr hide-on-tablet">
										SOLICITUDES ATENDIDAS
									</div>
								</a>
							</li>
                                                        <li class="full-width">
								<a href="generacion_pdf.jsp" class="full-width">
									<div class="navLateral-body-cl">
										<i class="zmdi zmdi-card"></i>
									</div>
									<div class="navLateral-body-cr hide-on-tablet">
										GENERACIÓN DE PDF
									</div>
								</a>
							</li>
                                                	<li class="full-width">
								<a href="tabla_reportes.jsp" class="full-width">
									<div class="navLateral-body-cl">
										<i class="zmdi zmdi-card"></i>
									</div>
									<div class="navLateral-body-cr hide-on-tablet">
										SOLICITUDES CERRADAS
									</div>
								</a>
							</li>

						</ul>
					</li>
					<li class="full-width divider-menu-h"></li>
					<li class="full-width">
						<a href="#!" class="full-width btn-subMenu">
							<div class="navLateral-body-cl">
								<i class="zmdi zmdi-wrench"></i>
							</div>
							<div class="navLateral-body-cr hide-on-tablet">
								REPORTES
							</div>
							<span class="zmdi zmdi-chevron-left"></span>
						</a>
						<ul class="full-width menu-principal sub-menu-options">
							<li class="full-width">
								<a href="solicitudes_cerradas.jsp" class="full-width">
									<div class="navLateral-body-cl">
										<i class="zmdi zmdi-widgets"></i>
									</div>
									<div class="navLateral-body-cr hide-on-tablet">
										EXPORTAR EXCEL
									</div>
								</a>
							</li>
						</ul>
					</li>
				</ul>
			</nav>
		</div>
	</section>
	
                                                
                                                
                                                
	<!-- pageContent -->
	<section class="full-width pageContent">
		<section class="full-width header-well">
			<div class="full-width header-well-icon">
				<i class="zmdi zmdi-store"></i>
			</div>
			<div class="full-width header-well-text">
				<p class="text-condensedLight">
					Etimado trabajador selecciona el trámite que resolverá.  </p>
		</section>
		<div class="full-width divider-menu-h"></div>
		<div class="mdl-grid">
			<div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--12-col-desktop">
				
                            <form name="formulario" action="PDF.jsp" target="black" method="POST">
                            
                            <table class="mdl-data-table mdl-js-data-table mdl-shadow--2dp full-width table-responsive">
                                                                  

   
 	
					
                                    <thead>
					<tr>
							<th  class="mdl-data-table__cell--non-numeric" >Codigo del alumno</th>
							<th class="mdl-data-table__cell--non-numeric">Tramite</th>
                                                        <th class="mdl-data-table__cell--non-numeric"></th>
							<th  class="mdl-data-table__cell--non-numeric"></th>
                                                        
                                                        
					</tr>
					</thead>
                              
                               
					<tbody>
						<tr>
                                                    <td class="mdl-data-table__cell--non-numeric" > 
                                                                                                <input class="mdl-textfield__input"  type="text" name ="txtparametro">										
										
                                                            
                                                    </td>
                                                    
                                                     <td class="mdl-data-table__cell--non-numeric" > 
                                                                                                <input class="mdl-textfield__input"  type="text" name="txttramite">										
										
                                                            
                                                    </td>

                                                        
                                      
                                                       <td><input class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored" type="submit"  name="pdf" value="Generar PDF" /></td>
                                                       
                                                       <td><button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored" name="btnEliminar" >Cerrar solicitud</button><td>
                                                          
                                                       <td> <a class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored" data-toggle="modal" data-target="#miModal" >Enviar correo</a></td>
                                                      
                                                         
						</tr>
					</tbody>  
                                        
                                                                   
         
                                           
   
                                                                                
                                               
               
                               </table>
                                    
           
                                
                              </form >
            
                             
                            <form name="formpdf" action="ControllerPdf" method="post" enctype="multipart/form-data">
                                
                               
                           
                            <div class="modal fade" id="miModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            
                            
	                      <div class="modal-dialog" role="document">
		             <div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
                            <center><h4>Envío de constancia a su correo</h4></center>
			</div>
                                 
                                 
                                 
			<div class="form-group">
                        <label class="control-label">Correo del alumno</label>
                            <div>
				<center><input class="form-control input-lg" type="text" name="txtcorreo" style="width :500px; heigth :500px"></center>	
                        </div>        
                        </div>  
                        
                        
                                
                     <div class="form-group">
                        <label class="control-label">Tramite </label>
                        <div>
                            <center><input type="text" class="form-control input-lg" name="txtname" value="" style="width : 500px; heigth :500px"></center>
                        </div>
                    </div> 
                                 
                     <div class="form-group">
                        <label class="control-label" >Subir la constancia</label>
                        <div>
                            <center><input type="file" class="form-control input-lg" name="fichero"  value="" style="width : 500px; heigth : 500px"></center>
                        </div>
                    </div>           
                                 
                          <div class="modal-footer">
                                      <input class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored" type="submit" name="action" value="Agregar">
                      </div>       
                        </div>
                                  
                                  
                            </div>
                            </div>
                                
                            
                           
                            
                            
                            </form>
                              
                              
                              
                              
                              
                              
                              
                              
                              
                              
                              
                              
                              
                              
                              
                              
                              
                            <script type="text/javascript">

                                var queryString = window.location.search;
                                var urlParams = new URLSearchParams(queryString);
                                var codigoalumno= urlParams.get('txtcodigoalumno');
                                var tramite= urlParams.get('txttramite');
                                

                                document.formulario.txtparametro.value=codigoalumno;
                                document.formulario.txttramite.value=tramite;


                              </script>
                                
                              
                              
                              
                              
                              
                           <script type="text/javascript">

                                var queryString1 = window.location.search;
                                var urlParams1 = new URLSearchParams(queryString1);
                                var codigoalumno1= urlParams1.get('txtcorreoalumno');
                                var tramite1= urlParams.get('txttramite');

                                document.formpdf.txtcorreo.value=codigoalumno1;
                                document.formpdf.txtname.value=tramite1;


                              </script>
                     


                            
                            
                          
                                                                                                      
             <!-- Modal -->
                                                            
			</div>
		</div>                                                                  
	</section>
                                                                              
                                                                              
                                                                              
</body>
</html>
