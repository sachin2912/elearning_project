<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<link rel="stylesheet" href="Menu.css">
	<link rel="stylesheet" href="Table.css">
</head>
<body>
<h1 style="padding: 15px; text-align: center; ">
 			E-Learning Portal
 	</h1>
	<div class="navbar">
  <a class="active" href="#">Home</a>
  <a href="ViewAllUsers.jsp">Registered Users</a>
  <a href="ViewAllCourses.jsp">Courses</a>
  <a href="ViewAllFeedback.jsp">Feedback</a>
  <a href="ViewAllContact.jsp">Contact Requests</a>
  <a href="AddCourse.jsp">Add Course</a>
  <a style="float: right;" href="LogOut.jsp">Log Out</a>
  <p style="float: right;"> Welcome Admin: <% String value=(String)session.getAttribute("name");%>
				<% out.print(value); %> </p>
  
  
</div>
<p style="text-align: center; font-size: 30px;">
E-learning enables users to learn and acquire new skills on demand , with there preferred timings.
<br>
<br>
Welcome to Admin Home Page of ELearning
</p>
</body>
</html>