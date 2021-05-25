<!DOCTYPE html>
<html>
<head>
<title>new registration</title>
</head>
<body>
<center>
<form action="delnotice.jsp" method="post">
    <table>
         <tr>
             <td>NOTICE ID:</td>
             <td><input type="text" name="ID"  required  /></td>
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
    String ID=request.getParameter("ID");
try
{
Class.forName("org.apache.derby.jdbc.ClientDriver");
Connection conn= DriverManager.getConnection("jdbc:derby://localhost:1527/demo","demo","demo");
Statement st=conn.createStatement();
int i=st.executeUpdate("delete from notice where ID= '"+ID+"'");

if(i>0)
out.println("DELETED SUCCESSFULLY!!! Please <a href='VIEWNOTICE_AD.jsp'>CLICK</a> to view");
//else if(i==0)
   //out.println("<br><center>ENTER CORRECT ID!! Please<br> <a href='VIEWNOTICE_AD.jsp'>CLICK</a> to view.</center>");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>