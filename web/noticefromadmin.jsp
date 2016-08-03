<%-- 
    Document   : noticefromadmin
    Created on : Nov 16, 2012, 12:15:41 PM
    Author     : admin
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notice From Administrator</title>
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
        <font size="3"><p class="p9"><a href="homepage.jsp">Goto Homepage</a><br><br><a href="logout.jsp">Logout</a></p></font>
        <%
            Class.forName("com.mysql.jdbc.Driver");

            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","");
            Statement s = c.createStatement();
            String sql="select * from notice where Emp_depart like '"+session.getAttribute("depart")+"%' ORDER BY Date DESC";
            ResultSet rs=s.executeQuery(sql);

            %>
        
            <table cellpadding="10" border="1" align="center">
             <tr>
                 
                 <th>No.</th>
                 <th>Department</th>
                 <th>Notice</th>
               <th>Date</th>
             </tr>
            <%
            int i=1;

            while(rs.next())
                {
                %>

                <tr>
                    <td><%=i%></td>
                  <td><%=rs.getString("Emp_depart")%></td>

                  <td><%=rs.getString("Notice")%></td>
                  <td><%=rs.getString("Date")%></td>
                </tr>
                    <%
                    i++;
            }
        %>


            </table>
           
    </body>
</html>
