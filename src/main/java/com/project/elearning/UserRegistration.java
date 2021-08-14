package com.project.elearning;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UserRegistration
 */
@WebServlet("/UserRegistration")
public class UserRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegistration() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	  
	  PrintWriter out = response.getWriter();
      
	  // Fetching User Data for Form
	  String userId = request.getParameter("user_id");
      String name = request.getParameter("name");
      String email = request.getParameter("email");
	  String password = request.getParameter("password");
	  String phoneNumber = request.getParameter("phoneno");
	  String address = request.getParameter("address");
	  
	  Integer userID = Integer.parseInt(userId);
	  String regDate = java.time.LocalDate.now().toString();
	  
	  Connection conn = null;
	  
	  if (ValidateData.validateEmail(email) && ValidateData.validatePhoneNumber(phoneNumber) && ValidateData.validatePassword(password)) {
	      try {			
					conn = DBConn.getConnection();
					if (conn != null)
					{
						Statement sm = conn.createStatement();                  //SQL operation are handled
						String sql_statement = "insert into user1 values("+userID+",'"+name+"','"+phoneNumber+"','"+email+"','"+address+"','"+regDate+"','"+password+"','img123.jpeg')";
						sm.executeUpdate(sql_statement);                     
						
						HttpSession session = request.getSession();             // to create Session variables
						session.setAttribute("name",name);
						session.setAttribute("user_id", userId);
						session.setAttribute("email", email);
						//response.sendRedirect("UserLandingPage.jsp"); 
						
						// Redirects to User Home Page as user registered Successfully 
						out.println("<html><head><script>");
						RequestDispatcher dispatcher = request.getRequestDispatcher("javascript/LoginAlert.js");
						dispatcher.include(request, response);
						out.println("</script><title>Login Alert</title></head><body></body></html>");
						
					}
	    	  		
				}
	      		catch(SQLException e) {											// to catch SQL exception and display the error message on web screen 
	      			out.println("<h1> "+e.getMessage()+"</h1>");   
	      		}
	      		catch(Exception E) { 											// to catch all other Exception except SQL exception	
					out.println("<h1>"+E.getMessage()+"</h1>");
				}
	  }
	  else {                                                                    // to be executed when data is invalid and user is not registered  
		  	out.println("<html><head><script>");
		  	RequestDispatcher dispatcher = request.getRequestDispatcher("javascript/ValidationError.js");
			dispatcher.include(request, response);
			out.println("</script><title>Validation Alert</title></head><body></body></html>");
			
			
	  }
	}

}
