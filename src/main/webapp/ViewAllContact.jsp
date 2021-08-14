<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Menu.css">
<link rel="stylesheet" href="Table.css">
<meta charset="ISO-8859-1">
<title>Contact Requests</title>
</head>
<body>
<h1 style="padding: 15px;">
 			E-Learning Portal
 	</h1>
 	<div class="navbar">
  <a href="AdminLandingPage.jsp">Home</a>
  <a href="ViewAllUsers.jsp">Registered Users</a>
  <a href="ViewAllCourses.jsp">Courses</a>
  <a href="ViewAllFeedback.jsp">Feedback</a>
  <a class="active" href="ViewAllContact.jsp">Contact Requests</a>
  <a href="AddCourse.jsp">Add Course</a>
  <a style="float: right;" href="LogOut.jsp">Log Out</a>
  <p style="float: right;"> Welcome Admin: <% String value=(String)session.getAttribute("name");%>
				<% out.print(value); %> </p>
  
  
  
</div>
	<h2>Contact Requests from Users</h2>
    
    <div class="details">
        
        <table>
            <tr>
            	<th>Contact ID</th>
                <th>User ID </th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone Number</th>
                <th>Message</th>
                
            </tr>
            <%! String name,email,phoneNumber,message; %>
            <%! String url,user,pass; %>
            <%! int userID,contactID; %>
            <%
            url = "jdbc:mysql://localhost/e_learning";
        	user = "root";
        	pass = "root";
        	
        	try{
        		Class.forName("com.mysql.cj.jdbc.Driver");
        		Connection con = DriverManager.getConnection(url, user, pass);
        		PreparedStatement pes = con.prepareStatement("SELECT user_id,name,contact_id,email,phone_no,message from contact");
        		
        		ResultSet res = pes.executeQuery();
        		if(res.isBeforeFirst()){
        			//res.first();
        			while(res.next()){
        				contactID = res.getInt("contact_id"); 
        				userID = res.getInt("user_id"); 
        				name = res.getString("name");
        				email= res.getString("email");
        				phoneNumber= res.getString("phone_no");
        				message = res.getString("message");
        				
    				%>
    				<tr>
    					<td><%=contactID %></td>
    					<td><%=userID %></td>
    					<td><%=name %></td>
    					<td><%=email %></td>
    					<td><%=phoneNumber %></td>
    					<td><%=message %></td>
    				</tr>
    				<%
        			}
        		}
        	}catch(Exception E){
        		System.out.println(E);
        	}
            %>
            <tr></tr>
        </table>
    </div>
</body>
</html>