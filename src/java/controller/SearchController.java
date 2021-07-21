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
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Contains a method that calls <code>dao.impl.DigitalDAOImpl</code> to get top
 * 6 news most recent, list paging news search by title, total search result
 * news from database, get parameter index page from HTTP request and find max
 * page then the forward to <code>Search.jsp</code>. When the system crashes or
 * fails without warning, servlet will directly forward to
 * <code>ErrorPage.jsp</code>.
 * <p>
 * Bugs: None
 *
 * @author Nguyen Sy Huy
 */
public class SearchController extends HttpServlet {

    /**
     * The method calls <code>dao.impl.DigitalDAOImpl</code> to get top 6 news
     * most recent, list paging news search by title, total search result news
     * from database, get parameter index page from HTTP request and find max
     * page then the forward to <code>Search.jsp</code>. When the system crashes
     * or fails without warning, servlet will directly forward to
     * <code>ErrorPage.jsp</code>.
     *
     * @param request stores attributes: listRecentNews, news, index, content,
     * list, maxPage, error to send to <code>Search.jsp</code> and
     * <code>ErrorPage.jsp</code>. It is a
     * <code>javax.servlet.http.HttpServletRequest</code> object.
     * @param response is results of the data that the server returns to the
     * client. It is a <code>javax.servlet.http.HttpServletResponse</code>
     * object.
     * @throws ServletException if a servlet-specific error occurs.
     * @throws IOException if an I/O error occurs.
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        try {
            // begin of get value of parameter from JSP
            String searchContent = request.getParameter("searchContent").trim();
            String indexString = request.getParameter("index");
            int pageIndex = 0;
            // When there is no news, the default position of the page is 1
            if (indexString == null) {
                pageIndex = 1;
            } else {
                try {
                    pageIndex = Integer.parseInt(indexString);
                } catch (NumberFormatException e) {
                    request.setAttribute("error", e.getMessage());
                }
            }

            DigitalDAO digitalDAO = new DigitalDAOImpl();
            // get number of news result after searching
            int count = digitalDAO.countNumberOfResult(searchContent);
            int pageSize = 3;
            int numberOfPage = 0;
            numberOfPage = count / pageSize;
            // when the number of pages is not round, increase 1 more page
            if (count % pageSize != 0) {
                numberOfPage++;
            }
            // get list Digital after searching
            ArrayList<Digital> listSearch = digitalDAO.getSearchResult(searchContent, pageIndex, pageSize);
            // set number of page
            request.setAttribute("maxPage", numberOfPage);
            // set list Digital after searching
            request.setAttribute("list", listSearch);
            // set searched content which user enter in search box
            request.setAttribute("content", searchContent.trim());
            // set index of page
            request.setAttribute("index", pageIndex);
            // get list top 6 Digital
            ArrayList<Digital> listDigital = digitalDAO.getTopDigital(6);
            // set the most recent news
            request.setAttribute("news", listDigital.remove(0));
            // set top 5 recent news
            request.setAttribute("listRecentNews", listDigital);
            // Forward requests from a servlet to JSP on server

            request.getRequestDispatcher("Search.jsp").forward(request, response);
        } catch (Exception e) {
            request.setAttribute("errorMessage", e.getMessage());
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
     * object.
     * @param response response respond to an HTTP Request to the browser. It is
     * a <code>javax.servlet.http.HttpServletResponse</code> object.
     * @throws ServletException if a servlet-specific error occurs.
     * @throws IOException if an I/O error occurs.
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(SearchController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request provides important information about a client request to a
     * servlet. It is a <code>javax.servlet.http.HttpServletRequest</code>
     * object.
     * @param response response respond to an HTTP Request to the browser. It is
     * a <code>javax.servlet.http.HttpServletResponse</code> object.
     * @throws ServletException if a servlet-specific error occurs.
     * @throws IOException if an I/O error occurs.
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(SearchController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description.
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
