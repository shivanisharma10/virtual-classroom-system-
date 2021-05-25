<!DOCTYPE html>
<html>
<head>
	<title>Question Maker</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="style1.css">
	
</head>
<body>
	

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3 col-sm-4 col-xs-12"></div>
			<div class="col-md-6 col-sm-4 col-xs-12">
				<!--Start-->
				<form class="form-horizontal" method="POST" action="quesdb.jsp">
                                    <center><h1 style="color: white;">  CREATE TEST</h1></center>                                    

  					<div class="form-group custom-form">
  						<label class="control-label">COURSE:
  						<div class="dropdown">
						 <select name="course" class="btn btn-info btn-block">
						 	<option>dotnet</option>
						 	<option>web development</option>
						 	<option>android</option>
						 </select>
						</div>
					</label>
  					</div> 
					<div class="form-group">
						<label class="control-label">Question:</label>
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Question" name="ques">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label">Option 1:</label>
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Option 1" name="ans1">
						</div>
					</div>
  					<br/>
  					<div class="form-group">
						<label class="control-label">Option 2:</label>
						<div class="input-group">
							<input type="text" class="form-control" placeholder="option 2" name="ans2">
						</div>
					</div>
  					<br/>
  					<div class="form-group">
						<label class="control-label">Option 3:</label>
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Option 3" name="ans3">
						</div>
					</div>
  					<br/>
  					<div class="form-group">
						<label class="control-label">Option 4:</label>
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Option 4" name="ans4">
						</div>
					</div>
					<div class="form-group custom-form" style="color: white;">
						<label class="control-label">Correct Answer:</label> <br>
						<input type="radio" name="cans" value="1" UNchecked>Option 1
	  					<input type="radio" name="cans" value="2">Option 2
	  					<input type="radio" name="cans" value="3">Option 3
					    <input type="radio" name="cans" value="4">Option 4
  					</div>
  					<br/>
				<div class="form-group custom-form">
					<input type="submit" value="Submit" class="btn btn-success ">
					<input type="reset" value="RESET" class="btn btn-warning ">
					
  				</div>
				</form></div>
				<div class="col-md-3 col-sm-4 col-xs-12"></div>
			</div></div>
</body>