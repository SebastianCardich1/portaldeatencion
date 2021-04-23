package controlador;

import Modelo.Persona;
import ModeloDAO.SolcitudesDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Modelo.Solicitudes;
import ModeloDAO.PersonaDAO;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.swing.JOptionPane;


public class  MailServlet extends HttpServlet {
    String listar="vistas/listar.jsp";
    String add="generacion_pdf.jsp";
    Solicitudes p=new Solicitudes();
    SolcitudesDAO dao=new SolcitudesDAO();
    PersonaDAO dao1=new PersonaDAO();
    Persona p1=new Persona();
    String codigo_alumno;
    List<Persona> datos = new ArrayList<>();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso="";
        String action=request.getParameter("accion");
         if(action.equalsIgnoreCase("listar")){
            acceso=listar;            
        }else if(action.equalsIgnoreCase("add")){
            acceso=add;
        }
        else if(action.equalsIgnoreCase("Agregar")){
            
            String codigo_alumno=request.getParameter("txtcodigoalumno");
            String nombres=request.getParameter("txtnombres");
            String apellidos=request.getParameter("txtapellidos");
            String correo_alumno=request.getParameter("txtcorreoalumno");
            String carrera=request.getParameter("txtcarrera");
            String tramite=request.getParameter("txttramite");
            String trabjador=request.getParameter("txttrabajador");
            
            p.setCodigo_alumno(codigo_alumno);
            p.setNombre(nombres);
            p.setApellidos(apellidos);
            p.setCorreo_alumno(correo_alumno);
            p.setCarrera(carrera);
            p.setTramite(tramite);
            p.setTrabajador(trabjador);
            dao.add(p);
            acceso=add;
        }else if(request.getParameter("codigo_alumno")!=null){                   
                    codigo_alumno=request.getParameter("codigo_alumno");              
                    datos = dao1.TraerRegistro(codigo_alumno);
                    request.setAttribute("codigo_alumno",datos.get(0).getCodigo_alumno());
      
                    
        }else if(request.getParameter("btnIniciar")!=null){                   
            try {
            Properties props = new Properties();
            props.setProperty("mail.smtp.host", "smtp.gmail.com");
            props.setProperty("mail.smtp.starttls.enable", "true");
            props.setProperty("mail.smtp.port", "587");
            props.setProperty("mail.smtp.auth", "true");

            Session session = Session.getDefaultInstance(props);

            String correoRemitente = "scardixh@gmail.com";
            String passwordRemitente = "napoleonagente1";
            String correoReceptor = "pruebataller78@gmail.com";
            String asunto = "Mi primero correo en Java";
            String mensaje = "Hola<br>Este es el contenido de mi primer correo desde <b>java</b><br><br>Por <b>Códigos de Programación</b>";

            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(correoRemitente));

            message.addRecipient(Message.RecipientType.TO, new InternetAddress(correoReceptor));
            message.setSubject(asunto);
            message.setText(mensaje, "ISO-8859-1", "html");

            Transport t = session.getTransport("smtp");
            t.connect(correoRemitente, passwordRemitente);
            t.sendMessage(message, message.getRecipients(Message.RecipientType.TO));
            t.close();



        } catch (AddressException ex) {
            
        } catch (MessagingException ex) {
            
        }
         
         }

         
     
       
         RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}