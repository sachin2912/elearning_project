package com.project.elearning;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddFeedback
 */
@WebServlet("/AddFeedback")
public class AddFeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddFeedback() {
        super();
        // TODO Auto-generated constructor stub
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
		  String feedback = request.getParameter("feedback");
		  
		  Integer userID = Integer.parseInt(userId);
		  Connection conn = null;

	      try {			
					conn = DBConn.getConnection();
					if (conn != null)
					{
						Statement sm = conn.createStatement();
						String sql_statement = "insert into feedback(user_id,name,email,feedback) values("+userID+",'"+name+"','"+email+"','"+feedback+"')";
						sm.executeUpdate(sql_statement);
						out.println("<html><head><script>");
						RequestDispatcher dispatcher = request.getRequestDispatcher("javascript/FeedbackSuccess.js");
						dispatcher.include(request, response);
						out.println("</script><title>Login Alert</title></head><body></body></html>");
					}
	    	  		
				}
	      		catch(Exception E) {
					out.println("<h1>"+E.getMessage()+"</h1>");
				}

	}

}
