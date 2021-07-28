<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Menu.css">
<link rel="stylesheet" href="Table.css">

<title>View All Feedback</title>
</head>
<body>
	<h1 style="padding: 15px;">
 			E-Learning Portal
 	</h1>
 	<div class="navbar">
  <a href="AdminLandingPage.jsp">Home</a>
  <a href="ViewAllUsers.jsp">Registered Users</a>
  <a href="ViewAllCourses.jsp">Courses</a>
  <a class="active" href="ViewAllFeedback.jsp">Feedback</a>
  <a href="ViewAllContact.jsp">Contact Requests</a>
  <a href="AddCourse.jsp">Add Course</a>
  <a style="float: right;" href="LogOut.jsp">Log Out</a>
  <p style="float: right;"> Welcome Admin: <% String value=(String)session.getAttribute("name");%>
				<% out.print(value); %> </p>
  
  
</div>
	<h2>Feedback by all Users</h2>
    
    <div class="details">
        
        <table>
            <tr>
            	<th>Feedback ID</th>
                <th>User ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Feedback</th>
                
            </tr>
            <%! String name,email,feedback; %>
            <%! String url,user,pass; %>
            <%! int feedbackID,userID; %>
            <%
            url = "jdbc:mysql://localhost/e_learning";
        	user = "root";
        	pass = "root";
        	//Cookie ck[] = request.getCookies();
        	//for(int i=0;i<ck.length;i++){
        	//	if(ck[i].getName().equals("id")) user_id = Integer.parseInt(ck[i].getValue());
        	//}
        	try{
        		Class.forName("com.mysql.cj.jdbc.Driver");
        		Connection con = DriverManager.getConnection(url, user, pass);
        		PreparedStatement pes = con.prepareStatement("SELECT f_id,user_id,name,email,feedback from feedback");
        		
        		ResultSet res = pes.executeQuery();
        		if(res.isBeforeFirst()){
        			//res.first();
        			while(res.next()){
        				feedbackID = res.getInt("f_id");
        				userID = res.getInt("user_id");
        				name = res.getString("name");
        				email = res.getString("email");
        				feedback = res.getString("feedback");
        				
    				%>
    				<tr>
    					<td><%=feedbackID %></td>
    					<td><%=userID %></td>
    					<td><%=name %></td>
    					<td><%=email %></td>
    					<td><%=feedback %></td>
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