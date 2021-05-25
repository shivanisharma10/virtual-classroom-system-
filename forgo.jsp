<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>new registration</title>
</head>
<body>
<center>
<form action="forgo.jsp" method="post">
    <table>
         <tr>
             <td>Faculty ID:</td>
             <td><input type="text" name="use" required   /></td>
         </tr>
         <tr>
             <td>NEW PASSWORD:</td>
             <td><input type="text" name="pass" required  /></td>
         </tr>
         <tr>
         <center> <tr><td> <input type="submit" name="btnInsert" value="UPDATE"/></td></tr></center>
</table>
</form>
</center>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String use=request.getParameter("use");
String pass=request.getParameter("pass");
try
{
Class.forName("org.apache.derby.jdbc.ClientDriver");
Connection conn= DriverManager.getConnection("jdbc:derby://localhost:1527/exam","exam","exam");
Statement st=conn.createStatement();
int i=st.executeUpdate("update faculty set pass = '"+pass+"' where use= '"+use+"'");
out.println("<br><center>DELETED SUCCESSFULLY!!! Please<br> <a href='viewfaculty.jsp'>CLICK</a> to view.</center>");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>