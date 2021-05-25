<!DOCTYPE html>
<html>
<head>
<title>new registration</title>
</head>
<body>
<center>
<form action="delma.jsp" method="post">
    <table>
         <tr>
             <td>MANAGEMENT ID:</td>
             <td><input type="text" name="use"  required  /></td>
         </tr>
         <tr>
         <center> <tr><td> <input type="submit" name="btnInsert" value="DELETE"/></td></tr></center>
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
try
{
Class.forName("org.apache.derby.jdbc.ClientDriver");
Connection conn= DriverManager.getConnection("jdbc:derby://localhost:1527/demo","demo","demo");
Statement st=conn.createStatement();
int i=st.executeUpdate("delete from management where use= '"+use+"'");
if(i>0)
out.println("<br><center>DELETED SUCCESSFULLY!!! Please<br> <a href='MANAGEVIEW_AD.jsp'>CLICK</a> to view.</center>");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>