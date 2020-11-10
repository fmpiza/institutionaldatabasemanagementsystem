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
           
            
            String projectid= request.getParameter("projectid");
            String aircraftid= request.getParameter("aircraftid");
            String pilotid= request.getParameter("pilotid");
             String fsodid= request.getParameter("fsodid");
            String rsodidr= request.getParameter("rsodidr");
            String rsodidl= request.getParameter("rsodidl");
            String other= request.getParameter("other");
             String photograph= request.getParameter("photograph");
           
            

            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tawiri",
                "root","88zamzam");
            Statement st= con.createStatement();
            ResultSet rs;
             int i=st.executeUpdate("insert into crew(projectid,aircraftid,pilotid,fsodid,rsodidr,rsodidl,other,photograph) values('"+projectid+"','"+aircraftid+"','"+pilotid+"','"+fsodid+"','"+rsodidr+"','"+rsodidl+"','"+other+"','"+photograph+"')");
            


        %>
    </body> 
            <%-- Here we use the JSP expression tag to display value  
                 stored in a variable --%> 
            <h2>Thank you for your message. It has been sent....!!</h2>
    
</html>
       
