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
        <font size="3"><p class="p9"><a href="homepageadmin.jsp">Goto Homepage</a><br>
           <br><a href="sendboxnotice.jsp">Sendbox Notice</a> <br><br>    <a href="logout.jsp">Logout</a><br>
               </p></font>
        <form action="noticesend" method="post" class="p1">
            Department:<input type="text" name="t1" size="30"><br><br>
        Notice:&nbsp;<br>
        <textarea name="m1" rows="20" cols="60">
        </textarea><br><br>
        <input type="submit" value="SEND" />
        </form>
    </body>
</html>
