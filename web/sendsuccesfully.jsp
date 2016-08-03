<%-- 
    Document   : sendsuccesfully
    Created on : Nov 12, 2012, 11:05:16 AM
    Author     : admin
--%>
<%

    if(session.isNew())
        {
           response.sendRedirect("index.jsp");
        }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css">
        .p10
        {
            position: absolute;
    top:50px;
    right: 50px;

}
        </style>
    </head>
    <body background="homepage_bg.jpg">
        <p align="center"><img align="center" src="lets begin.jpg" width="600" height="150" ></p>
        <h3 align="center">Report send Succesfully</h3>
        <font size="3"> <p class="p10"><a href="homepage.jsp">Goto Homepage</a><br> <br> <a href="logout.jsp">Logout</a></p></font>

    </body>
</html>
