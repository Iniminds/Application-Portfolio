<%--
    Document   : graphview
    Created on : Oct 30, 2012, 2:33:09 PM
    Author     : admin
--%>
<%

    if(session.isNew())
        {
           response.sendRedirect("index.jsp");
        }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <style type="text/css">
.p1
{
position:absolute;
top:300px;
left: 550px;
}
.hh
{
    position: absolute;
    top:200px;
    left:40px;
}
.p8
{
    position: absolute;
    top:50px;
    right: 50px;
}

</style>




       </head>
    <body background="homepage_bg.jpg">

        <p align="center"><img align="center" src="lets begin.jpg" width="600" height="200" ></p>
        <font size="3"><p class="p8"><a href="homepageadmin.jsp">Goto Homepage</a><br><br><a href="logout.jsp">Logout</a></p></font><br>
        <h3 align="center">How many Application working in particular Platform?</h3>
<form name="employee" action="data2" method="post" class="p1">
    <input type="radio" name="r1" value="pie" checked="checked">Pie Chart<br><br>
    <input type="radio" name="r1" value="Column">Column Chart<br><br>
    <input type="radio" name="r1" value="pareto">Pareto Chart<br><br>
    <input type="radio" name="r1" value="bar">Bar Chart<br><br>
    <input type="radio" name="r1" value="doughnut">Doughnut Chart<br><br>

 <input type="submit" name="submit" value="GO" id="t2">
</form>
    </body>
</html>
