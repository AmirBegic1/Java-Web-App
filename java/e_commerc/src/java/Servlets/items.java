/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Utils.DB2;
import static com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type.Int;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author KORISNIK
 */
@WebServlet(name = "items", urlPatterns = {"/items"})
public class items extends HttpServlet {

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
            String itemNaziv = request.getParameter("itemNaziv");
            String itemCijena = request.getParameter("itemCijena");
            HttpSession session = request.getSession(true);
            
            Object listaObject = session.getAttribute("lista");
            List<String> lista;
            
            if (listaObject == null) {
                lista = new ArrayList<String>();
            } else {
                lista = (List<String>) listaObject;
            }
            
            lista.add(itemNaziv);
            lista.add(itemCijena);
            session.setAttribute("itemNaziv", lista);
            session.setAttribute("itemCijena", lista);
            
            
            
            String query = "INSERT INTO items (itemNaziv, itemCijena ) VALUES ('" + itemNaziv + "', '" + itemCijena + "')";
            
            Connection con = null;
            Statement stnt = null;
            
            String nextAddress = "home.jsp";
            
            try {
                con = DB2.getInstance().getConnection();
                stnt = con.createStatement();
                stnt.executeUpdate(query);
                stnt.close();
            } catch (SQLException e) {
                String error = e.getMessage();
                out.println(error);
            }
            
            RequestDispatcher rd = request.getRequestDispatcher(nextAddress);
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
