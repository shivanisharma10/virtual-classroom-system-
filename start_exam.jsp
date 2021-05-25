<!DOCTYPE html>
<html>
<head>
  <title>Quiz Time</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="style.css">
    
    <script language="javascript">
var i=0,j=0;
function time()
{
i++;
if(i==30)
{
	document.f1.submit();
}
document.getElementById('t2').innerHTML="";
document.getElementById('t2').innerHTML=i;
t=setTimeout('time()',1000); 
}
</script>
</head>
<body onload="time()" >

<center> <h1>ONLINE QUIZ</h1> </center><br />
<center><h2>QUESTION 1</h2> </center><br />
<input type="hidden" value="1" name="teamno" id="teamno">
<table border=0><tr><th>Time Elapsed</th></tr><tr><td align="center"><p id="t2"></p></td></tr></table>
<br/>
<HR><br/>

  <div class="container-fluid">
    <div class="row">
      <div class="col-md-2 col-sm-12 col-xs-12">
      </div>
      <div class="col-md-8 col-sm-12 col-xs-12">
        <div class="container-fluid">
      
     <%@ page import="java.io.File" %>
     <%@ page import="java.sql.*" %>

     <%
     int q_index = 0;
     int flag =0;
     %>

     <%! String ques,ans1,ans2,ans3,ans4; %>
    <%
    String course = (String) session.getAttribute("course");
    // if (new File(path + branch+"Question.db").isFile()){
    Class.forName("org.apache.derby.jdbc.ClientDriver");
Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/demo","demo","demo");
    Statement stat = conn.createStatement();
    //String query = "SELECT * FROM questiondb where course='"+course+"'";
    String query = "SELECT * FROM questiondb";
    ResultSet rs = stat.executeQuery(query);
    int question_passed = (Integer) session.getAttribute("question_passed");
    while(q_index <= question_passed){
      if (!rs.next()){
        flag = 1;
      }
      q_index ++;
    }
    if(flag !=1){
      //session.setAttribute("cans", rs.getString("cans"));
      ques = (String) rs.getString("ques");
      ans1 = (String) rs.getString("ans1");
      ans2 = (String) rs.getString("ans2");
      ans3 = (String) rs.getString("ans3");
      ans4 = (String) rs.getString("ans4");
      rs.close();
      conn.close();
    } else{
      //response.sendRedirect("final_submit.jsp");
    }
      %>
   <center>
       <form class="form-horizontal" action="" method="post" name="theForm">

        <div class="form-group">
            <label class="control-label" >Question : <%=ques%></label>
        </div><br></br>
          <div class="form-group">
            <label class="control-label" >Option A: <%=ans1%></label>
          </div><br></br>

          <div class="form-group">
            <label class="control-label" >Option B: <%=ans2%></label>
          </div><br></br>

          <div class="form-group">
            <label class="control-label" >Option C: <%=ans3%></label>
          </div><br></br>

          <div class="form-group">
            <label class="control-label" >Option D: <%=ans4%></label>
          </div><br></br>

        <div class="form-group custom-form">
              <label class="control-label">Answer:
              <div class="dropdown">
             <select name="ans" class="btn btn-info btn-block">
            <option value='1'> A </option>
            <option value='2'> B </option>
            <option value='3'> C </option>
            <option value='4'> D </option>
          </select>
        </div></label></div>

        
        <br>

    <button type="submit" class="btn btn-primary" formaction="next.jsp">Next Question </button>
    <br></br> <button type="button" class="btn btn-success" onclick="window.open('submit.jsp','_self')"> Final Submit </button>

  </form></div></div></div></div>
    </center>
   </body>
</html>