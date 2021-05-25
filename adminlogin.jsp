
<html>
<head>
<body background="ssimg.jpg" > 


<form action="adminlogin.jsp" method="post" >
<center> <h3 style="background-color: pink;">ADMIN LOGIN FORM</h3></center>

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
<tr><td> <font face="verdana,arial" size=-1> Login_Type:</font></td> <td><select name="type"><option value="admin">admin</option></select></td></tr> 

<tr><td> <font face="verdana,arial" size=-1> Login:</font></td> <td><input type="text" name="login" required  value=""></td></tr>
<tr><td> <font face="verdana,arial" size=-1> Password:</font></td> <td><input type="password" name="password1" required  ></td></tr>
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
 String username=request.getParameter("login"); 
 String password=request.getParameter("password1"); 
if((username.equals("root") && password.equals("root"))) 
{ session.setAttribute("login",username); 
response.sendRedirect("adminhome.html"); 
} 
else 
    //response.sendRedirect("Error.jsp"); 
%>
</form>
</body>
</html>