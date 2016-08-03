<%-- 
    Document   : app_mgt
    Created on : Oct 30, 2012, 12:52:05 PM
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
        <title>Application Management</title>
    <style type="text/css">


.p2{
    position: absolute;
    top:50px;
    right: 50px;

}
.p4
{
         position:absolute;
         top:300px;
         right:  500px;

}
    </style>
        
    </head>
    <body background="homepage_bg.jpg">
        <p align="center"><img align="center" src="lets begin.jpg" width="600" height="200" ></p>
         
        <p class="p2"> <a href="homepage.jsp">Goto Homepage</a><br><br> <a href="logout.jsp">Logout</a></p>

        <h3 class="p4">  <form action="app_redirect" method="post">
               <input type="radio" name="r1" value="appdetais" checked="checked">Application Details<br>
               <input type="radio" name="r1" value="graphview">Graphical View<br><br>
            <input type="submit" value="OK">
            </form>
      </h3><br>
        
        </body>
</html>
