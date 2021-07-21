/*
* Copyright(C) 2021,  hunshe141505.
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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Contains a method that calls <code>dao.impl.DigitalDAOImpl</code> to get top
 * 6 of news most recent, the most recent news that will be displayed from
 * database, then forward to <code>HomePage.jsp</code>. To page redirects when
 * system is error or an unannounced error, servlet will directly forward to
 * <code>ErrorPage.jsp</code>.
 * <p>
 * Bugs: None
 *
 * @author Nguyen Sy Huy
 */
public class HomeController extends HttpServlet {

    /**
     * The method calls <code>dao.impl.DigitalDAOImpl</code> to get top 6 of
     * news most recent, the most recent news that will be displayed from
     * database, then forward to <code>HomePage.jsp</code>. When system is error
     * or unknown error, servlet will directly forward to
     * <code>ErrorPage.jsp</code>.
     *
     * @param request stores attributes: dateConvert, news, listRecentNews,
     * errorMessage to send to <code>HomePage.jsp</code> and
     * <code>ErrorPage.jsp</code> . It is a
     * <code>javax.servlet.http.HttpServletRequest</code>
     * @param response is results of the data that the server returns to the
     * client. It is a <code>javax.servlet.http.HttpServletResponse</code> 
     * 
     * @throws ServletException if a servlet-specific error occurs.
     * @throws IOException if an I/O error occurs.
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            DigitalDAO digitalDAO = new DigitalDAOImpl();
            // get list top 6 Digital
            ArrayList<Digital> listDigital = digitalDAO.getTopDigital(6);
            // get Digital has most recent
            Digital digital = listDigital.get(0);
            // formate date
            SimpleDateFormat dateFormat1 = new SimpleDateFormat("MMM dd yyyy - hh:mm:");
            SimpleDateFormat dateFormat2 = new SimpleDateFormat("a");
            String date = dateFormat1.format(digital.getTimePost())
                    + dateFormat2.format(digital.getTimePost()).toLowerCase();

            // set value of date after convert
            request.setAttribute("dateConvert", date);
            // set the most recent news
            request.setAttribute("news", listDigital.remove(0));
            // set top 5 recent news
            request.setAttribute("listRecentNews", listDigital);
            // Forward requests from a servlet to JSP on server
            request.getRequestDispatcher("HomePage.jsp").forward(request, response);

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
        processRequest(request, response);
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
