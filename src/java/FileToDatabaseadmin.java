/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.text.SimpleDateFormat;
/**
 *
 * @author admin
 */
@WebServlet(name="FileToDatabaseadmin", urlPatterns={"/FileToDatabaseadmin"})
public class FileToDatabaseadmin extends HttpServlet {
   
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
            int To=Integer.parseInt(request.getParameter("to"));
            String Subject=request.getParameter("subject");
            String Report=request.getParameter("report");
            String filename="E:/4th year books/";
            

            filename=filename+request.getParameter("attachfile");
            out.println(filename);
            File file=new File(filename);
            FileInputStream fis=new FileInputStream(file);
            out.println("done");
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db1", "root","");
            java.util.Date now = new java.util.Date();
            String DATE_FORMAT = "yyyy-MM-dd";
            SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);


            String strDateNew = sdf.format(now) ;

            PreparedStatement pstmt=conn.prepareStatement("insert into file(file,file_data,Subject,Report,Emp_id,SendEmp_id,Date)values(?,?,?,?,?,"+request.getSession().getAttribute("id")+",'"+strDateNew+"')");
            pstmt.setString(1, file.getName());
            pstmt.setBinaryStream(2, fis,(int)file.length());
            pstmt.setString(3, Subject);
            pstmt.setString(4, Report);
            pstmt.setInt(5, To);
            pstmt.executeUpdate();
            response.sendRedirect("sendsuccesfullyadmin.jsp");

            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet FileToDatabaseadmin</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet FileToDatabaseadmin at " + request.getContextPath () + "</h1>");
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
