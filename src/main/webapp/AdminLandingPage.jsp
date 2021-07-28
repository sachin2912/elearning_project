<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<style>
* {box-sizing: border-box}
body {font-family: Arial, Helvetica, sans-serif;}

.navbar {
  width: 100%;
  background-color: #555;
  overflow: auto;
}

.navbar a {
  float: left;
  padding: 12px;
  color: white;
  text-decoration: none;
  font-size: 17px;
  text-align: center;
}

.navbar a:hover {
  background-color: #000;
}

.navbar a.active {
  background-color: #04AA6D;
}

@media screen and (max-width: 500px) {
  .navbar a {
    float: none;
    display: block;
    width: 100%;
    text-align: left;
  }
}
</style>
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
  
  
</div>
<p>
E-learning enables users to learn and acquire new skills on demand , with there preferred timings.
</p>
</body>
</html>