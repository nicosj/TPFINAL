/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Logica.Cliente;
import Logica.Controladora;
import Logica.Datoshabitacion;
import Logica.Login;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Pia
 */
@WebServlet(name = "SVRegistra", urlPatterns = {"/SVRegistra"})
public class SVRegistra extends HttpServlet {

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
            out.println("<title>Servlet SVRegistra</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SVRegistra at " + request.getContextPath() + "</h1>");
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
        long idemp= Long.parseLong(request.getParameter("xfin"));
        int idcli= Integer.parseInt(request.getParameter("client"));
        int idhab= Integer.parseInt(request.getParameter("numhab"));
        String entrada= request.getParameter("desde");
        String salida= request.getParameter("hasta");
        float total= Float.parseFloat(request.getParameter("price"));
        
        
        Controladora control = new Controladora();
        Cliente cliente=control.buscaCliente(idcli);
        Datoshabitacion dah=control.buscahab(idhab);
        Login log =control.buscaemp(idemp);
        /*request.getSession().setAttribute("numero",numero);
        request.getSession().setAttribute("piso",piso);
        request.getSession().setAttribute("nombre",nombre);
        request.getSession().setAttribute("tipo",tipo);
        request.getSession().setAttribute("price",price);
      */
    //pasa a logica
      Date loco= new Date();
        
             SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd"); 
            String fechaJSP = entrada;
            String fechados = salida;
            Date dateuno = new Date();
            
            Date datedos = new Date();
        try {
            dateuno = formato.parse(fechaJSP);
                datedos = formato.parse(fechados);
        } catch (ParseException ex) {
            Logger.getLogger(SVRegistra.class.getName()).log(Level.SEVERE, null, ex);
        }
    

       control.crearHabitacion(dah,log, cliente, dateuno, datedos,loco, total);
        response.sendRedirect("dos.jsp");
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
