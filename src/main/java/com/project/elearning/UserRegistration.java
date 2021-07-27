package com.project.elearning;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	  PrintWriter out = response.getWriter();
      
	  String userId = request.getParameter("user_id");
      String name = request.getParameter("name");
      String email = request.getParameter("email");
	  String password = request.getParameter("password");
	  String phoneNumber = request.getParameter("phoneno");
	  String address = request.getParameter("address");
	  Integer userID = Integer.parseInt(userId);
	  String regDate = java.time.LocalDate.now().toString();
	  Connection conn = null;

      try {			
				conn = DBConn.getConnection();
				if (conn != null)
				{
					Statement sm = conn.createStatement();
					String sql_statement = "insert into user1 values("+userID+",'"+name+"','"+phoneNumber+"','"+email+"','"+address+"','"+regDate+"','"+password+"','img123.jpeg')";
					sm.executeUpdate(sql_statement);
					out.println("<h1>"+ name+" Inserted !!!!!!!</h1>");
				}
    	  		
			}
      		catch(Exception E) {
				out.println("<h1>"+E.getMessage()+"</h1>");
			}
	}

}
