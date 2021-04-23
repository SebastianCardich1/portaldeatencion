
<%@page import="net.sf.jasperreports.engine.util.JRLoader"%>
<%@page import="javax.faces.context.FacesContext"%>
<%@page import="net.sf.jasperreports.engine.export.JRPdfExporter"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>

<%@page import="net.sf.jasperreports.engine.*"%>
<%@page import="net.sf.jasperreports.view.JasperViewer"%>
<%@include file="Conexion.jsp" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <%
           
       if(request.getParameter("pdf")!=null){
        File reportfile = new File (application.getRealPath("Reportes/Constancia_de_grado.jasper"));
        
        Map<String,Object> parameter = new HashMap<String,Object>();
        
        String valor = request.getParameter("txtparametro");
        parameter.put("codigo",new String(valor));
        
        byte[] bytes = JasperRunManager.runReportToPdf(reportfile.getPath(), parameter, con);
        
        response.setContentType("application/pdf");
        response.setContentLength(bytes.length);
        ServletOutputStream outputstream = response.getOutputStream();
        outputstream.write(bytes,0,bytes.length);
        
        outputstream.flush();
        outputstream.close();

         }else if(request.getParameter("btnEliminar")!=null){
                                            String codigo_alumno=request.getParameter("txtparametro");


                                            Connection cnx=null;
                                            ResultSet rs=null;
                                            Statement sta=null;
                                            try{
                                            Class.forName("com.mysql.jdbc.Driver");
                                                        cnx=DriverManager.getConnection("jdbc:mysql://localhost/gestiondocumental?user=root&password=");
                                                        sta=cnx.createStatement();


                                            sta.execute("delete from alumnomodelo where codigo_alumno='"+codigo_alumno+"'");
                                            request.getRequestDispatcher("solicitudes_pendientes.jsp").forward(request, response);
                                            }catch(Exception e){
                                                out.print(e+"");

                                            }
                                              }
                                                                                 %>	
           
                       
                            



        
    </body>
</html>
