package controlador;

import ModeloDAO.PersonaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Modelo.Persona;
import java.util.Properties;
import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;


public class Controlador1 extends HttpServlet {

    String listar="vistas/listar.jsp";
    String add="Registro_Solicitud.jsp";
    String edit="vistas/edit.jsp";
    Persona p=new Persona();
    PersonaDAO dao=new PersonaDAO();
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
            String correo_alumno=request.getParameter("txtcorreoalumno");
            String codigo_alumno=request.getParameter("txtcodigoalumno");
            String apellidos=request.getParameter("txtapellidos");
            String nombres=request.getParameter("txtnombres");
            String dni=request.getParameter("txtdni");
            String telefono=request.getParameter("txttelefono");
            String sede=request.getParameter("txtsede");
            String tipo_programa=request.getParameter("txttipoprograma");
            String carrera=request.getParameter("txtcarrera");
            String tramite=request.getParameter("txttramite");
            String detalle_solicitud=request.getParameter("txtdetallesolicitud");

            p.setCorreo_alumno(correo_alumno);
            p.setCodigo_alumno(codigo_alumno);
            p.setApellidos(apellidos);
            p.setNombres(nombres);
            p.setDni(dni);
            p.setTelefono(telefono);
            p.setSede(sede);
            p.setTipo_programa(tipo_programa);
            p.setCarrera(carrera);
            p.setTramite(tramite);
            p.setDetalle_solicitud(detalle_solicitud);
            
     
             try {
            Properties props = new Properties();
            props.setProperty("mail.smtp.host", "smtp.gmail.com");
            props.setProperty("mail.smtp.starttls.enable", "true");
            props.setProperty("mail.smtp.port", "587");
            props.setProperty("mail.smtp.auth", "true");

            Session session = Session.getDefaultInstance(props);

            String correoRemitente = "scardixh@gmail.com";
            String passwordRemitente = "napoleonagente1";
            String asunto = "Su trámite esta en proceso!";
            String mensaje = "<h2>Hola!</h2>\n" +
"<p >Se le estara informando el estado de su tramite por este medio, por favor debe estar atento</p>\n" +
"<p >Saludos.</p>\n" +
"<p >Oficina administrativa</p>\n" +
"<p ><strong>Colegio Santo Domingo el Predicador</strong></p>";

            
             BodyPart texto = new MimeBodyPart();
            texto.setContent(mensaje, "text/html");

            BodyPart adjunto = new MimeBodyPart();
            adjunto.setDataHandler(new DataHandler(new FileDataSource("C:\\Users\\SEBASTIAN\\Downloads\\document(1).pdf")));
            adjunto.setFileName("document(1).pdf");

            MimeMultipart miltiParte = new MimeMultipart();
            miltiParte.addBodyPart(texto);
            miltiParte.addBodyPart(adjunto);
            
            
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(correoRemitente));

            message.addRecipient(Message.RecipientType.TO, new InternetAddress(correo_alumno));
            message.setSubject(asunto);
            message.setText(mensaje, "ISO-8859-1", "html");

            Transport t = session.getTransport("smtp");
            t.connect(correoRemitente, passwordRemitente);
            t.sendMessage(message, message.getRecipients(Message.RecipientType.TO));
            t.close();
           

        } catch (AddressException ex) {
            
        } catch (MessagingException ex) {
            
        }
            dao.add(p);
            acceso=add;
        
            
            
        }else if(request.getParameter("codigo_alumno")!=null){                   
                    codigo_alumno=request.getParameter("codigo_alumno");              
                    datos = dao.TraerRegistro(codigo_alumno);
                    request.setAttribute("codigo_alumno",datos.get(0).getCodigo_alumno());
      
                    
        } else if(request.getParameter("btnEliminar")!=null){
                    p.setCodigo_alumno(request.getParameter("txtparametro"));
                    dao.eliminar1(p);
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