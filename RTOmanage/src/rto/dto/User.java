package rto.dto;
public class User
{
	String user_ID,username,password,category;
	public String getUsername()
	{
		return username;
	}
	
	public void setUsername(String username)
	{
		this.username = username;
	}
	
	public String getPassword()
	{
		return password;
	}
	
	public void setPassword(String password)
	{
		this.password = password;
	}
	
	public String getCategory()
	{
		return category;
	}
	
	public void setCategory(String category)
	{
		this.category = category;
	}

	public String getUser_ID()
	{
		return user_ID;
	}

	public void setUser_ID(String user_ID)
	{
		this.user_ID = user_ID;
	}
}
