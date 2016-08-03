

import com.sun.org.apache.xerces.internal.dom.DocumentImpl;
import com.sun.org.apache.xml.internal.serialize.OutputFormat;
import com.sun.org.apache.xml.internal.serialize.XMLSerializer;
import java.io.*; /* Java IO */
import org.w3c.dom.*;
import javax.servlet.http.HttpServlet;
import java.sql.*;/* W3C Interfaces */
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
//import org.apache.xerces.dom.*; /* Xerces DOM Classes */
//import org.apache.xml.serialize.*; /* Xerces Serializer */
public class databasexml extends HttpServlet{

  
  public static final String SQL = "select App_name,Platform from application_details";
  public static String OUTPUTFILE = "E:/Project/Pro/web/data1.xml";

  public static void main(String[] args) {

    try{

    /** Step 1 : Making a JDBC Connection with database" **/
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","");

    /** Step 2 : Retrieve the customer data from database **/
    Statement statement = conn.createStatement();
    ResultSet rs = statement.executeQuery(SQL);

    /** Step 3 : Build customer XML DOM **/
    Document xmlDoc = buildCustomerXML(rs);

    /** Step 4 : Write output to a file **/
    File outputFile = new File(OUTPUTFILE);
    printDOM(xmlDoc, outputFile);
    conn.close();/*Connection close*/
    
    }
    catch(Exception e)
    {
      System.out.println("Really poor exception handling " +e.toString());
    }
  }//Main

  /*Build XML DOcument from database. The XML object is returned to main method where it is written to flat file.*/
  private static Document buildCustomerXML(ResultSet rs) throws Exception
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
       /* for(i=1;i<result.length;i++)
        {
            System.out.println(count1[i]);
        }*/
        for(k=1;k<result.length;k++)
        {
      Element app = xmlDoc.createElement("set");

    /* Build the CustomerId as a Attribute*/
    app.setAttribute("value",""+count1[k]);
    app.setAttribute("label",""+result[k]);

    /* Creating elements within customer DOM*/
  //  Element firstName = xmlDoc.createElement("FIRSTNAME");
  //  Element lastName = xmlDoc.createElement("LASTNAME");

    /* Populating Customer DOM with Data*/
   // firstName.appendChild(xmlDoc.createTextNode(_customerRS.getString("customerfirstname")));
    //lastName.appendChild(xmlDoc.createTextNode(_customerRS.getString("customerlastname")));

    /* Adding the firstname and lastname elements to the Customer Element*/
   // customer.appendChild(firstName);
   // customer.appendChild(lastName);

    /* Appending Customer to the Root Class*/
    
   
  
    rootElement.appendChild(app);
    

      }
      
  
  return xmlDoc;
  }

  /* printDOM will write the contents of xml document passed onto it out to a file*/
  private static void printDOM(Document _xmlDoc, File _outputFile) throws Exception
  {
    OutputFormat outputFormat = new OutputFormat("XML","UTF-8",true);
    FileWriter fileWriter = new FileWriter(_outputFile);

    XMLSerializer xmlSerializer = new XMLSerializer(fileWriter, outputFormat);

    xmlSerializer.asDOMSerializer();

    xmlSerializer.serialize(_xmlDoc.getDocumentElement());
  }
  
}
