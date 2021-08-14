package com.project.elearning;
import java.sql.*;

public class DBConn {
	private static final String driver = "com.mysql.cj.jdbc.Driver";// database driver
	private static final String url = "jdbc:mysql://localhost/e_learning";   //"e_learning" refers to your database name 
	private static final String username = "root";         //  database username                                                                  
	private static final String password = "root"; // database password
	private static Connection conn = null;                 // Connection object
	// Static code block loading database driver
	
	static {
		try {
			Class.forName(driver);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
 
	public static Connection getConnection() throws Exception {
		if (conn == null) {
			conn = DriverManager.getConnection(url, username, password);
			return conn;
		}
		return conn;
	}
 
	public static void main(String[] args) {
		try {
			Connection conn = DBConn.getConnection();
			if (conn != null) {
				System.out.println("Database connection is normal");
			} else {
				System.out.println("Database connection abnormal");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
