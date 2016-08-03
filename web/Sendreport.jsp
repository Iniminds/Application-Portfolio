<%-- 
    Document   : Sendreport
    Created on : Oct 30, 2012, 2:38:18 PM
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
        <title>Send Report</title>
        <style type="text/css">


.y
{
position:absolute;
top:200px;
right:300px;

}
.p9
{
    position: absolute;
    top:50px;
    right: 50px;
}

</style>
        <script>
           function validate(form_id,email) {

   var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
   var address = document.forms[form_id].elements[email].value;
   if(reg.test(address) == false) {

      alert('Invalid Email Address');
      return false;
   }
}
        </script>
        
    </head>
    <body background="homepage_bg.jpg">
        
         <p align="center"><img align="center" src="lets begin.jpg" width="600" height="150" ></p>

         <font size="3"> <p class="p9"><a href="homepage.jsp">Goto Homepage</a><br><br>
                 <a href="Report1.jsp">Inbox Report</a>
        <br><br>
                 <a href="logout.jsp">Logout</a></p></font>
         

         
        <form class="y" id="form_id" action="FileToDatabase" method="post">
        

        TO :&nbsp;<input type="text" name="to" size="101"><br><br>
        SUBJECT:&nbsp;<input type="text" name="subject" size="94"><br><br>
        REPORT:&nbsp;<br>
        <textarea name="report" rows="20" cols="80">
        </textarea>
        <br>
        
        <label> Attach a File</label><br>
         <input name="attachfile" type="file" id="attachfile"/>
       <br><br>
        <input type="submit" value="SEND">
        </form>
    
    </body>
</html>
