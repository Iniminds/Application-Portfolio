<%-- 
    Document   : index
    Created on : Oct 26, 2012, 7:12:07 PM
    Author     : admin
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Login Page</title>
         <style type="text/css">

     .p3{
         position:absolute;
         top:300px;
         right:  500px;
         
}



</style>
</head>
    <body background="homepage_bg.jpg">
   
        <p align="center"><img src="lets begin.jpg" width="600" height="200">
            <br><br><font size="5"><b>ESSAR APPLICATION PORTFOLIO</b></font><br><br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="acctry.jsp">Create An Account</a>
            </p>


       
       
        <br><br><br><font color="black">
       
        
        </font>
        <form action="index" method="post">
            <p class="p3">
            
            <label > Employee ID</label>&nbsp;&nbsp;<input type="number" name="E_id" size="20"><br><br>
            <label>Password</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="password" name="pass" size="21"><br><br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="submit" value="LOGIN">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <a href="forgotpass.jsp">Forgot Password </a>
          </p>
        </form>
        
    </body>
</html>
