package com.Util;

import java.sql.*;

public class DBConnection 
{
	static Connection conn = null;
	public static  Connection getDbConnection()
	{
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Jdbc_Demo","root","InSane");
		} 
		
		catch (ClassNotFoundException e) 
		{
			e.printStackTrace();
		}
		
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
		return conn;
	}
}
