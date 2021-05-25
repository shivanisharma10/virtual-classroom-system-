<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>announcements</title>
        <style>
            tr,td,th{
                padding: 20px;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <br><br><br>
    <center>
        <%!
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
        %>
        <table border="2">
            <tr>
                <th>Announcements</th>
            </tr>
            <%
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                con= DriverManager.getConnection("jdbc:derby://localhost:1527/demo","demo","demo");
        
            String sql = "select * from announcementf";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
            %>
            <tr>
               
                <td><%=rs.getString(1)%></td>
            </tr>
            <%
                }
            %>
            
        </table><br>
        <a href="facultyhome.html">Home</a>
    </center>
    </body>
</html>
