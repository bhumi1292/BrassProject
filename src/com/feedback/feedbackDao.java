package com.feedback;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class feedbackDao {
	
	public static Connection getconnection()
	{
		Connection con=null;
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/brassdata","root","");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		return con;
	}
	
	public static int getCustId(String nam)
	{
		int r=0;
		
		try {
			
			Connection con = feedbackDao.getconnection();
			PreparedStatement ps = con.prepareStatement("Select Cust_ID From tbl_customer WHERE Cust_Name=?");
			ps.setString(1, nam);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next())
			{
				r = rs.getInt("Cust_ID");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return r;
	}
	
	public static String getCustName(String nam)
	{
		String n = "";
		try {
			
			Connection con = feedbackDao.getconnection();
			PreparedStatement ps = con.prepareStatement("Select Cust_Name From tbl_customer WHERE Cust_Name=?");
			ps.setString(1, nam);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				n = rs.getString("Name");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return n;
	}
	
}
