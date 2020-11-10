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
            String versiondatabase= request.getParameter("versiondatabase");
            String versionwebsoftware= request.getParameter("versionwebsoftware");
            String versionimportsoftware= request.getParameter("versionimportsoftware");
             String versioncalculationsoftware= request.getParameter("versioncalculationsoftware");
            String responsiblename= request.getParameter("responsiblename");
            String responsiblephone= request.getParameter("responsiblephone");
            String responsibleemail= request.getParameter("responsibleemail");
            
            

            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tawiri",
                "root","88zamzam");
            Statement st= con.createStatement();
            ResultSet rs;
             int i=st.executeUpdate("insert into tawiridatabase(id,versiondatabase,versionwebsoftware,versionimportsoftware,versioncalculationsoftware,responsiblename,responsiblephone,responsibleemail) values('"+id+"','"+versiondatabase+"','"+versionwebsoftware+"','"+versionimportsoftware+"','"+versioncalculationsoftware+"','"+responsiblename+"','"+responsiblephone+"','"+responsibleemail+"')");
            


        %>
    </body> 
            <%-- Here we use the JSP expression tag to display value  
                 stored in a variable --%> 
            <h2>Thank you for your message. It has been sent....!!</h2>
    
</html>
       
