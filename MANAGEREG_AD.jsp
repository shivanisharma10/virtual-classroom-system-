<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>new registration</title>
</head>
<body background="imgreg.jpg">
 <center> <h3 style="background-color: pink;">MANAGEMENT REGISTRATION FORM</h3>
<form action="MANAGEREG_AD.jsp" method="post">
    <table>
        <tr>
             <td>Management ID:<font style="color:red">*</font></td>
             <td><input type="text" name="use" required   /></td>
         </tr>
         <tr> 
             <td>Password :<font style="color:red">*</font></td>
             <td><input type="password" name="pass"  required  /></td>
         </tr>
         
        <tr>
         <td> Name :<font style="color:red">*</font></td>
         <td><input type="text" name="name" required   /></td>
        </tr>
        
        <tr>
            <td>Phone no :</td>
            <td><input type="text" name="ph_no" required   /><font style="color:red">max 10 digit</font></td>
        </tr>
       
        <tr>
            <td>Designation:<font style="color:red">*</font></td>
            <td><input type="text" name="designation"  required  /></td>
        </tr>
       <tr>
            <td colspan="2" align='center'><input type="submit" value="submit" name="submit"/></td>
           </tr>
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
String name=request.getParameter("name");
String ph_no=request.getParameter("ph_no");
String designation=request.getParameter("designation");
try
{
Class.forName("org.apache.derby.jdbc.ClientDriver");
Connection conn= DriverManager.getConnection("jdbc:derby://localhost:1527/demo","demo","demo");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into management values('"+use+"','"+pass+"','"+name+"','"+ph_no+"','"+designation+"')");
if(i>0)
out.println("You have successfully added the management! Please <a href='adminhome.html'>HOME</a> to  go back .");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>