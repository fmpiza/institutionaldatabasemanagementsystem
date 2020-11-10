<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
     <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!-- Bootstrap CSS -->
				<title>tawiridatabasekept</title>
               
                
				</head>
                <style>



.box {
  width: 40%;
  margin: 0 auto;
  background: rgba(236, 9, 9, 0.2);
  padding: 35px;
  border: 2px solid #fff;
  border-radius: 20px/50px;
  background-clip: padding-box;
  text-align: center;
}


.overlay {
  position: fixed;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  background: rgba(0, 0, 0, 0.7);
  transition: opacity 500ms;
  visibility: hidden;
  opacity: 0;
}
.overlay:target {
  visibility: visible;
  opacity: 1;
}

.popup {
  margin: 70px auto;
  padding: 20px;
  background: white;
  border-radius: 5px;
  width: 80%;
  position: relative;
  transition: all 5s ease-in-out;
}

.popup h2 {
  margin-top: 0;
  color: #333;
  font-family: Tahoma, Arial, sans-serif;
}
.popup .close {
  position: absolute;
  top: 20px;
  right: 30px;
  transition: all 200ms;
  font-size: 30px;
  font-weight: bold;
  text-decoration: none;
  color: #333;
}
.popup .close:hover {
  color: #06D85F;
}
.popup .content {
  max-height: 30%;
  overflow: auto;
}

@media screen and (max-width: 700px){
  .box{
    width: 70%;
  }
  .popup{
    width: 70%;
  }
}
  
                
                * {
    box-sizing: border-box;
}

body {
    margin: opx;
    padding: 0px;
    text-align: center;
    
}



body {font-family: Verdana, sans-serif;}

/* Month header */
.month {
  padding: 70px 25px;
  width: 100%;
  background: #1abc9c;
  text-align: center;
}

/* Month list */
.month ul {
  margin: 0;
  padding: 0;
}

.month ul li {
  color: white;
  font-size: 20px;
  text-transform: uppercase;
  letter-spacing: 3px;
}

/* Previous button inside month header */
.month .prev {
  float: left;
  padding-top: 10px;
}

/* Next button */
.month .next {
  float: right;
  padding-top: 10px;
}

/* Weekdays (Mon-Sun) */
.weekdays {
  margin: 0;
  padding: 10px 0;
  background-color:#ddd;
}

.weekdays li {
  display: inline-block;
  width: 13.6%;
  color: #666;
  text-align: center;
}

/* Days (1-31) */
.days {
  padding: 10px 0;
  background: #eee;
  margin: 0;
}

.days li {
  list-style-type: none;
  display: inline-block;
  width: 13.6%;
  text-align: center;
  margin-bottom: 5px;
  font-size:12px;
  color: #777;
}

/* Highlight the "current" day */
.days li .active {
  padding: 5px;
  background: #1abc9c;
  color: white !important
}


/* Three image containers (use 25% for four, and 50% for two, etc) */
.column {
  float: left;
  width: 50%;
  padding: 20px;
}

/* Clear floats after image containers */
.row::after {
  content: "";
  clear: both;
  display: table;
}

a { text-decoration: none; }

header {
    padding: 90px;
    background-image: url('tawiriheader.jpg');
    background-size: 1200px 200px;
    color: white;
    font-style: oblique; 
     border-bottom: 2px solid black;  
} 


blink {
    -webkit-animation: 2s linear infinite condemned_blink_effect; /* for Safari 4.0 - 8.0 */
    animation: 2s linear infinite condemned_blink_effect;
  }
  
  /* for Safari 4.0 - 8.0 */
  @-webkit-keyframes condemned_blink_effect { 
    0% {
      visibility: hidden;
    }
    50% {
      visibility: hidden;
    }
    100% {
      visibility: visible;
    }
  }
  
  @keyframes condemned_blink_effect {
    0% {
      visibility: hidden;
    }
    50% {
      visibility: hidden;
    }
    100% {
      visibility: visible;
    }
  }


                
                </style>
		
        <body style="background-color: grey;margin:0">  
              
            <div align="center"><div class="card text-black bg-white mb-3" style="max-width: 70rem;">
                <div class="card-body">
                     <header></header>
                       
                       
                       <div class="card text-white bg-dark mb-3" style="max-width: 100rem;">
                        <P>
                         
                         
                          <font color="white" size=2><a href="#popup1"><font color="white" size=3><i>Database</i></font></i></font></a> <font size=5>|</font> <a href="tawiridatabasekept.jsp"><font color="white" size=3><i>View</i></font></a> <font size=5>|</font> <a href="#popup1"><font color="white" size=3><i>Download</i></font></a> <font size=5>|</font> <a href="www.google.com"><button type="button" class="btn btn-danger"><font color="white">Delete</font></button></a></P>
                            
                        </div>
                      </font><div id="popup1" class="overlay">
                        <div class="popup">
                          <h2><b><b><p><font color="black" size=3>Table Names :</font></b> <font color="black" size=3>1.</font> <a href="tawiriabouttable.html"><font color="black" size=3>about</font></a> <font color="black" size=3>2.</font> <a href="tawiriautopksupporttable.html"><font color="black" size=3>auto_pk_support</font></a> <font color="black" size=3>3.</font> <a href="tawiricalculationlogtable.html"><font color="black" size=3>calculation_log</font></a> <font color="black" size=3>4.</font> <a href="tawiricrewtable.html"><font color="black" size=3>crew</font></a></p>
                            <p><font color="black" size=3>5.</font> <a href="tawiridataentryadminzonetable.html"><font color="black" size=3>data_entry_admin_zone</font></a> <font color="black" size=3>6.</font> <a href="tawiridataentryaircrafttable.html"><font color="black" size=3>data_entry_aircraft</font></a> <font color="black" size=3>7.</font> <a href="tawiridataentryaircrafttable.html"><font color="black" size=3>data_entry_aircraft</font></a> <font color="black" size=3>8.</font> <a href="tawiridataentryfsodtable.html"><font color="black" size=3>data_entry_fsod</font></a></p>
                            <p><font color="black" size=3>9.</font> <a href="tawiridataentryfsodtable.html"><font color="black" size=3>data_entry_fsod</font></a> <font color="black" size=3>10.</font> <a href="tawiridataentryrsodtable.html"><font color="black" size=3>data_entry_rsod</font></a> <font color="black" size=3>11.</font> <a href="tawiriestimatetable.html"><font color="black" size=3>estimate</font></a> <font color="black" size=3>12.</font> <a href="tawirifsodtable.html"><font color="black" size=3>fsod</font></a></p>
                           
                          </h2>
                          <a class="close" href="#">&times;</a>
                          
                        </div>
                      </div>  
                  <div align="center">
                   <div class="card text-white bg-success mb-3" style="max-width: 80rem;">
                      <p><font color="green" size=1>.</font></p>
                      <p><font color="green" size=1>.</font></p>
                      <p><font size=4><button type="button" class="btn btn-light"><b>1. ABOUT TABLE Data Inserted</b></button></font></p>
                        <p><font color="green" size=1>.</font></p>
                                      
                      <font color="darkblue" size=3>
                             
                              <div align="center"><%
try {
/* Create string of connection url within specified format with machine
name, port number and database name. Here machine name id localhost and 
database name is student. */
String connectionURL = "jdbc:mysql://localhost:3306/tawiri";      
                
// declare a connection by using Connection interface
Connection connection = null;
/* declare object of Statement interface that is used for executing sql 
statements. */
Statement statement = null;
// declare a resultset that uses as a table for output data from tha table.
ResultSet rs = null;
// Load JBBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.jdbc.Driver").newInstance();
/* Create a connection by using getConnection() method that takes parameters 
of string type connection url, user name and password to connect to database.*/
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/tawiri", "root", "88zamzam");
/* createStatement() is used for create statement object that is used for 
sending sql statements to the specified database. */
statement = connection.createStatement();
// sql query to retrieve values from the secified table.
String QueryString = "SELECT * from tawiridatabase";
rs = statement.executeQuery(QueryString);
%>
<TABLE cellpadding="15" border="1" >
<%
while (rs.next()) {
%>
<TR>
<TD><%=rs.getInt(1)%></TD>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getString(3)%></TD>
<TD><%=rs.getString(4)%></TD>
<TD><%=rs.getString(5)%></TD>
<TD><%=rs.getString(6)%></TD>

</TR>
<% } %>
<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>

</TABLE><TABLE>
<TR>

</TR>
</TABLE>
</font></div> 


              <p><font color="green" size=1>.</font></p>
                      <p><font color="green" size=1>.</font></p>
                      <p><font size=4><button type="button" class="btn btn-light"><b>2. AUTO_PK_SUPPORT TABLE Data Inserted</b></button></font></p>
                        <p><font color="green" size=1>.</font></p>
                                      
                      <font color="darkblue" size=3>
                             
                              <div align="center"><%
try {
/* Create string of connection url within specified format with machine
name, port number and database name. Here machine name id localhost and 
database name is student. */
String connectionURL = "jdbc:mysql://localhost:3306/tawiri";      
                
// declare a connection by using Connection interface
Connection connection = null;
/* declare object of Statement interface that is used for executing sql 
statements. */
Statement statement = null;
// declare a resultset that uses as a table for output data from tha table.
ResultSet rs = null;
// Load JBBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.jdbc.Driver").newInstance();
/* Create a connection by using getConnection() method that takes parameters 
of string type connection url, user name and password to connect to database.*/
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/tawiri", "root", "88zamzam");
/* createStatement() is used for create statement object that is used for 
sending sql statements to the specified database. */
statement = connection.createStatement();
// sql query to retrieve values from the secified table.
String QueryString = "SELECT * from autopksupport";
rs = statement.executeQuery(QueryString);
%>
<TABLE cellpadding="15" border="1" >
<%
while (rs.next()) {
%>
<TR>
<TD><%=rs.getString(1)%></TD>
<TD><%=rs.getInt(2)%></TD>

</TR>
<% } %>
<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>

</TABLE><TABLE>
<TR>

</TR>
</TABLE>
</font></div> 

                              <p><font color="green" size=1>.</font></p>
                      <p><font color="green" size=1>.</font></p>
                      <p><font size=4><button type="button" class="btn btn-light"><b>3. CALCULATION_LOG TABLE Data Inserted</b></button></font></p>
                        <p><font color="green" size=1>.</font></p>
                                      
                      <font color="darkblue" size=3>
                             
                              <div align="center"><%
try {
/* Create string of connection url within specified format with machine
name, port number and database name. Here machine name id localhost and 
database name is student. */
String connectionURL = "jdbc:mysql://localhost:3306/tawiri";      
                
// declare a connection by using Connection interface
Connection connection = null;
/* declare object of Statement interface that is used for executing sql 
statements. */
Statement statement = null;
// declare a resultset that uses as a table for output data from tha table.
ResultSet rs = null;
// Load JBBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.jdbc.Driver").newInstance();
/* Create a connection by using getConnection() method that takes parameters 
of string type connection url, user name and password to connect to database.*/
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/tawiri", "root", "88zamzam");
/* createStatement() is used for create statement object that is used for 
sending sql statements to the specified database. */
statement = connection.createStatement();
// sql query to retrieve values from the secified table.
String QueryString = "SELECT * from calculationlog";
rs = statement.executeQuery(QueryString);
%>
<TABLE cellpadding="15" border="1" >
<%
while (rs.next()) {
%>
<TR>
<TD><%=rs.getInt(1)%></TD>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getString(3)%></TD>

</TR>
<% } %>
<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>

</TABLE><TABLE>
<TR>

</TR>
</TABLE>
</font></div> 

                              <p><font color="green" size=1>.</font></p>
                      <p><font color="green" size=1>.</font></p>
                      <p><font size=4><button type="button" class="btn btn-light"><b>4. CREW TABLE Data Inserted</b></button></font></p>
                        <p><font color="green" size=1>.</font></p>
                                      
                      <font color="darkblue" size=3>
                             
                              <div align="center"><%
try {
/* Create string of connection url within specified format with machine
name, port number and database name. Here machine name id localhost and 
database name is student. */
String connectionURL = "jdbc:mysql://localhost:3306/tawiri";      
                
// declare a connection by using Connection interface
Connection connection = null;
/* declare object of Statement interface that is used for executing sql 
statements. */
Statement statement = null;
// declare a resultset that uses as a table for output data from tha table.
ResultSet rs = null;
// Load JBBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.jdbc.Driver").newInstance();
/* Create a connection by using getConnection() method that takes parameters 
of string type connection url, user name and password to connect to database.*/
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/tawiri", "root", "88zamzam");
/* createStatement() is used for create statement object that is used for 
sending sql statements to the specified database. */
statement = connection.createStatement();
// sql query to retrieve values from the secified table.
String QueryString = "SELECT * from crew";
rs = statement.executeQuery(QueryString);
%>
<TABLE cellpadding="15" border="1" >
<%
while (rs.next()) {
%>
<TR>
<TD><%=rs.getString(1)%></TD>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getString(3)%></TD>
<TD><%=rs.getString(4)%></TD>
<TD><%=rs.getString(5)%></TD>
<TD><%=rs.getString(6)%></TD>
<TD><%=rs.getString(7)%></TD>
<TD><%=rs.getString(8)%></TD>

</TR>
<% } %>
<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>

</TABLE><TABLE>
<TR>

</TR>
</TABLE>
</font></div> 

                              <p><font color="green" size=1>.</font></p>
                      <p><font color="green" size=1>.</font></p>
                      <p><font size=4><button type="button" class="btn btn-light"><b>5. DATA_ENTRY_ADMIN_ZONE TABLE Data Inserted</b></button></font></p>
                        <p><font color="green" size=1>.</font></p>
                                      
                      <font color="darkblue" size=3>
                             
                              <div align="center"><%
try {
/* Create string of connection url within specified format with machine
name, port number and database name. Here machine name id localhost and 
database name is student. */
String connectionURL = "jdbc:mysql://localhost:3306/tawiri";      
                
// declare a connection by using Connection interface
Connection connection = null;
/* declare object of Statement interface that is used for executing sql 
statements. */
Statement statement = null;
// declare a resultset that uses as a table for output data from tha table.
ResultSet rs = null;
// Load JBBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.jdbc.Driver").newInstance();
/* Create a connection by using getConnection() method that takes parameters 
of string type connection url, user name and password to connect to database.*/
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/tawiri", "root", "88zamzam");
/* createStatement() is used for create statement object that is used for 
sending sql statements to the specified database. */
statement = connection.createStatement();
// sql query to retrieve values from the secified table.
String QueryString = "SELECT * from dataentryadminzone";
rs = statement.executeQuery(QueryString);
%>
<TABLE cellpadding="15" border="1" >
<%
while (rs.next()) {
%>
<TR>
<TD><%=rs.getInt(1)%></TD>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getString(3)%></TD>
<TD><%=rs.getInt(4)%></TD>
<TD><%=rs.getString(5)%></TD>

</TR>
<% } %>
<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>

</TABLE><TABLE>
<TR>

</TR>
</TABLE>
</font></div> 

                              <p><font color="green" size=1>.</font></p>
                      <p><font color="green" size=1>.</font></p>
                      <p><font size=4><button type="button" class="btn btn-light"><b>6. DATA_ENTRY_AIRCRAFT TABLE Data Inserted</b></button></font></p>
                        <p><font color="green" size=1>.</font></p>
                                      
                      <font color="darkblue" size=3>
                             
                              <div align="center"><%
try {
/* Create string of connection url within specified format with machine
name, port number and database name. Here machine name id localhost and 
database name is student. */
String connectionURL = "jdbc:mysql://localhost:3306/tawiri";      
                
// declare a connection by using Connection interface
Connection connection = null;
/* declare object of Statement interface that is used for executing sql 
statements. */
Statement statement = null;
// declare a resultset that uses as a table for output data from tha table.
ResultSet rs = null;
// Load JBBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.jdbc.Driver").newInstance();
/* Create a connection by using getConnection() method that takes parameters 
of string type connection url, user name and password to connect to database.*/
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/tawiri", "root", "88zamzam");
/* createStatement() is used for create statement object that is used for 
sending sql statements to the specified database. */
statement = connection.createStatement();
// sql query to retrieve values from the secified table.
String QueryString = "SELECT * from dataentryaircraft";
rs = statement.executeQuery(QueryString);
%>
<TABLE cellpadding="10" border="1" >
<%
while (rs.next()) {
%>

<TR>
<TD><%=rs.getInt(1)%></TD>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getString(3)%></TD>
<TD><%=rs.getString(4)%></TD>
<TD><%=rs.getString(5)%></TD>
<TD><%=rs.getString(6)%></TD>
<TD><%=rs.getInt(7)%></TD>
<TD><%=rs.getString(8)%></TD>
<TD><%=rs.getString(9)%></TD>
<TD><%=rs.getString(10)%></TD>
<TD><%=rs.getString(11)%></TD>
<TD><%=rs.getString(12)%></TD>

</TR>
<% } %>
<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>

</TABLE><TABLE>
<TR>

</TR>
</TABLE>
</font></div> 

                              <p><font color="green" size=1>.</font></p>
                      <p><font color="green" size=1>.</font></p>
                      <p><font size=4><button type="button" class="btn btn-light"><b>7. DATA_ENTRY_FSOD TABLE Data Inserted</b></button></font></p>
                        <p><font color="green" size=1>.</font></p>
                                      
                      <font color="darkblue" size=3>
                             
                              <div align="center"><%
try {
/* Create string of connection url within specified format with machine
name, port number and database name. Here machine name id localhost and 
database name is student. */
String connectionURL = "jdbc:mysql://localhost:3306/tawiri";      
                
// declare a connection by using Connection interface
Connection connection = null;
/* declare object of Statement interface that is used for executing sql 
statements. */
Statement statement = null;
// declare a resultset that uses as a table for output data from tha table.
ResultSet rs = null;
// Load JBBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.jdbc.Driver").newInstance();
/* Create a connection by using getConnection() method that takes parameters 
of string type connection url, user name and password to connect to database.*/
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/tawiri", "root", "88zamzam");
/* createStatement() is used for create statement object that is used for 
sending sql statements to the specified database. */
statement = connection.createStatement();
// sql query to retrieve values from the secified table.
String QueryString = "SELECT * from dataentryfsod";
rs = statement.executeQuery(QueryString);
%>
<TABLE cellpadding="10" border="1" >
<%
while (rs.next()) {
%>
<TR>
<TD><%=rs.getInt(1)%></TD>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getString(3)%></TD>
<TD><%=rs.getString(4)%></TD>
<TD><%=rs.getString(5)%></TD>
<TD><%=rs.getInt(6)%></TD>
<TD><%=rs.getString(7)%></TD>
<TD><%=rs.getInt(8)%></TD>
<TD><%=rs.getInt(9)%></TD>

</TR>
<% } %>
<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>

</TABLE><TABLE>
<TR>

</TR>
</TABLE>
</font></div> 

                              <p><font color="green" size=1>.</font></p>
                      <p><font color="green" size=1>.</font></p>
                      <p><font size=4><button type="button" class="btn btn-light"><b>8. ESTIMATE TABLE Data Inserted</b></button></font></p>
                        <p><font color="green" size=1>.</font></p>
                                      
                      <font color="darkblue" size=3>
                             
                              <div align="center"><%
try {
/* Create string of connection url within specified format with machine
name, port number and database name. Here machine name id localhost and 
database name is student. */
String connectionURL = "jdbc:mysql://localhost:3306/tawiri";      
                
// declare a connection by using Connection interface
Connection connection = null;
/* declare object of Statement interface that is used for executing sql 
statements. */
Statement statement = null;
// declare a resultset that uses as a table for output data from tha table.
ResultSet rs = null;
// Load JBBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.jdbc.Driver").newInstance();
/* Create a connection by using getConnection() method that takes parameters 
of string type connection url, user name and password to connect to database.*/
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/tawiri", "root", "88zamzam");
/* createStatement() is used for create statement object that is used for 
sending sql statements to the specified database. */
statement = connection.createStatement();
// sql query to retrieve values from the secified table.
String QueryString = "SELECT * from estimate";
rs = statement.executeQuery(QueryString);
%>
<TABLE cellpadding="7" border="1" >
<%
while (rs.next()) {
%>
<TR>
<TD><%=rs.getInt(1)%></TD>
<TD><%=rs.getInt(2)%></TD>
<TD><%=rs.getInt(3)%></TD>
<TD><%=rs.getInt(4)%></TD>
<TD><%=rs.getInt(5)%></TD>
<TD><%=rs.getInt(6)%></TD>
<TD><%=rs.getInt(7)%></TD>
<TD><%=rs.getInt(8)%></TD>
<TD><%=rs.getInt(9)%></TD>
<TD><%=rs.getInt(10)%></TD>
<TD><%=rs.getInt(11)%></TD>
<TD><%=rs.getInt(12)%></TD>
<TD><%=rs.getInt(13)%></TD>
<TD><%=rs.getInt(14)%></TD>
<TD><%=rs.getInt(15)%></TD>
<TD><%=rs.getInt(16)%></TD>
<TD><%=rs.getInt(17)%></TD>
<TD><%=rs.getInt(18)%></TD>
<TD><%=rs.getInt(19)%></TD>
<TD><%=rs.getInt(20)%></TD>
<TD><%=rs.getInt(21)%></TD>
<TD><%=rs.getInt(22)%></TD>
<TD><%=rs.getInt(23)%></TD>
<TD><%=rs.getInt(24)%></TD>
<TD><%=rs.getInt(25)%></TD>
<TD><%=rs.getInt(26)%></TD>
<TD><%=rs.getString(27)%></TD>

</TR>
<% } %>
<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>

</TABLE><TABLE>
<TR>

</TR>
</TABLE>
</font></div> 

                              <p><font color="green" size=1>.</font></p>
                      <p><font color="green" size=1>.</font></p>
                      <p><font size=4><button type="button" class="btn btn-light"><b>9. DATA_ENTRY_PROJECT TABLE Data Inserted</b></button></font></p>
                        <p><font color="green" size=1>.</font></p>
                                      
                      <font color="darkblue" size=3>
                             
                              <div align="center"><%
try {
/* Create string of connection url within specified format with machine
name, port number and database name. Here machine name id localhost and 
database name is student. */
String connectionURL = "jdbc:mysql://localhost:3306/tawiri";      
                
// declare a connection by using Connection interface
Connection connection = null;
/* declare object of Statement interface that is used for executing sql 
statements. */
Statement statement = null;
// declare a resultset that uses as a table for output data from tha table.
ResultSet rs = null;
// Load JBBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.jdbc.Driver").newInstance();
/* Create a connection by using getConnection() method that takes parameters 
of string type connection url, user name and password to connect to database.*/
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/tawiri", "root", "88zamzam");
/* createStatement() is used for create statement object that is used for 
sending sql statements to the specified database. */
statement = connection.createStatement();
// sql query to retrieve values from the secified table.
String QueryString = "SELECT * from tawiridatabase";
rs = statement.executeQuery(QueryString);
%>
<TABLE cellpadding="15" border="1" >
<%
while (rs.next()) {
%>
<TR>
<TD><%=rs.getInt(1)%></TD>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getString(3)%></TD>
<TD><%=rs.getString(4)%></TD>
<TD><%=rs.getString(5)%></TD>
<TD><%=rs.getString(6)%></TD>

</TR>
<% } %>
<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>

</TABLE><TABLE>
<TR>

</TR>
</TABLE>
</font></div> 

                              <p><font color="green" size=1>.</font></p>
                      <p><font color="green" size=1>.</font></p>
                      <p><font size=4><button type="button" class="btn btn-light"><b>10. ABOUT TABLE Data Inserted</b></button></font></p>
                        <p><font color="green" size=1>.</font></p>
                                      
                      <font color="darkblue" size=3>
                             
                              <div align="center"><%
try {
/* Create string of connection url within specified format with machine
name, port number and database name. Here machine name id localhost and 
database name is student. */
String connectionURL = "jdbc:mysql://localhost:3306/tawiri";      
                
// declare a connection by using Connection interface
Connection connection = null;
/* declare object of Statement interface that is used for executing sql 
statements. */
Statement statement = null;
// declare a resultset that uses as a table for output data from tha table.
ResultSet rs = null;
// Load JBBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.jdbc.Driver").newInstance();
/* Create a connection by using getConnection() method that takes parameters 
of string type connection url, user name and password to connect to database.*/
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/tawiri", "root", "88zamzam");
/* createStatement() is used for create statement object that is used for 
sending sql statements to the specified database. */
statement = connection.createStatement();
// sql query to retrieve values from the secified table.
String QueryString = "SELECT * from tawiridatabase";
rs = statement.executeQuery(QueryString);
%>
<TABLE cellpadding="15" border="1" >
<%
while (rs.next()) {
%>
<TR>
<TD><%=rs.getInt(1)%></TD>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getString(3)%></TD>
<TD><%=rs.getString(4)%></TD>
<TD><%=rs.getString(5)%></TD>
<TD><%=rs.getString(6)%></TD>

</TR>
<% } %>
<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>

</TABLE><TABLE>
<TR>

</TR>
</TABLE>
</font></div> 

                              <p><font color="green" size=1>.</font></p>
                      <p><font color="green" size=1>.</font></p>
                      <p><font size=4><button type="button" class="btn btn-light"><b>11. ABOUT TABLE Data Inserted</b></button></font></p>
                        <p><font color="green" size=1>.</font></p>
                                      
                      <font color="darkblue" size=3>
                             
                              <div align="center"><%
try {
/* Create string of connection url within specified format with machine
name, port number and database name. Here machine name id localhost and 
database name is student. */
String connectionURL = "jdbc:mysql://localhost:3306/tawiri";      
                
// declare a connection by using Connection interface
Connection connection = null;
/* declare object of Statement interface that is used for executing sql 
statements. */
Statement statement = null;
// declare a resultset that uses as a table for output data from tha table.
ResultSet rs = null;
// Load JBBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.jdbc.Driver").newInstance();
/* Create a connection by using getConnection() method that takes parameters 
of string type connection url, user name and password to connect to database.*/
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/tawiri", "root", "88zamzam");
/* createStatement() is used for create statement object that is used for 
sending sql statements to the specified database. */
statement = connection.createStatement();
// sql query to retrieve values from the secified table.
String QueryString = "SELECT * from tawiridatabase";
rs = statement.executeQuery(QueryString);
%>
<TABLE cellpadding="15" border="1" >
<%
while (rs.next()) {
%>
<TR>
<TD><%=rs.getInt(1)%></TD>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getString(3)%></TD>
<TD><%=rs.getString(4)%></TD>
<TD><%=rs.getString(5)%></TD>
<TD><%=rs.getString(6)%></TD>

</TR>
<% } %>
<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>

</TABLE><TABLE>
<TR>

</TR>
</TABLE>
</font></div> 

                              <p><font color="green" size=1>.</font></p>
                      <p><font color="green" size=1>.</font></p>
                      <p><font size=4><button type="button" class="btn btn-light"><b>12. ABOUT TABLE Data Inserted</b></button></font></p>
                        <p><font color="green" size=1>.</font></p>
                                      
                      <font color="darkblue" size=3>
                             
                              <div align="center"><%
try {
/* Create string of connection url within specified format with machine
name, port number and database name. Here machine name id localhost and 
database name is student. */
String connectionURL = "jdbc:mysql://localhost:3306/tawiri";      
                
// declare a connection by using Connection interface
Connection connection = null;
/* declare object of Statement interface that is used for executing sql 
statements. */
Statement statement = null;
// declare a resultset that uses as a table for output data from tha table.
ResultSet rs = null;
// Load JBBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.jdbc.Driver").newInstance();
/* Create a connection by using getConnection() method that takes parameters 
of string type connection url, user name and password to connect to database.*/
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/tawiri", "root", "88zamzam");
/* createStatement() is used for create statement object that is used for 
sending sql statements to the specified database. */
statement = connection.createStatement();
// sql query to retrieve values from the secified table.
String QueryString = "SELECT * from tawiridatabase";
rs = statement.executeQuery(QueryString);
%>
<TABLE cellpadding="15" border="1" >
<%
while (rs.next()) {
%>
<TR>
<TD><%=rs.getInt(1)%></TD>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getString(3)%></TD>
<TD><%=rs.getString(4)%></TD>
<TD><%=rs.getString(5)%></TD>
<TD><%=rs.getString(6)%></TD>

</TR>
<% } %>
<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>

</TABLE><TABLE>
<TR>

</TR>
</TABLE>
</font></div> 
                                              
                                <p><font color="green" size=1>.</font></p>
                      <p><font color="green" size=1>.</font></p>
                        <p><font color="green" size=1>.</font></p>
                                      </div>
                               
                             
                                
                                                     
                                   </font></div>
                   
                   
                        
 
 </font></p>
 <div align="center"><div class="card text-white bg-secondary mb-3" style="max-width: 100rem;">
                        
    <font color="black" size=2>
     
                 </font></div></div>
                 <p><font color="white" size=1>.</font></p>
                        
         <b><font size=2>Copyright © 2020 Tanzania Wildlife Research Institute (TAWIRI). All Rights Reserved.</font></b>
         <p><font color="white" size=1>.</font></p>      
               </body>
               
           </div>
       </html>
       
       
       
       
       
       
       