<%-- 
    Document   : homepageadmin
    Created on : Nov 15, 2012, 9:31:41 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home page</title>
        <style type="text/css">


.p2{
    position: absolute;
    top:50px;
    right: 50px;

}
.hh
{
    position: absolute;
    top:100px;
    left:40px;
}
       </style>
       
    </head>
    <body>
        <jsp:include page="masterpageadmin.jsp"/>
        <p class="hh"><b>Welcome &nbsp;<%=  session.getAttribute("name")%> </b><br><br>
         </p>

         <p class="p2">   <a href="logout.jsp">Logout</a> </p>

    </body>
</html>
