/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.cesjf.lp3;

import br.cesjf.lp3.dominio.Juros;
import br.cesjf.lp3.dominio.Montante;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author fernando.lagrotta
 */
@WebServlet(name = "JurosServlet", urlPatterns = {"/juros"})
public class JurosServlet extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispacher = request.getRequestDispatcher("resultadoJuros.jsp");
        double taxa_juros = Double.parseDouble(request.getParameter("taxa_juros"));
        double valor_inicial = Double.parseDouble(request.getParameter("valor_inicial"));
        int meses = Integer.parseInt(request.getParameter("meses"));
        
        List<Montante> lista = new ArrayList<Montante>();
        Juros j = new Juros();
        j.setTaxa_juros(taxa_juros);
        j.setValor_inicial(valor_inicial);
        
        for (int i = 1; i <= meses; i++)
        {
            j.setMeses(i);
            Montante m = new Montante();
            m.setMes(i);
            m.setValor(j.getResultado());
            lista.add(m);
        }
        
        request.setAttribute("investimento", lista);
        
        /*
        Juros j = new Juros();
        j.setTaxa_juros(taxa_juros);
        j.setValor_inicial(valor_inicial);
        j.setMeses(meses);
        j.calculaJuros();
        request.setAttribute("valorJuros", j);
        */
      
      dispacher.forward(request, response);
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
