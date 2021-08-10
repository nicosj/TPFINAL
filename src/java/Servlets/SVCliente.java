/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Logica.Cliente;
import Logica.Controladora;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Pia
 */
@WebServlet(name = "SVCliente", urlPatterns = {"/SVCliente"})
public class SVCliente extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SVCliente</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SVCliente at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
              Controladora control = new Controladora();
              List <Cliente> lista = control.traerclientes();
            
                 request.getSession().setAttribute("lista",lista);
        
        
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
            throws ServletException, IOException { // trae los datos
        
       String id=  request.getParameter("id");
        String dni= request.getParameter("dni");
        String nombre= request.getParameter("name");
        String apellido= request.getParameter("surname");
        String nacimiento= request.getParameter("nacimiento");
         String direccion= request.getParameter("direccion");
          String profesion= request.getParameter("profesion");
         request.getSession().setAttribute("dni",dni);
        request.getSession().setAttribute("nombre",nombre);
        request.getSession().setAttribute("apellido",apellido);
        request.getSession().setAttribute("pelo",nacimiento);
        request.getSession().setAttribute("direccion",direccion);
        request.getSession().setAttribute("profesion", profesion);
       Controladora control = new Controladora();
        if(id !=null){
            long xd= Long.parseLong(id);
            Cliente cli = control.buscaCliente(xd);
            cli.setName(nombre);
            cli.setSurname(apellido);
            cli.setDireccion(direccion);
            cli.setDni(dni);
            cli.setNacimiento(nacimiento);
            cli.setProfesion(profesion);
            try {
                control.modificapersona(cli);
            } catch (Exception ex) {
                Logger.getLogger(SVCliente.class.getName()).log(Level.SEVERE, null, ex);
            }
            response.sendRedirect("Clienteedita.jsp");
        }else{
            
            control.crearCliente(dni,nombre, apellido, nacimiento,direccion,profesion);
            response.sendRedirect("altaCliente.jsp");
            
        }
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
