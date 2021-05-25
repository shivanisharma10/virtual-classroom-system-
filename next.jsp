<!DOCTYPE html>
<html>
   <head>
      <title>D Valut</title>
   </head>
   <body>
     <%
     String given_ans = request.getParameter("ans");
     String correct_ans = (String) session.getAttribute("cans");
     int question_passed = (Integer) session.getAttribute("question_passed");
     question_passed ++;
     session.setAttribute("question_passed", question_passed);
     if (given_ans.equals((String)session.getAttribute("cans"))){
       int value = (Integer) session.getAttribute("correct_answer");
       value ++;
       session.setAttribute("correct_answer", value);
     }
     %>
     <script type="text/javascript">
       window.location.href = "start_exam.jsp"
     </script>

   </body>
</html>