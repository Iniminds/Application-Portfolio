<%-- 
    Document   : request
    Created on : Nov 15, 2012, 10:19:03 PM
    Author     : admin
--%>
<%

    if(session.isNew())
        {
           response.sendRedirect("index.jsp");
        }
%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Request from the Employee</title>
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
        <font size="3"><p class="p9"><a href="homepageadmin.jsp">Goto Homepage</a><br><br><a href="logout.jsp">Logout</a></p></font>

        <%
            Class.forName("com.mysql.jdbc.Driver");

            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","");
            Statement s = c.createStatement();
            String sql="select * from requestadmin where Emp_id='"+session.getAttribute("id")+"' ORDER BY Date DESC";
            ResultSet rs=s.executeQuery(sql);
            
            %>
            <form action="delete" method="post">
            <table cellpadding="10" border="1" align="center">
             <tr>
                 <th></th>
                 <th>No.</th>
                 <th>Employee Id</th>
                 <th>Request</th>
               <th>Date</th>
             </tr>
            <%
            int i=1;

            while(rs.next())
                {
                %>

                <tr>
                    <td><input type="checkbox" name="c1" value="<%=rs.getString("Requestadmin")%>"></td>
                    <td><%=i%></td>
                  <td><%=rs.getString("SendEmp_id")%></td>

                  <td><%=rs.getString("Requestadmin")%></td>
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
