
package org.controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.modelo.CrudJornada;
import org.modelo.Jornada;

/**
 * Nombre de la clase:OperacionesJornada
 * Fecha:17/10/2017
 * Version:1.0
 * Copyright:ITCA-FEPADE
 * @author Ale Gomez,Alexander Lue, Carlos Paniagua
 */
public class OperacionesJornada extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        
        Jornada jor= new Jornada();
        CrudJornada cj=new CrudJornada();
        String val = null;
        try 
        {
            jor.setIdJornada(Integer.parseInt(request.getParameter("id")));
            jor.setNumJornada(Integer.parseInt(request.getParameter("jornada")));
            jor.setFechaInicio(request.getParameter("inicio"));
            jor.setFechaFin(request.getParameter("finalizacion"));
            jor.setNumPartidoDif(Integer.parseInt(request.getParameter("pdiferido")));
            jor.setFechaParDif(request.getParameter("fpdiferido"));
            jor.setIdPartido(Integer.parseInt(request.getParameter("partido")));
            if (request.getParameter("insertar")!=null) 
            {
                cj.add(jor);
                val="Datos Insertados Correctamente";
            }else if (request.getParameter("modificar")!=null) 
            {
                cj.update(jor);
                val="Datos Modificados Correctamente";
            }else if (request.getParameter("eliminar")!=null) 
            {
                cj.delete(jor);
                val="Datos Eliminados Correctamente";
            }
            request.setAttribute("valor", val);
            request.getRequestDispatcher("Jornada.jsp").forward(request, response);
        } catch (Exception e) 
        {
            out.print(e.toString());
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
