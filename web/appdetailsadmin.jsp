<%-- 
    Document   : appdetailsadmin
    Created on : Nov 19, 2012, 3:18:04 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADD APPLICATION DETAIL</title>
        <style type="text/css">


.p2{
    position: absolute;
    top:50px;
    right: 50px;

}
        </style>
        
    </head>
    <body background="homepage_bg.jpg">
        <p align="center"><img src="lets begin.jpg" width="600" height="200">
            <p class="p2"> <a href="homepageadmin.jsp">Goto Homepage</a><br><br> <a href="logout.jsp">Logout</a></p>
        <fieldset>
        <form action="appdetailsadmindata" method="post">
            Application Name:&nbsp;&nbsp;<input type="text" name="Apname" size="30"><br><br>
            Platform:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="platform" size="30"><br><br>
            Vendor:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="vendor" size="30"><br><br>
            Last Modified Date:<input type="text" name="lastMD" size="30"><br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <label>(YYYY/MM/DD)</label><br><br>
            Update Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="Updatedate" size="30"><br>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <label>(YYYY/MM/DD)</label><br><br>
            Database:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="database" size="30"><br><br>
            Application Server:<input type="text" name="appserver" size="30"><br><br>
            Brief Description:&nbsp;&nbsp;&nbsp;<input type="text" name="brief" size="70"><br><br>
            <input type="submit" name="add" value="ADD" size="30"><br><br>
        </form>
        </fieldset>
    </body>
</html>
