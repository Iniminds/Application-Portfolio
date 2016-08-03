/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.awt.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

import java.io.*;

/**
 *
 * @author admin
 */
@WebServlet(name="appdetails", urlPatterns={"/appdetails"})
public class appdetails extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

            String s1=request.getParameter("n1");
           
            Class.forName("com.mysql.jdbc.Driver");

            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","");
            

            Statement s = c.createStatement();
            String sql="select * from application_details";

            ResultSet rs= s.executeQuery(sql);

            int flag=0;
            while(rs.next())
            {
                if(s1.equals(rs.getString("App_name")))
                {
                     
                    flag=1;
                    break;
                }
 else
                {
                    flag=0;
 }
            }
            if(flag==1)
            {
              
                
            
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Application Details</title>");
            

            
            out.println("<link rel='stylesheet' href='style.css' type='text/css'>");
            
            out.println("</head>");
            out.println("<body background=homepage_bg.jpg>");
            out.print("<p align=center><img src=lets_begin.jpg width=600 height=200></p><br>");
            out.print("<p class=p9><a href=homepage.jsp>Goto Homepage</a><br><br><a href=logout.jsp>"+"Logout"+"</a></p>");
            out.println("<TABLE BORDER=1 CELLPADDING=15 ALIGN=CENTER>");
            out.println("<TR>");
            out.println("<TH colspan=2 rowspan=1><font color=firebrick>APPLICATION DETAIL</font></TH>");
            out.println("</TR>");
            out.println("<TR>");
            out.println("<TH><font color=blue>Application Name</font></TH>");
            out.println("<TD>"+rs.getString("App_name")+"</TD>");
            out.println("</TR>");
            out.println("<TR>");
            out.println("<TH><font color=blue>Platform</font></TH>");
            out.println("<TD>"+rs.getString("Platform")+"</TD>");
            out.println("</TR>");
            out.println("<TR>");
            out.println("<TH><font color=blue>Publisher</font></TH>");
            out.println("<TD>"+rs.getString("Vendor")+"</TD>");
            out.println("</TR>");
            out.println("<TR>");
            out.println("<TH><font color=blue>Last Modified Date</font></TH>");
            out.println("<TD>"+rs.getString("LastMDate")+"</TD>");
            out.println("</TR>");
            out.println("<TR>");
            out.println("<TH><font color=blue>Update Date</font></TH>");
            out.println("<TD>"+rs.getString("UpdateDate")+"</TD>");
            out.println("</TR>");
            out.println("<TR>");
            out.println("<TH><font color=blue>Database</font></TH>");
            out.println("<TD>"+rs.getString("Database")+"</TD>");
            out.println("</TR>");
            out.println("<TR>");
            out.println("<TH><font color=blue>Application Server</font></TH>");
            out.println("<TD>"+rs.getString("Application_server")+"</TD>");
            out.println("</TR>");
            out.println("<TR>");
            out.println("<TH><font color=blue>Brief Description</font></TH>");
            out.println("<TD>"+rs.getString("Brief_Description")+"</TD>");
            out.println("</TR>");
            out.println("</TABLE>");
            out.println("<br><br>");
            out.println("</body>");
            out.println("</html>");
            }
 else
            {
                
                response.sendRedirect("appdetails.html");
 }
        }
        catch(Exception e)
        {
        } 
        finally {
            out.close();
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
        
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
