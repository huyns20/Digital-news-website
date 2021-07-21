/*
* Copyright(C) 2021,  huynshe141505.
* J3.L.P0004
* Java Web
*
* Record of change:
* DATE                Version           AUTHOR          DESCRIPTION
* 10/06/2021            4.0             Huy             Fix comment
* 14/06/2021            5.0             Huy             Fix comment
* 
 */
package dao;

import entity.Digital;
import java.util.ArrayList;

/**
 *
 * This interface defines method used to retrieve information from database
 * <p>
 * Bugs: None
 *
 *
 * @author Nguyen Sy Huy
 */
public interface DigitalDAO {

    /**
     * Find the list Digital in the top "number" The result contain a list of
     * <code>entity.Digital</code> objects
     *
     * @param number is the number of Digital want get. It is a int number
     * @return a list of <code>Digital</code> objects. It is a
     * <code>java.util.ArrayList</code> object
     * @throws java.lang.Exception
     */
    public ArrayList<Digital> getTopDigital(int number) throws Exception;

    /**
     * Find the Digital order by id. All the Digital has id matches with
     * searched id will be returned The result contain a Digital of
     * <code>entity.Digital</code> objects
     *
     * @param id the id of a digital. It is a int number
     * @return a Digital of <code>Digital</code> objects. It is a
     * <code>entity.Digital</code> object
     * @throws java.lang.Exception
     */
    public Digital getSelectedNews(int id) throws Exception;

    /**
     * Find the list Digital by ID and title. All the Digital matched with id
     * order ascending, title and between pageIndex*(pageSize-2) and
     * pageIndex*pageSize will be returned The result contain a list of
     * <code>entity.Digital</code> objects
     *
     * @param searchContent the text in search box. It is a
     * <code>java.lang.String</code> object
     * @param pageIndex the index of page. It is a int number
     * @param pageSize the max number of news in each page. It is a int number
     * @return a list of <code>Digital</code> objects. It is a
     * <code>java.util.ArrayList</code> object
     * @throws java.lang.Exception
     */
    public ArrayList<Digital> getSearchResult(String searchContent, int pageIndex, int pageSize) throws Exception;

    /**
     * Find the number of news after user search. All news has title matched
     * with searched title will be returned The result contain a int number
     *
     * @param searchContent the text in search box. It is a
     * <code>java.lang.String</code> object
     * @return a integer number
     * @throws java.lang.Exception
     */
    public int countNumberOfResult(String searchContent) throws Exception;
}
