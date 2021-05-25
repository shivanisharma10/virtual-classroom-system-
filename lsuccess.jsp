<%@page import="java.sql.*,java.util.*"%>
<%@ page import = "java.io.*"%>

<%
String use = request.getParameter("login");
String driverName = "org.apache.derby.jdbc.ClientDriver";
String pass=request.getParameter("password1");
//String course=request.getParameter("course");
String name;
int flag=0;
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
		
		String sql ="SELECT * FROM student where use='" + use + "'";
		resultSet = statement.executeQuery(sql);
		if(resultSet.next()){
		if(pass.equals(resultSet.getString("pass"))){
		session.setAttribute("name",resultSet.getString("name"));
                //session.setAttribute("course",course);
		out.println("success");
		session.setAttribute("question_passed",0);
		session.setAttribute("correct_answer",0);
		response.sendRedirect("dashboard.jsp");
	} else{
	response.sendRedirect("studlogin.jsp");
}
	}
		
	}
    catch(Exception e)
    {
    	System.out.print(e);
    	e.printStackTrace();
    }
%>