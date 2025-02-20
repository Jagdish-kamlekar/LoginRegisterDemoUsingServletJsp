package com.Dao;

import java.sql.*;

import com.Bean.LoginBean;
import com.Util.DBConnection;

public class LoginDao 
{
	Connection conn = DBConnection.getDbConnection();
	
	public String Userauthentication(LoginBean lobj) throws SQLException 
	{
		String email = lobj.getEmail();
		String mobile = lobj.getMobile();
		String pass = lobj.getPass();
		
		PreparedStatement ps = conn.prepareStatement("SELECT email,mobile,pass FROM logintb WHERE  ( email = ? OR mobile = ? ) AND pass = ?");
		
		ps.setString(1, email);
		ps.setString(2, mobile);
		ps.setString(3, pass);

		ResultSet rs = ps.executeQuery();
		
		if(rs.next())
		{
			return "success";
		}
		return "InValide User";
		
	}
}
