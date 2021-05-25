<%@page import="java.sql.*,java.util.*"%>
<%@ page import = "java.io.*"%>
<%
String id = request.getParameter("login");
String driverName = "org.apache.derby.jdbc.ClientDriver";

String name = (String) session.getAttribute("name");
String course = (String) session.getAttribute("course");
try {
Class.forName(driverName);
} 
catch (ClassNotFoundException e) 
{
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
	try
	{ 
		connection = DriverManager.getConnection("jdbc:derby://localhost:1527/demo","demo","demo");
		statement=connection.createStatement();
		
		//String sql ="SELECT * FROM questiondb where course='" + course + "'" ;
                String sql ="SELECT * FROM questiondb" ;
		resultSet = statement.executeQuery(sql);
		if(resultSet.next()){
                    int i=1;
	}
		
	}
    catch(Exception e)
    {
    	System.out.print(e);
    	e.printStackTrace();
    }
%>


<!DOCTYPE html>
<html>
<head>
   <title>Dashboard</title>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<center>

  <div class="container-fluid">
		
   <div class="row">
    <div class="col-md-4 col-sm-12 col-xs-12"></div>
   <div class="col-md-4 col-sm-12 col-xs-12">
   <div class="container-fluid">
   <h1 style="font-size:30px; ">Welcome</h1>
	<h1><% out.println(name); %></h1>
<div class="form-horizontal">
   <span><div class="form-group ">
  <h1 style="color: white">Click below to give the Test</h1>
<a href="start_exam.jsp"><button style="font-size:25px "><%String pap=resultSet.getString("course"); out.println(pap); %></button></a>
</div>
</span>
   

</div>
</div>
<div class="col-md-4 col-sm-12 col-xs-12"></div>
</div>
</div>
</center>
</body>
</html>