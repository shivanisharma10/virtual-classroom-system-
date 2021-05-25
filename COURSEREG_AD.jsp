<!DOCTYPE html>
<html>
<head>
<title>new registration</title>
</head>
<body background="shikha6.jpg">
<form action="COURSEREG_AD.jsp" method="post">
    <table>
         <tr>
             <td>CID:<font style="color:red">*</font></td>
             <td><input type="text" name="cid" required /></td>
         </tr>
         <tr> 
             <td>NAME :<font style="color:red">*</font></td>
             <td><input type="text" name="name"  required/></td>
         </tr>
        <tr>
         <td> MEETING ID:<font style="color:red">*</font></td>
         
         <td><input name="description" required /></td>
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
String description=request.getParameter("description");
try
{
Class.forName("org.apache.derby.jdbc.ClientDriver");
Connection conn= DriverManager.getConnection("jdbc:derby://localhost:1527/demo","demo","demo");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into course values('"+cid+"','"+name+"','"+description+"')");
if(i>0)
out.println("you have successfully added the course! Please  click <a href='adminhome.html'>HOME</a> to go back.");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>