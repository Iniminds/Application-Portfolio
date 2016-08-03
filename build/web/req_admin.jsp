<%-- 
    Document   : req_admin
    Created on : Oct 30, 2012, 12:58:22 PM
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
.p1
{
position:absolute;
top:200px;
right:400px;

}
.p9
{
    position: absolute;
    top:50px;
    right: 50px;
}

</style>
    </head>
    <body background="homepage_bg.jpg">
        <p align="center"><img align="center" src="lets begin.jpg" width="600" height="150" ></p>
        <font size="3"><p class="p9"><a href="homepage.jsp">Goto Homepage</a><br><br><a href="logout.jsp">Logout</a></p></font>
        <form action="requestadmin" method="post" class="p1">
            <% session.getAttribute("id");%>
            TO:&nbsp;<input type="text" name="n1" size="60"><br><br>
        Request Admin:&nbsp;<br>
        <textarea name="m1" rows="15" cols="50">
        </textarea><br><br>
        <input type="submit" value="SEND" />
        </form>
    </body>
</html>
