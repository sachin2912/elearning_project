package com.project.elearning;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String userType = request.getParameter("logintype");
		String userName,ID;
		
		Connection conn = null;

	      try {			
					conn = DBConn.getConnection();
					if (conn != null)
					{
						String landingPage;
						String sqlStatement = "select ";
						if (userType.equals("ADMIN")) {
							sqlStatement += "admin_id,name,email,password from admin ";
							landingPage = "AdminLandingPage.jsp";
						}
						else {
							sqlStatement += "user_id,name,email,password from user1 ";
							landingPage = "UserLandingPage.jsp";
						}
						sqlStatement += "where email='"+email+"' AND password='"+password+"';" ;
						PreparedStatement ps = conn.prepareStatement(sqlStatement);
						ResultSet rs = ps.executeQuery();
						if (rs.next()) {
							//out.println("<h1> Login Successful !!!!!!!</h1>");
							userName = rs.getString(2);
							ID = rs.getString(1);
							HttpSession session = request.getSession();
							session.setAttribute("name",userName);
							session.setAttribute("user_id", ID);
							session.setAttribute("email", email);
							request.getRequestDispatcher(landingPage).forward(request, response); 
						}
						
						else {
							out.println("<html><head><script>");
							RequestDispatcher dispatcher = request.getRequestDispatcher("javascript/LoginFailed.js");
							dispatcher.include(request, response);
							out.println("</script><title>Login Alert</title></head><body></body></html>");
						}
					}
	    	  		
				}
	      		catch(Exception E) {
					out.println("<h1>"+E.getMessage()+"</h1>");
				}
		
	}

}
