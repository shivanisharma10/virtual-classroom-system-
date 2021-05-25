<%
int question_passed = (Integer) session.getAttribute("question_passed");
int value = (Integer) session.getAttribute("correct_answer");
out.println(question_passed+"     .....      "+value);
%>
<!DOCTYPE html>
<html>
<head>
	<title>THE REGISTRATION PAGE</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="style1.css">
	
</head>
<body>
	

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4 col-sm-4 col-xs-12"></div>
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="form-horizontal">
					<div class="form-group">
						
						<br>
			            <label class="control-label" >Total Questions <% out.println(question_passed); %></label>
			         </div>

			         <div class="form-group">
			            <label class="control-label" > Correct Answers <% out.println(value); %></label>
			         </div>
			         <a href="studlogin.jsp"><button class="btn btn-danger">Log Out</button></a>
				</div>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-12"></div>
		</div>
	</div>
</body>
</html>