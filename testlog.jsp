<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MAIN</title>
</head>

<body background="ssimg.jpg" > 
<center> <h3 style="background-color: pink;">TEST LOGIN </h3></center>
<form action="lsuccess.jsp" method="post" >

<TABLE border=0 cellspacing=2 cellpadding=2 width="100%">
<TR>
<TD width="34%">
<TABLE border=0 cellspacing=2 cellpadding=2 width="100%">
<TR>
<TD>

</TD>
</TR>
</TABLE>
</TD>

   <TD>

    <table cellpadding=2 cellspacing=0 border=0>
<tr> <td bgcolor="red"><table cellpadding=0 cellspacing=0 border=1 width=100%> <tr> <td bgcolor="green" align=center style="padding:2;padding-bottom:4"> <b><font size=-1 color="white" face="verdana,arial"> LOG IN</font></b></tr>
<tr><td bgcolor="white" style="padding:5"><br>
<TABLE border=0 cellspacing=5 cellpadding=2 width="60%" bgcolor="white">
<TR>
<TD>
<tr><td> <font face="verdana,arial" size=-1> Login_Type:</font></td> <td><select name="type"><option value="Student">Student</option></select></td></tr> 

<tr><td> <font face="verdana,arial" size=-1> Test Id:</font></td> <td><input type="text" name="login" value=""></td></tr>
<tr><td> <font face="verdana,arial" size=-1> Password:</font></td> <td><input type="password" name="password1"></td></tr>

<tr><td> <font face="verdana,arial" size=-1>&nbsp;</font></td> <td><font face="verdana,arial" size=-1><input type="submit" value="Enter"></font></td></tr>
<tr><td colspan=2><font face="verdana,arial" size=-1>&nbsp;</font></td> </tr>
</TABLE>
</TD>
<TD>
</table>
</TD>
</TR>

</TABLE>
</TD>
</TR>
</TABLE>
<%
String str1=request.getParameter("login");
String str2=request.getParameter("password1");
if(str1!=null && str2!= null)
{
int flag=0;
try{
Class.forName("org.apache.derby.jdbc.ClientDriver");
Connection c= DriverManager.getConnection("jdbc:derby://localhost:1527/demo","demo","demo");
Statement s= c.createStatement();
out.println("use="+str1+" and pass= "+str2);
String sql="select use from student where use='"+str1+"' and pass='"+str2+"'";
//String sq="select name from course";
ResultSet rs= s.executeQuery(sql);
if(rs.next())

flag=1;
else
flag=0;
if(flag==1)
{
session.setAttribute("user",str1);
%>
<jsp:forward page="studenthome.html" />
<%
}
else
out.println("UserName/Password Not Valid");
rs.close();
s.close();
c.close();
}catch(Exception e) { out.println(e);}
}
%>
</form>
</body>
</html>