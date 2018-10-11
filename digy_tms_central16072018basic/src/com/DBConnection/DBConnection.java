package com.DBConnection;

import java.sql.Connection;
import java.sql.DriverManager;


public class DBConnection {

	public static Connection getDBConnection()
	{
		Connection conn=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			//System.out.println("Driver Register success");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/digywood_digytms","root","root"); 
			//System.out.println("Connection Success");
			//System.out.println("Printing the connection object   "+conn);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		//System.out.println("Done DBConnection");
		return conn;
	}
	
}
