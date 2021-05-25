<%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>

<HTML>
<HEAD>
    <TITLE>Select element drop down box</TITLE>
</HEAD>

<BODY BACKGROUND="C:\Users\91821\Documents\NetBeansProjects\quiz\web\Image.png">

<%
    try{
Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
Connection connection = DriverManager.getConnection("jdbc:derby://localhost:1527/demo","demo","demo");

       Statement statement = connection.createStatement() ;
       resultset =statement.executeQuery("select name from course") ;
    //}
       //catch(Exception ex){ex.printStackTrace();}
%>
<center>
    <h1> Select Course</h1>
    <p><input type="dropdown" name="course:" value=" "></input></p>
        <select>
<%  while(resultset.next()){ %>
            <option><%= resultset.getString(2)%></option>
        <% } %>
        </select>
    
            <td colspan="2" align='center'><input type="submit" value="submit" name="submit" />
            
</center>
        <%String course= request.getParameter("course");
        session.setAttribute("course",course);
   //if(Course != null) {
   //resultset=statement.executeQuery("SELECT * from course where Course='request.getParameter('Course')'");
   response.sendRedirect("dashboard.jsp");
     //}       
     }
    catch(Exception e)
    {
         out.println("wrong entry"+e);
    }
    %>
 

 <br><br>
  <form method = "get" action="questForm.jsp">
   <center><input name="Submit" type="submit" value="Submit"></center>    
</BODY>
</HTML>