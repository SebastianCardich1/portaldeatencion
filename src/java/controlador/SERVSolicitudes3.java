/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ModeloDAO.PersonaDAO;
import Modelo.Persona;

/**
 *
 * @author yvasquez
 */
public class SERVSolicitudes3 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            PersonaDAO  dao=new PersonaDAO();
            Persona p = new Persona();
  
            String campo,criterio,codigo_alumno;
            List<Persona> datos = new ArrayList<>();
            String respuesta="";
            RequestDispatcher rd=null;
            try{
               if(request.getParameter("codigo_alumno")!=null){                   
                    codigo_alumno=request.getParameter("codigo_alumno");              
                    datos = dao.TraerRegistro(codigo_alumno);
                    request.setAttribute("correo_alumno",datos.get(0).getCorreo_alumno());
                    request.setAttribute("codigo_alumno",datos.get(0).getCodigo_alumno());
                    request.setAttribute("nombres",datos.get(0).getNombres());
                    request.setAttribute("apellidos",datos.get(0).getApellidos());
                    request.setAttribute("carrera",datos.get(0).getCarrera());
                    request.setAttribute("tramite",datos.get(0).getTramite());
                    
                   
                }
                
               rd = request.getRequestDispatcher("pdf.jsp");
 
            }catch(Exception e){
                
            }
            rd.forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
