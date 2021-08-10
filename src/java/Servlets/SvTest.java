/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Logica.Controladora;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Pia
 */
@WebServlet(name = "SvTest", urlPatterns = {"/SvTest"})
public class SvTest extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // trae los datos
        String nombre= request.getParameter("nombre");
        String apellido= request.getParameter("apellido");
        String pelo= request.getParameter("pelo");
        boolean titulo=  Boolean.parseBoolean(request.getParameter("titulo"));
        String java= request.getParameter("java");
        // traer session
        request.getSession().setAttribute("nombre",nombre);
        request.getSession().setAttribute("apellido",apellido);
        request.getSession().setAttribute("pelo",pelo);
        request.getSession().setAttribute("titulo",titulo);
        request.getSession().setAttribute("java", java);
      
    //pasa a logica
     //  Controladora control = new Controladora();
   //    control.crearAlumno(nombre, apellido, pelo, titulo, java);
    //respuesta
        response.sendRedirect("dos.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
