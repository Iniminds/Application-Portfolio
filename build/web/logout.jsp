<%-- 
    Document   : logout
    Created on : Nov 1, 2012, 1:52:33 PM
    Author     : admin
--%>

<%
   // HttpSession session=request.getSession();
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
        


    </head>
    <body>
        

        <%
      //  session.setMaxInactiveInterval(0);
session.invalidate();
session=null;


response.sendRedirect("index.jsp");
%>
    </body>
</html>
