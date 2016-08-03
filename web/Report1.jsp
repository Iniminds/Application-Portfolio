<%-- 
    Document   : Report1
    Created on : Nov 13, 2012, 8:11:55 PM
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
        <title>Report Page</title>
        <style type="text/css">
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
        <font size="3"> <p class="p9"><a href="homepage.jsp">Goto Homepage</a><br><br>  <a href="logout.jsp">Logout</a></p></font>
        <%@ page import="java.io.*,java.sql.*"%>


 <%
 
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","");
 String sql="Select * from file where Emp_id='"+session.getAttribute("id")+"'ORDER BY Date DESC";
 Statement st=con.createStatement();
 ResultSet rs=st.executeQuery(sql);
 
 %>
 <form action="deletereport" method="post">
 <table cellpadding="15" border="1" align="center">
     <tr>
         <th></th>
         <th>No.</th>
         <th>Employee Id</th>
         <th>Subject</th>
         <th>Report</th>
         <th>Attachfile</th>
         <th>Date</th>
     </tr>
 <%
 int i=1;
 while(rs.next()){
 
%>
<tr>
    <td><input type="checkbox" name="c1" value="<%=rs.getString("file")%>"></td>
    <td><%=i%></td>
<td><%=rs.getString("SendEmp_id")%> </td>
<td><%=rs.getString("Subject")%></td>
<td><%=rs.getString("Report")%></td>
<td><%=rs.getString("file")%></td>
<td><%=rs.getString("Date")%></td>

 
  </tr>
  <%
 i++;
}
%>
</table><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="submit" name="Delete" value="Delete">
 </form>
 
 
</body>
</html>
