<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Feedback Form</title>
<link rel="stylesheet" href="Menu.css">
<link rel="stylesheet" href="Table.css">
</head>
<body>
		<h1 style="padding: 15px;">
 			E-Learning Portal
 	</h1>
 	<div class="navbar">
  <a href="UserLandingPage.jsp">Home</a>
  <a href="UserViewAllCourses.jsp">View All Courses</a>
  <a class="active" href="FeedbackForm.jsp">Give Feedback</a>
  <a href="ContactForm.jsp">Request Contact</a>
  <a style="float: right;" href="LogOut.jsp">Log Out</a>
  <p style="float: right;"> Welcome <% String value=(String)session.getAttribute("name");%>
				<% out.print(value); %> </p>
  
</div>
        <div class="heading">
            <h2>
                Feedback Form
            </h2>
        </div>
        <% String name=(String)session.getAttribute("name");
   			String userID = (String)session.getAttribute("user_id");
   			String email = (String)session.getAttribute("email");
   			%>
				 
        <div id="regform">
            <table>
                <form method="post" action="AddFeedback">
                     <tr>   
                        <td>
                            <strong>
                                <label>
                                    Name
                                </label>
                            </strong>
                        </td>
                        <td>
                            <input type="text" name="name" id="name" placeholder="TOM" value="<% out.print(name); %>" minlength="10" maxlength="100"  required readonly>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>
                                <label> 
                                    User ID
                                </label>
                            </strong>
                        </td>
                        <td>
                            <input type="number" name="user_id" id="userID" value="<% out.print(userID); %>" placeholder="XX" required readonly>
                        </td>    
                    </tr>
                   
                    <tr>
                        <td>
                            <strong>
                                <label>
                                    Email
                                </label>
                            </strong>
                        </td>
                        <td>
                            <input type="email" name="email" id="email" minlength="10" value="<% out.print(email); %>" placeholder="abc@xxx.com" maxlength="100" readonly required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>
                                <label>
                                    Feedback
                                </label>
                            </strong>
                        </td>
                        <td>
                            <textarea name="feedback" id="feedback" rows="6" value="" cols="15"  required>
                            </textarea>
                        </td>    
                    </tr>
                   
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="Submit Feedback" >

                        </td>
                    </tr>
                </table>
            </form>
        </div>
</body>
</html>