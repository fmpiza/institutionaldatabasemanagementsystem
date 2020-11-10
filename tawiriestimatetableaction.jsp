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
            String projectid= request.getParameter("projectid");
            String speciesid= request.getParameter("speciesid");
            String no= request.getParameter("no");
             String n= request.getParameter("n");
            String areaz= request.getParameter("areaz");
            String z= request.getParameter("z");
            String y= request.getParameter("y");
             String z2=request.getParameter("z2");
              
            String y2= request.getParameter("y2");
            String zy= request.getParameter("zy");
            String meanz= request.getParameter("meanz");
             String r= request.getParameter("r");
            String sy2= request.getParameter("sy2");
            String sz2= request.getParameter("sz2");
            String szy= request.getParameter("szy");
            String estimates= request.getParameter("estimates");
             String variance=request.getParameter("variance");
              
            String standarderror= request.getParameter("standarderror");
            String cl95= request.getParameter("cl95");
            String cly= request.getParameter("cly");
             String admin= request.getParameter("admin");
            String max= request.getParameter("max");
            String min= request.getParameter("min");
            String finalcount= request.getParameter("finalcount");
             String stratificationid= request.getParameter("stratificationid");
            String stratificationname= request.getParameter("stratificationname");
           

            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tawiri",
                "root","88zamzam");
            Statement st= con.createStatement();
            ResultSet rs;
             int i=st.executeUpdate("insert into estimate(id,projectid,speciesid,no,n,areaz,z,y,z2,y2,zy,meanz,r,sy2,sz2,szy,estimates,variance,standarderror,cl95,cly,admin,max,min,finalcount,stratificationid,stratificationname) values('"+id+"','"+projectid+"','"+speciesid+"','"+no+"','"+n+"','"+areaz+"','"+z+"','"+y+"','"+z2+"','"+y2+"','"+zy+"','"+meanz+"','"+r+"','"+sy2+"','"+sz2+"','"+szy+"','"+estimates+"','"+variance+"','"+standarderror+"','"+cl95+"','"+cly+"','"+admin+"','"+max+"','"+min+"','"+finalcount+"','"+stratificationid+"','"+stratificationname+"')");
            


        %>
    </body> 
            <%-- Here we use the JSP expression tag to display value  
                 stored in a variable --%> 
            <h2>Thank you for your message. It has been sent....!!</h2>
    
</html>
       
