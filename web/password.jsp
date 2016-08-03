<%-- 
    Document   : password
    Created on : Nov 5, 2012, 11:02:29 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .c1
            {
                position: absolute;
                bottom: 100px;
                left: 200px;
}
        </style>
    </head>
    <body background="homepage_bg.jpg">
        <p align="center"><img align="center" src="lets begin.jpg" width="600" height="200" ></p>
        <fieldset><legend>Change Password</legend>
       
        <form action="passwordcon" method="post">
            <label>Employee Id:</label><input type="text" name="id1"><br><br>
        <label>New Password:</label><input type="password" name="pass"><br><br>
        <label>Confirm Password:</label><input type="password" name="pass1"><br><br>
        <input type="submit" name="SUBMIT" value="Submit"></form>
        </fieldset>

    </body>
</html>
