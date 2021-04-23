<%-- 
    Document   : solicitudes_atendidad
    Created on : 02-abr-2021, 19:15:16
    Author     : SEBASTIAN
--%>

<%@page import="Modelo.Persona"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 

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


<html>
<head>
      <%

        List<Persona> datos= new ArrayList();   
    %>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Solicitudes atendidas</title>
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
								<a href=tabla_reportes.jsp" class="full-width">
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
				<i class="zmdi zmdi-washing-machine"></i>
			</div>
			<div class="full-width header-well-text">
				<p class="text-condensedLight">
					Confirme los datos del alumno y genere el tramite.
				</p>
			</div>
		</section>
		<div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
			<div class="mdl-tabs__tab-bar">
			</div>
			<div class="mdl-tabs__panel is-active" id="tabNewProduct">
				<div class="mdl-grid">
					<div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--12-col-desktop">
						<div class="full-width panel mdl-shadow--2dp">
							<div class="full-width panel-tittle bg-primary text-center tittles">
								ATENCIÓN DE SOLICTUD 
							</div>
							<div class="full-width panel-content">
                                                            <table>
                                                            <form name="form_solicitud" action="Controlador2">
									<div class="mdl-grid">
										<div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--6-col-desktop">
											<h5 class="text-condensedLight">CODIGO</h5>
											<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
										      <input  class="mdl-textfield__input"  type="text" name="txtcodigoalumno"   <% if(request.getAttribute("codigo_alumno")!=null){ %>   
                                                                                            value ='<%=request.getAttribute("codigo_alumno") %>'
                                                                                   <%}%>>										
											</div>
		                                                       

											<h5 class="text-condensedLight">NOMBRES</h5>
											<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
										      <input  class="mdl-textfield__input"  type="text" name="txtnombres"   <% if(request.getAttribute("nombres")!=null){ %>   
                                                                                            value ='<%=request.getAttribute("nombres") %>'
                                                                                   <%}%>>										
											</div>
                                                                                        
                                                                                        
                                                                                       <h5 class="text-condensedLight">CARRERA</h5>
											<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
										      <input  class="mdl-textfield__input"  type="text" name="txtcarrera"   <% if(request.getAttribute("carrera")!=null){ %>   
                                                                                            value ='<%=request.getAttribute("carrera") %>'
                                                                                   <%}%>>										
											</div>
                                                                                        
                                                                                       <h5 class="text-condensedLight">TRABAJADOR</h5>
											<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
										      <input  class="mdl-textfield__input"  type="text" name="txttrabajador"  
                                                                                            value ='<%= usuario %>'>
                                                                            									
									             </div>
                                                                              <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored"  type="submit" name="accion" value="Agregar">Agregar</button> 
                                                                     

                     
										</div>
                                                                                            
                                                                                            
										<div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--6-col-desktop">
											<h5 class="text-condensedLight">CORREO</h5>
										        			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
										      <input   class="mdl-textfield__input"  type="text" name="txtcorreoalumno"   <% if(request.getAttribute("correo_alumno")!=null){ %>   
                                                                                            value ='<%=request.getAttribute("correo_alumno") %>'
                                                                                   <%}%>										
                                                                                </div>
								
                                                                          
											<h5 class="text-condensedLight">APELLIDOS</h5>
										        			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
										      <input  class="mdl-textfield__input"  type="text" name="txtapellidos"   <% if(request.getAttribute("apellidos")!=null){ %>   
                                                                                            value ='<%=request.getAttribute("apellidos") %>'
                                                                                   <%}%>>										
                                                                                </div>
                                                                                 
                                                                                
                                                                                
											<h5 class="text-condensedLight">TRAMITE</h5>
										        			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
										      <input  class="mdl-textfield__input"  type="text" name="txttramite"  <% if(request.getAttribute("tramite")!=null){ %>   
                                                                                            value ='<%=request.getAttribute("tramite") %>'
                                                                                   <%}%>>										
                                                                                </div>
                                                                                
                                                                                
                                                                                
                                                                            
                                                                              
											<h5 class="text-condensedLight">RESOLUTIVO</h5>
										        			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
										      <input  class="mdl-textfield__input"  type="textarea" name="txtresolutivo">										
                                                                                </div>
                                                                                
                                                                                
                                                                                </div>
                                                                            
		
                                                                            
								
							</div>
						</div>
					</div>
                                        </form>
                                      </table>                                  
                            
                                                                              
				</div>
                                                                                
                                                                            	
			</div>
	
		</div>
	</section>
</body>
</html>
