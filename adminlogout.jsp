<html>
        <SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
</SCRIPT>

<BODY bgcolor="khaki" onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload="">

        <%
            session.invalidate();
          
        %>
    <center>
        <h1><font color="Red">You are Sucessfully logged out...</font></h1>

        <a href="newjsp.jsp">Go-Back To Home Page</a>
    </center>
    </body>

</html>