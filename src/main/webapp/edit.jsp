<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<%@include file="all.jsp"%>

</head>
<body>
	<div class="container">

		<%@include file="navbar.jsp"%>
		<h1>Edit your Note</h1>
		<br>
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();

		Note note = (Note) s.get(Note.class, noteId);
		%>
		<form action="UpdateServlet" method="post">
		
		<input value="<%= note.getId() %> name="noteId" type="hidden">
		
			<div class="form-group">
				<label for="title">Note Title</label> <input required="required"
					name="title" type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter Here"
					value="<%=note.getTitle()%>">

			</div>
			<div class="form-group">
				<label for="">Note content</label>
				<textarea name="content" required="required" class="form-control"
					id="content" placeholder="Enter your content here"
					style="height: 300px;"><%=note.getContent()%></textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save</button>
			</div>
		</form>

	</div>
</body>
</html>