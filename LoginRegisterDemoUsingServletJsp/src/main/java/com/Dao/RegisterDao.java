package com.Dao;

import java.sql.*;

import com.Bean.RegisterBean;
import com.Util.DBConnection;

public class RegisterDao 
{
	public int newUser(RegisterBean r) throws SQLException
	{
		Connection conn = DBConnection.getDbConnection();
		PreparedStatement ps = conn.prepareStatement("INSERT INTO logintb VALUES (?,?,?,?,?,?)");
		
		ps.setString(1, r.getFname());
		ps.setString(2, r.getLname());
		ps.setString(3, r.getEmail());
		ps.setString(4, r.getMobile());
		ps.setString(5, r.getPass());
		ps.setString(6, r.getAdd());
		
		int i = ps.executeUpdate();
		
		return i;
	}
}
