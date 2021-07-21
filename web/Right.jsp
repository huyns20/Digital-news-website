<%-- 
    Document   : Right
    Created on : May 14, 2021, 12:58:27 AM
    Author     : Nguyen Sy Huy
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/right.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="right">
            <div class="news">
                <div class="title">
                    <span>Digital News</span>
                </div>
                <div class="contentNews"> 
                    ${news.shortDes}
                </div>
            </div>
            <div class="news">
                <div class="title">
                    Search
                </div>
                <form action="SearchController" method="post">
                    <input pattern="^(?!\s*$).+" value="${content}" class="searchBox" type="text" name="searchContent" size="15"  required>
                    <input class="searchButton" type="submit" name="buttonGo" value="Go">
                </form>  
            </div>
            <div class="news">
                <div class="title">
                    <span>Last Articles</span><br>
                </div>
                <c:forEach var="i" items="${listRecentNews}">
                    <div class="lastArticles">
                        <a href="DetailController?id=${i.id}">${i.title}</a>
                    </div>
                </c:forEach> 
            </div>
        </div>
    </body>
</html>
