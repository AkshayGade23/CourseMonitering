package com.masai.utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconn {
	
	public static Connection provideConnection() {
		
		Connection conn = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		String url = "jdbc:mysql://localhost:3306/project";
		
		try {
			conn = DriverManager.getConnection(url, "root", "akshay");
		} catch (SQLException e) {

			e.printStackTrace();
		}
				
		return conn;
		
	}
	
}
