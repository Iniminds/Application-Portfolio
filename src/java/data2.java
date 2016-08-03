/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import com.sun.org.apache.xerces.internal.dom.DocumentImpl;
import com.sun.org.apache.xml.internal.serialize.OutputFormat;
import com.sun.org.apache.xml.internal.serialize.XMLSerializer;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/**
 *
 * @author admin
 */
@WebServlet(name="data2", urlPatterns={"/data2"})
public class data2 extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public static final String SQL = "select App_name,Platform from application_details";
  public static String OUTPUTFILE = "E:/Project/Pro/web/data2.xml";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String s1=request.getParameterValues("r1")[0];
            Class.forName("com.mysql.jdbc.Driver");

    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","");


    Statement statement = conn.createStatement();
    ResultSet rs = statement.executeQuery(SQL);


    Document xmlDoc = buildappXML(rs);


    File outputFile = new File(OUTPUTFILE);

    printDOM(xmlDoc, outputFile);
    conn.close();


         if(s1.equals("pie"))
         {
         response.sendRedirect("graphpieadmin.jsp");
            }
 else if(s1.equals("Column"))
         {
           response.sendRedirect("graphcolumnadmin.jsp");
 }
 else if(s1.equals("pareto"))
         {
             response.sendRedirect("graphparetoadmin.jsp");
 }
 else if(s1.equals("bar"))
         {
             response.sendRedirect("graphbaradmin.jsp");
        }
        else
         {
             response.sendRedirect("graphdoughnutadmin.jsp");
        }
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet data2</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet data2 at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
        }
        catch(Exception e)
        {
        } finally {
            out.close();
        }
    }
    public static void main(String[] args) {

    try{


    }
    catch(Exception e)
    {
      System.out.println("Really poor exception handling " +e.toString());
    }
  }
  public static Document buildappXML(ResultSet rs) throws Exception
  {
      int i=0,k;
  String s[]=new String[100];
  String c[]=new String[100];
  int count[]=new int[100];
  int count1[]=new int[100];
  int j=0;
  while(rs.next())
  {
             s[j]=rs.getString("Platform");

            j++;
      }
  System.arraycopy(s,0,c,0,j);              //copy String s to c


  Document xmlDoc = new DocumentImpl();

  /* Creating the root element */
  Element rootElement = xmlDoc.createElement("chart");
  xmlDoc.appendChild(rootElement);

  for(k=0;k<j;k++)
  {

    for(int a=0;a<j;a++)
    {
        if(s[k].equals(s[a]))
        {
            count[k]++;


        }
    }
  }

  // remove duplicate value in string array.....
        List<String> list = Arrays.asList(c);
        Set<String> set = new HashSet<String>(list);
        String[] result = new String[set.size()];
        set.toArray(result);
        for(i=1;i<result.length;i++)
        {
            for(k=0;k<j;k++)
            {
                if(result[i].equals(s[k]))
                {
                    count1[i]=count[k];
                }
            }
        }
        for(k=1;k<result.length;k++)
        {
      Element app = xmlDoc.createElement("set");


    app.setAttribute("value",""+count1[k]);
    app.setAttribute("label",""+result[k]);

    rootElement.appendChild(app);


      }


  return xmlDoc;
  }


  public static void printDOM(Document _xmlDoc, File _outputFile) throws Exception
  {
    OutputFormat outputFormat = new OutputFormat("XML","UTF-8",true);
    FileWriter fileWriter = new FileWriter(_outputFile);

    XMLSerializer xmlSerializer = new XMLSerializer(fileWriter, outputFormat);

    xmlSerializer.asDOMSerializer();

    xmlSerializer.serialize(_xmlDoc.getDocumentElement());
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
