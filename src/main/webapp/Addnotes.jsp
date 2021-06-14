<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@include file="all.jsp"%>


<title>Add Notes</title>
</head>
<body>
	<div class="conatiner">

		<%@include file="navbar.jsp"%>

		<h1 class="text-center mt-2">Please fill your details..</h1>
		<!-- form  -->

		<div class="container mt-4">
			<form action="SaveNoteServlet" method="post">
				<div class="form-group">
					<label for="title">Note Title</label> 
					<input required="required" name="title"
						type="text" class="form-control" id="title"
						aria-describedby="emailHelp" placeholder="Enter Here">
						 
				</div>
				<div class="form-group">
					<label for="">Note content</label> 
					<textarea name="content" required="required" class="form-control" id="content" placeholder="Enter your content here" style="height: 300px;"></textarea>
				</div>
				
				<div class="container text-center">
				<button type="submit" class="btn btn-primary ">Add</button>
				</div>
			</form>
		</div>


	</div>
</body>
</html>