package rto.dl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import rto.dl.DBHelper;
import rto.dto.TempDTO;
import rto.dto.User;
public class UserDL
{
	public static User validateUser(User user1)
	{
		User user2=null;
		Connection con=null;
		ResultSet resultSet=null;
		
		try
		{
			String sql="select * from tbl_login where user_ID=? and password=?";
			con=DBHelper.getConnection();
			PreparedStatement ps=null;
			ps=con.prepareStatement(sql);
			ps.setString(1, user1.getUser_ID());
			ps.setString(2, user1.getPassword());
			resultSet=ps.executeQuery();
			if(resultSet.next())
			{
				user2=new User();
				user2.setUser_ID(resultSet.getString("USER_ID"));
				user2.setUsername(resultSet.getString("USERNAME"));	
			}
			con.close();
			
		}
		catch(Exception e)
		{
			System.out.println("**Error**: UserDL:validateUser:"+e.getMessage());
		}
		return user2;
	}
	public static ResultSet validateUser1(String u,String p)
	{
		User user2=null;
		Connection con=null;
		ResultSet rs=null;
		
		try
		{
			String sql="select * from tbl_login where user_ID=? and password=?";
			con=DBHelper.getConnection();
			PreparedStatement ps=null;
			ps=con.prepareStatement(sql);
			ps.setString(1, u);
			ps.setString(2, p);
			rs=ps.executeQuery();
			con.close();
			
		}
		catch(Exception e)
		{
			System.out.println("**Error**: UserDL:validateUser1:"+e.getMessage());
		}
		return rs;
	}
	
	
	
	public static TempDTO validateCustomer(TempDTO temp1)
	{
		TempDTO temp2=null;
		Connection con=null;
		ResultSet rs=null;
		try
		{
			String sql="select * from tb_tp_alloted where application_no=? and temp_no=?";
			con=DBHelper.getConnection();
			PreparedStatement ps=null;
			ps=con.prepareStatement(sql);
			ps.setString(1, temp1.getApplication_no());
			ps.setString(2, temp1.getTemp_no());
			rs=ps.executeQuery();
			if(rs.next())
			{
				temp2=new TempDTO();
				temp2.setApplication_no(rs.getString("application_no"));
				temp2.setTemp_no(rs.getString("temp_no"));	
				temp2.setExpiry_date(rs.getString("expire_date"));
			}
			con.close();
		}
		catch(Exception e)
		{
			System.out.println("**Error**: UserDL:validateCustomer():"+e.getMessage());
		}
		return temp2;
	}
}
