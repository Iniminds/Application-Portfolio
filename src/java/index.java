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
import javax.servlet.http.HttpSession;
import java.sql.*;
/**
 *
 * @author admin
 */
@WebServlet(name="index", urlPatterns={"/index"})
public class index extends HttpServlet {
   
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
            String s1=request.getParameter("E_id");
            String s2=request.getParameter("pass");
            
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","");


            Statement s = c.createStatement();
            String sql="select * from employee_details";
             
            ResultSet rs= s.executeQuery(sql);
            
            String s3 = null;
            String s4 = null;
            String s5 = null;
            int flag=0;
            int flag1=0;
            while(rs.next())
            {
                
               if(s1.equals(rs.getString("Emp_id")) && s2.equals(rs.getString("Emp_pass")))
                {

                    s3=rs.getString("Emp_name");
                    s4=rs.getString("Authority");
                    s5=rs.getString("Emp_depart");
                    if(s4.equals("A"))
                    {
                       flag1=1;
                       break;
                    }
                    else
                    {
                   flag=1;
                    break;
                    }
                }
                else
                {
                    flag=0;
                }

                }
                if(flag1==1)
                {
                    HttpSession session=request.getSession();
                    session.setMaxInactiveInterval(30*60);
                    session.setAttribute("name", s3);
                    session.setAttribute("id", s1);
                    session.setAttribute("depart", s5);
                    response.sendRedirect("homepageadmin.jsp");

                }
                else if(flag==1)
                {
                    HttpSession session=request.getSession();
                    session.setMaxInactiveInterval(30*60);
                    session.setAttribute("name", s3);
                    session.setAttribute("id", s1);
                    session.setAttribute("depart", s5);
                    response.sendRedirect("homepage.jsp");
                }
                else
                {
                    response.sendRedirect("invaliduser.jsp");
                }

            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet index</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet index at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
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
