<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html> 
    <head> 
        <meta http-equiv="Content-Type" content="text/html; 
                                            charset=UTF-8"> 
        <title>tawiridatabaseaction</title> 
    </head> 
    <body> 
        <%-- Here we fetch the data using the name attribute  
             of the text from the previous page 
        --%> 
       <%
           
            String id=request.getParameter("id");
              session.putValue("id",id);
            String name= request.getParameter("name");
            String zonenumber= request.getParameter("zonenumber");
            String dataentryproject= request.getParameter("dataentryproject");
             String updated= request.getParameter("updated");
            
            

            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tawiri",
                "root","88zamzam");
            Statement st= con.createStatement();
            ResultSet rs;
             int i=st.executeUpdate("insert into dataentryadminzone(id,name,zonenumber,dataentryproject,updated) values('"+id+"','"+name+"','"+zonenumber+"','"+dataentryproject+"','"+updated+"')");
            


        %>
    </body> 
            <%-- Here we use the JSP expression tag to display value  
                 stored in a variable --%> 
            <h2>Thank you for your message. It has been sent....!!</h2>
    
</html>
       
