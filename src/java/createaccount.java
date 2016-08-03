/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
/**
 *
 * @author admin
 */
@WebServlet(name="createaccount", urlPatterns={"/createaccount"})
public class createaccount extends HttpServlet {
    String login="click Here to login";
   
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
            
            int s2=Integer.parseInt(request.getParameter("n2"));
           
            String s3=request.getParameter("n3");
            
            String s4=request.getParameter("n4");
            String s5=request.getParameter("n5");
            String s6=request.getParameter("question");
            String s7=request.getParameter("n6");
           
            if(s1!=null && s2!=0 && s3!=null && s4!=null && s5!=null && s6!=null && s7!=null)
            {
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","");


            Statement s = c.createStatement();


            String squery= "insert into employee_details values("+s2+",'"+s5+"','"+s1+"','"+s3+"','"+s4+"','"+s6+"','"+s7+"','E')";

            s.executeUpdate(squery);
            response.sendRedirect("confirm.jsp");
            }
 
            /*
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet createaccount</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("You have succesfully registered");

            out.println("</body>");
            out.println("</html>");
          */
        }catch(Exception e)
        {
        } finally {
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
