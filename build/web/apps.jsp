<%-- 
    Document   : apps
    Created on : Nov 4, 2012, 7:24:00 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" import="java.sql.*" %>
<% response.setContentType("text/html");%>
<%
String str=request.getParameter("queryString");
try {
String connectionURL = "jdbc:mysql://localhost:3306/db1";
Connection con;
Class.forName("com.mysql.jdbc.Driver");
// Get a Connection to the database
con = DriverManager.getConnection(connectionURL, "root", "");
//Add the data into the database
String sql = "SELECT App_name FROM application_details WHERE App_name LIKE '"+str+"%' ";
Statement stm = con.createStatement();
stm.executeQuery(sql);
ResultSet rs= stm.getResultSet();
while (rs.next ()){
out.println("<li onclick='fill("+rs.getString("App_name")+");'>"+rs.getString("App_name")+"</li>");

}}catch(Exception e){
out.println("Exception is ;"+e);
}
%>

