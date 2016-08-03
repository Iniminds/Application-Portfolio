<%-- 
    Document   : forgotpass
    Created on : Oct 31, 2012, 10:07:57 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password</title>
        <style type="text/css">
.p1
{
position:absolute;
top:300px;
left: 550px;

}


</style>


        
    </head>
    <body background="homepage_bg.jpg">
       
        
        <br><br><br><br>
        <form action="forgotpass" method="post">
            Employee Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="id"><br><br>
                Security Question:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="question">
                                            <option value="" SELECTED >- Select One -</option>
                                            <option value="What town were you born in?" >What town were you born in?</option>
                                            <option value="What town was your father born in?" >What town was your father born in?</option>
                                            <option value="What is the name of the hospital in which you were born?" >What is the name of the hospital in which you were born?</option>
                                            <option value="What is the first name of your best childhood friend?" >What is the first name of your best childhood friend?</option>
                                            <option value="What was the name of your primary school?" >What was the name of your primary school?</option>
                                            <option value="What town was your mother born in?" >What town was your mother born in?</option>
                                            <option value="What is the name of the first company / organization you worked for?" >What is the name of the first company / organization you worked for?</option>

            </select><br><br>
            Answer:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" name="answer1"><br><br>
            <input type="submit" value="Change Password">
        </form><br><br>
        <a href="index.jsp">Go to Login Page</a>
    </body>
</html>

