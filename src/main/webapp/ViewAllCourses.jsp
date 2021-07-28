<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Menu.css">
<link rel="stylesheet" href="Table.css">
<meta charset="ISO-8859-1">
<title>All Courses</title>
</head>
<body>
<h1 style="padding: 15px;">
 			E-Learning Portal
 	</h1>
 	<div class="navbar">
  <a href="AdminLandingPage.jsp">Home</a>
  <a href="ViewAllUsers.jsp">Registered Users</a>
  <a class="active" href="ViewAllCourses.jsp">Courses</a>
  <a href="ViewAllFeedback.jsp">Feedback</a>
  <a href="ViewAllContact.jsp">Contact Requests</a>
  <a href="AddCourse.jsp">Add Course</a>
  
  
</div>
	<h2>All Courses on Portal</h2>
    
    <div class="details">
        
        <table>
            <tr>
            	<th>Course ID</th>
                <th>Course Name</th>
                <th>Descsription</th>
                <th>Fees</th>
                <th>Resource</th>
                
            </tr>
            <%! String c_name,c_desc,c_resource,c_fees; %>
            <%! String url,user,pass; %>
            <%! int courseID; %>
            <%
            url = "jdbc:mysql://localhost/e_learning";
        	user = "root";
        	pass = "root";
        	
        	try{
        		Class.forName("com.mysql.cj.jdbc.Driver");
        		Connection con = DriverManager.getConnection(url, user, pass);
        		PreparedStatement pes = con.prepareStatement("SELECT course_id,c_name,c_desp,c_fees,c_resource from course");
        		
        		ResultSet res = pes.executeQuery();
        		if(res.isBeforeFirst()){
        			//res.first();
        			while(res.next()){
        				courseID = res.getInt("course_id"); 
        				c_name = res.getString("c_name");
        				 c_desc= res.getString("c_desp");
        				c_fees= res.getString("c_fees");
        				c_resource = res.getString("c_resource");
        				
    				%>
    				<tr>
    					<td><%=courseID %></td>
    					<td><%=c_name %></td>
    					<td><%=c_desc %></td>
    					<td><%=c_fees %></td>
    					<td><%=c_resource %></td>
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