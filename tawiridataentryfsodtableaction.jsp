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
            String adminzone= request.getParameter("adminzone");
            String altitude= request.getParameter("altitude");
            String transectspacing= request.getParameter("transectspacing");
             String trsu= request.getParameter("trsu");
            String dataentrytransect= request.getParameter("dataentrytransect");
            String updated= request.getParameter("updated");
            String utmcenterx= request.getParameter("utmcenterx");
            String utmcentery= request.getParameter("utmcentery");
            
            

            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tawiri",
                "root","88zamzam");
            Statement st= con.createStatement();
            ResultSet rs;
             int i=st.executeUpdate("insert into dataentryfsod(id,adminzone,altitude,transectspacing,trsu,dataentrytransect,updated,utmcenterx,utmcentery) values('"+id+"','"+adminzone+"','"+altitude+"','"+transectspacing+"','"+trsu+"','"+dataentrytransect+"','"+updated+"','"+utmcenterx+"','"+utmcentery+"')");
            


        %>
    </body> 
            <%-- Here we use the JSP expression tag to display value  
                 stored in a variable --%> 
            <h2>Thank you for your message. It has been sent....!!</h2>
    
</html>
       
