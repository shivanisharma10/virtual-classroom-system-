<!DOCTYPE html>
<html>
<head>
<title>new registration</title>
</head>
<body background="shikha6.jpg">
<form action="courseeg.jsp" method="post">
    <table>
         <tr>
             <td>CID:<font style="color:red">*</font></td>
             <td><input type="text" name="cid" required maxlength="4"  /></td>
         </tr>
         <tr> 
             <td>NAME :<font style="color:red">*</font></td>
             <td><input type="text" name="name"  required  /></td>
         </tr>
        <tr>
         <td> MEETING LINK :<font style="color:red">*</font></td>
         
         <td><input type="text"  name="meeting_link"  required  /></td>
        </tr>
      
        <tr><td> <input type="submit" name="btnInsert" value="submit"/></td></tr>
        
</table>
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String cid=request.getParameter("cid");
String name=request.getParameter("name");
String meeting_link=request.getParameter("meeting_link");
try
{
Class.forName("org.apache.derby.jdbc.ClientDriver");
Connection conn= DriverManager.getConnection("jdbc:derby://localhost:1527/demo","demo","demo");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into course values('"+cid+"','"+name+"','"+meeting_link+"')");
if(i>0)
out.println("Thank you for register ! Please <a href='managehome.html'>click</a> to continue.");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>