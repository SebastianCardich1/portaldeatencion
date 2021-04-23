package controlador;

import Modelo.Administradores;
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
import ModeloDAO.AdministradoresDAO;
import static java.lang.Integer.parseInt;


public class Controlador3 extends HttpServlet {
    String listar="vistas/listar.jsp";
    String add="usuarios.jsp";
    Administradores p=new Administradores();
    AdministradoresDAO dao=new AdministradoresDAO();

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
            
            String DNI=request.getParameter("txtdni");
            String numero=request.getParameter("txtnumero");
            String nombre_completo=request.getParameter("txtnombre_completo");
            String apellidos=request.getParameter("txtapellidos");
            String usuario=request.getParameter("txtusuario");
            String contra=request.getParameter("txtcontra");
            String nivelUsuario=request.getParameter("txtnivelusuario");
            
            p.setDNI(DNI);
            p.setNumero(numero);
            p.setNombre_compelto(nombre_completo);
            p.setApellidos(apellidos);
            p.setUsuario(usuario);
            p.setContra(contra);
            p.setNivelusuario(parseInt(nivelUsuario));
            dao.add(p);
            acceso=add;
            
            
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