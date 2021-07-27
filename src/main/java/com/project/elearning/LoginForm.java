package com.project.elearning;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.protocol.Resultset;

/**
 * Servlet implementation class LoginForm
 */
@WebServlet("/LoginForm")
public class LoginForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginForm() {
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
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String userType = request.getParameter("logintype");
		
		Connection conn = null;

	      try {			
					conn = DBConn.getConnection();
					if (conn != null)
					{
						
						String sqlStatement = "select email,password from ";
						if (userType.equals("ADMIN")) {
							sqlStatement += "admin ";
						}
						else {
							sqlStatement += "user1 ";
						}
						sqlStatement += "where email='"+email+"' AND password='"+password+"';" ;
						PreparedStatement ps = conn.prepareStatement(sqlStatement);
						ResultSet rs = ps.executeQuery();
						if (rs.next()) {
							out.println("<h1> Login Successfull !!!!!!!</h1>");
						}
						
						else {
							out.println("<html><head><meta charset=\"ISO-8859-1\"><script language=\"text/javascript\"'> alert('Username or Password did not match \n Please Verify !!!!') </script></head></html>");
						}
					}
	    	  		
				}
	      		catch(Exception E) {
					out.println("<h1>"+E.getMessage()+"</h1>");
				}
		
	}

}
