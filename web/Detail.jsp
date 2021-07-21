<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%-- 
    Document   : Detail
    Created on : May 16, 2021, 3:13:39 AM
    Author     : Nguyen Sy Huy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <jsp:include page="Header.jsp"/>
            <div class="content">
                <div class="main">
                    <c:if test="${error == null}">
                    
                    <div class="title">
                        ${selectedNews.title}
                    </div>
                    <div class="image">
                        <img src="img/${selectedNews.image}" alt=""/>
                    </div>
                    <div class="text">
                        ${selectedNews.description}
                    </div>
                    <div class="signature">
                        <div class="icon1"></div>
                        <div class="icon2"></div>
                        By ${selectedNews.author} | ${dateConvert}
                    </div>
                    </c:if>
                    <c:if test="${error != null}">
                        <h3>${error}</h3>
                    </c:if>
                </div>
                <jsp:include page="Right.jsp"/>
            </div>
            <jsp:include page="Footer.jsp"/>
        </div>
    </body>
</html>
