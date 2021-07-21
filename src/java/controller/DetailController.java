/*
* Copyright(C) 2021,  huynshe141505.
* J3.L.P0004
* Java Web
*
* Record of change:
* DATE                Version           AUTHOR          DESCRIPTION
* 06/06/2021            1.0             Huy             Fix comment/ Modify code
* 10/06/2021            2.0             Huy             Fix comment/ Modify code
* 12/06/2021            3.0             Huy             Fix comment/ Modify code
* 14/06/2021            4.0             Huy             Fix comment
* 16/06/2021            5.0             Huy             Fix comment
* 20/06/2021            6.0             Huy             Fix comment
* 22/06/2021            7.0             Huy             Fix comment
* 26/06/2021            8.0             Huy             Fix comment
*
 */
package controller;

import dao.DigitalDAO;
import dao.impl.DigitalDAOImpl;
import entity.Digital;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Base on id of news which user selected or entered, this class gets data about
 * this new from <code>DigitalDAO</code>, then load news on
 * <code>Detail.jsp</code>. Keep information of top 5 most recent news after the
 * user selected 1 in 5 most recent news. When the system is an error or unknown
 * error, servlet will directly forward to <code>ErrorPage.jsp</code>.
 *
 * <p>
 * Bugs: None
 *
 * @author Nguyen Sy Huy
 */
public class DetailController extends HttpServlet {

    /**
     * The method calls <code>dao.impl.DigitalDAOImpl</code> to get news( base
     * on id) which user selected or entered; gets parameter id from HTTP
     * request then forward to <code>Detail.jsp</code>.When the system is an
     * error or unknown error, servlet will directly forward to
     * <code>ErrorPage.jsp</code>.
     *
     * @param request stores attributes:dateConvert, selectedNews, error, news,
     * listRecentNews to send to <code>Detail.jsp</code> and
     * <code>ErrorPage.jsp</code> . It is a
     * <code>javax.servlet.http.HttpServletRequest</code>
     *
     * @param response is results of the data that the server returns to the
     * client. It is a <code>javax.servlet.http.HttpServletResponse</code> 
     * 
     * @throws ServletException if a servlet-specific error occurs.
     * @throws IOException if an I/O error occurs.
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        try {
            response.setContentType("text/html;charset=UTF-8");
            // get value of parameter from JSP
            String idString = request.getParameter("id");
            DigitalDAO digitalDAO = new DigitalDAOImpl();

            int id = 0;
            try {
                if (idString != null) {
                    id = Integer.parseInt(idString);
                } else {
                    id = 1;
                }
                Digital digital = digitalDAO.getSelectedNews(id);
                // get news which user selected
                SimpleDateFormat dateFormat1 = new SimpleDateFormat("MMM dd yyyy - hh:mm:");
                SimpleDateFormat dateFormat2 = new SimpleDateFormat("a");
                String date = dateFormat1.format(digital.getTimePost())
                        + dateFormat2.format(digital.getTimePost()).toLowerCase();
                request.setAttribute("dateConvert", date);
                // set selected news
                request.setAttribute("selectedNews", digital);
            } catch (Exception e) {
                request.setAttribute("error", e.getMessage());
                //System.out.println(request.getParameter("a"));
            }
            // get top 6 news has most recent
            ArrayList<Digital> listDigital = digitalDAO.getTopDigital(6);
            // set value for most recent news 
            request.setAttribute("news", listDigital.remove(0));
            // set value for top 5 most recent news
            request.setAttribute("listRecentNews", listDigital);
            // Forward requests from a servlet to JSP on server
            request.getRequestDispatcher("Detail.jsp").forward(request, response);

        } catch (Exception ex) {
            request.setAttribute("errorMessage", ex.getMessage());
            // when system is errors or unknown errors, Error page will be display
            request.getRequestDispatcher("ErrorPage.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request provides important information about a client request to a
     * servlet. It is a <code>javax.servlet.http.HttpServletRequest</code>
     * object
     * @param response response respond to an HTTP Request to the browser. It is
     * a <code>javax.servlet.http.HttpServletResponse</code> object
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(DetailController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request provides important information about a client request to a
     * servlet. It is a <code>javax.servlet.http.HttpServletRequest</code>
     * object
     * @param response response respond to an HTTP Request to the browser. It is
     * a <code>javax.servlet.http.HttpServletResponse</code> object
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(DetailController.class.getName()).log(Level.SEVERE, null, ex);
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
