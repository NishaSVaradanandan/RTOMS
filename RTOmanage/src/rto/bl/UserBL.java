package rto.bl;
import rto.dto.*;
import rto.dl.UserDL;
import java.sql.*;
public class UserBL 
{
	public static User validateUser(User user1)
	{
		User user2=null;
		try
		{
			user2=UserDL.validateUser(user1);
		}
		catch(Exception e)
		{
			System.out.println("**Error**: UserBL:validateUser:"+e.getMessage());
		}
		return user2;
	}
	

}
