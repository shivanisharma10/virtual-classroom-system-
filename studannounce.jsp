<html>
<head>
</head>
<body bgcolor=eeffee>

<td valign="center">
<table>
<tr >

<td valign="center">
<center>
<h3><pre>  Announcement to students</pre></h3>
<form name="f1" action="studannounce.jsp" method="post">
<table align="center" border="0">
<tr><td><pre>                </pre></td><td><textarea rows="10" cols="50" name="announcements" required ></textarea></td></tr>
<tr>
<td></td>
<td align="center"><input type="submit" value="send">
                    <input type="reset" value="clear"></td></tr>
</table>
</form>
</center>
</td>
</tr></table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String use=request.getParameter("announcements");
try
{
Class.forName("org.apache.derby.jdbc.ClientDriver");
Connection conn= DriverManager.getConnection("jdbc:derby://localhost:1527/demo","demo","demo");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into announcement(announcements) values('"+use+"')");
out.println("<br>Thank you for announcements ! Please<br> <a href='viewstudann.jsp'>Click</a> to continue.");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>