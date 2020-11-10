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
            String aircraftreg= request.getParameter("aircraftreg");
            String fso= request.getParameter("fso");
            String pilot= request.getParameter("pilot");
             String rsoleft= request.getParameter("rsoleft");
            String rsoright= request.getParameter("rsoright");
            String dataentryproject= request.getParameter("dataentryproject");
            String interleft= request.getParameter("interleft");
            String interright= request.getParameter("interright");
             String slopeleft= request.getParameter("slopeleft");
            String sloperight= request.getParameter("sloperight");
            String updated= request.getParameter("updated");
            
            
            

            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tawiri",
                "root","88zamzam");
            Statement st= con.createStatement();
            ResultSet rs;
             int i=st.executeUpdate("insert into dataentryaircraft(id,aircraftreg,fso,pilot,rsoleft,rsoright,dataentryproject,interleft,interright,slopeleft,sloperight,updated) values('"+id+"','"+aircraftreg+"','"+fso+"','"+pilot+"','"+ rsoleft+"','"+rsoright+"','"+dataentryproject+"','"+interleft+"','"+interright+"','"+slopeleft+"','"+sloperight+"','"+updated+"')");
            


        %>
    </body> 
            <%-- Here we use the JSP expression tag to display value  
                 stored in a variable --%> 
            <h2>Thank you for your message. It has been sent....!!</h2>
    
</html>
       
