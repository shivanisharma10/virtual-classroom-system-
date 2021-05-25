<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import = "java.io.*"%>
<%
	
	String ques=request.getParameter("ques");
	String ans1=request.getParameter("ans1");
	String ans2=request.getParameter("ans2");
	String ans3=request.getParameter("ans3");
	String ans4=request.getParameter("ans4");
	String cans=request.getParameter("cans");
        String course=request.getParameter("course");
	 Class.forName("org.apache.derby.jdbc.ClientDriver");
	Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/demo","demo","demo");
	out.print("Connection succesful");
	Statement st=conn.createStatement();
	out.print("Inserting");
	// int i=st.executeUpdate("insert into student values('"+name+"','"+sic+"','"+redgno+"','"+password+"','"+branch+"','"+sems+"')");
	String sql="insert into questiondb (ques,ans1,ans2,ans3,ans4,cans,course) values (?,?,?,?,?,?,?)";
	PreparedStatement ps = conn.prepareStatement(sql);
	ps.setString(1,ques);
	ps.setString(2,ans1);
	ps.setString(3,ans2);
	ps.setString(4,ans3);
	ps.setString(5,ans4);
	ps.setString(6,cans);
        ps.setString(7,course);
	ps.executeUpdate();
	// conn.close();
	String redirectURL = "addmore.jsp";
	response.sendRedirect(redirectURL);
%>