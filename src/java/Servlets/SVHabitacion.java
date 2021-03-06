/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Logica.Controladora;
import Logica.Datoshabitacion;
import Logica.Habitacion;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "SVHabitacion", urlPatterns = {"/SVHabitacion"})
public class SVHabitacion extends HttpServlet {

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
            out.println("<title>Servlet SVHabitacion</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SVHabitacion at " + request.getContextPath() + "</h1>");
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
        int mod= Integer.parseInt(request.getParameter("muestra"));
       
        int numero= Integer.parseInt(request.getParameter("numero"));
        int piso= Integer.parseInt(request.getParameter("piso"));
        String nombre= request.getParameter("nombre");
        String tipo= request.getParameter("tipo");
        float price= Float.parseFloat(request.getParameter("price"));
       
          request.getSession().setAttribute("numero",numero);
        request.getSession().setAttribute("piso",piso);
        request.getSession().setAttribute("nombre",nombre);
        request.getSession().setAttribute("tipo",tipo);
        request.getSession().setAttribute("price",price);
      
    //pasa a logica
       Controladora control = new Controladora();
        if(mod != 0){
            
           Datoshabitacion cli = control.buscahab(numero);
            cli.setId(numero);
            cli.setName(nombre);
            cli.setPiso(piso);
            cli.setTipo(tipo);
            cli.setPrice(price);
          
           try {
                control.modificahabitacion(cli);
            } catch (Exception ex) {
                Logger.getLogger(SVHabitacion.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            response.sendRedirect("habitacionedita.jsp");
        }else{
            
       control.crearDatoshabitacion(numero,piso,nombre,tipo,price);
        response.sendRedirect("habitacion.jsp");     
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
