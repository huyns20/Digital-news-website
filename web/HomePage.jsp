<%-- 
    Document   : HomePage
    Created on : May 12, 2021, 3:33:36 AM
    Author     : Nguyen Sy Huy
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <jsp:include page="Header.jsp"/>
            <div class="content">
                <div class="main">
                    <div class="title">
                        ${news.title}
                    </div>
                    <div class="image">
                        <img src="img/${news.image}" alt=""/>
                    </div>
                    <div class="text">
                        ${news.description}
                    </div>
                    <div class="signature">
                        <div class="icon1"></div>
                        <div class="icon2"></div>
                        By ${news.author} | ${dateConvert}
                    </div>
                </div>
                <jsp:include page="Right.jsp"/>
            </div>
            <jsp:include page="Footer.jsp"/>
        </div>
    </body>
</html>