<%-- 
    Document   : report
    Created on : Oct 30, 2012, 12:53:32 PM
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
        <title>Report</title>
        <style type="text/css">
            .p5
            {
         position:absolute;
         top:300px;
         right:500px;

}
.p6
{
    position: absolute;
    top:50px;
    right: 50px;
}
        </style>
        
    </head>
    <body background="homepage_bg.jpg">
      <p align="center"><img align="center" src="lets begin.jpg" width="600" height="200" ></img></p>
      <p class="p6"><a href="homepage.jsp">Goto Homepage</a><br><br>  <a href="logout.jsp">Logout</a></p>
     
       <h3 class="p5">  <form action="Report" method="post" align="center">

        <input type="radio" name="r1" value="report" checked="checked"/>Generate Report<br>
        <input type="radio" name="r1" value="reqadmin"/>Request Administrator<br><br>
        
        <input type="submit" value="OK" />
        </form>
        </h3>
    </body>
</html>
