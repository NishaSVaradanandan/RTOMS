package rto.dl;
import java.sql.*;
import java.util.ArrayList;

import rto.dl.DBHelper;
import rto.dto.RtoDTO;
public class RtoDL {
			public static int addRto(RtoDTO rto)
			{
				int result=0;
				String query,query1;
				PreparedStatement ps=null;
				Connection con;
				try
				{
					con=DBHelper.getConnection();
					query="INSERT INTO tb_rto(u_id,u_name,u_email,phone,address,role) VALUES(?,?,?,?,?,?)";
					ps=con.prepareStatement(query);
					ps.setString(1,rto.getU_id());
					ps.setString(2, rto.getU_name());
					ps.setString(3, rto.getU_email());
					ps.setString(4, rto.getPhone());
					ps.setString(5,rto.getAddress());
					ps.setInt(6, rto.getRole());
					result=ps.executeUpdate();
					
					query1="INSERT INTO tbl_login(user_id,username,password,category,email) VALUES(?,?,?,?,?)";
					ps=con.prepareStatement(query1);
					ps.setString(1,rto.getUsername());
					ps.setString(2,rto.getUsername());
					ps.setString(3, rto.getPassword());
					ps.setInt(4,rto.getRole());
					ps.setString(5,rto.getU_email());
					result=ps.executeUpdate();
					
					con.close();
					
				}
				catch(Exception e)
				{
					result = -1;
					System.out.print("**error**:addrto"+e.getMessage());
					
				}
				return result;
			}
			public static int updateRto(RtoDTO rto)
			{
				int result=0;
			
				String query;
				PreparedStatement ps=null;
				Connection con;
				try
				{
					con=DBHelper.getConnection();
					query="Update tb_rto Set u_name=?,u_email=?,phone=?,address=?,role=? WHERE u_id=?";
					ps=con.prepareStatement(query);
					
					
					ps.setString(1, rto.getU_name());
					ps.setString(2, rto.getU_email());
					ps.setString(3, rto.getPhone());
					ps.setString(4,rto.getAddress());
//					ps.setString(6, rto.getRtoname());
//					ps.setString(7, rto.getPassword());
					ps.setInt(5, rto.getRole());
					ps.setString(6,rto.getU_id());
					
					result=ps.executeUpdate();
					con.close();
					
					
					
				}
				
				catch(Exception e)
				{
					System.out.print("**error**:updateRto"+e.getMessage());
					
				}
				return result;
			}
			public static int deleteRto(String u_id)
			{
				int result=0;
				
				String query;
				PreparedStatement ps=null;
				Connection con;
				try
				{
					con=DBHelper.getConnection();
					query="DELETE FROM  tb_rto  WHERE u_id=?";
					ps=con.prepareStatement(query);
					ps.setString(1,u_id);
					result=ps.executeUpdate();
					ps.close();
					con.close();
				}
				catch(Exception e)
				{
					System.out.print("**error**:RtoDL:deleteRto"+e.getMessage());
					
				}
				return result;
			}
			public static ArrayList<RtoDTO> getRtos()
			{
				Connection con=null;
				ArrayList <RtoDTO> rtos=null;
				
				try
				{
					rtos=new ArrayList<RtoDTO>();
					con=DBHelper.getConnection();
					Statement statement=null;
					statement = con.createStatement();
					ResultSet resultSet=null;
					RtoDTO rto=null;
					
					String sql="select * from tb_rto order by u_id DESC";
					resultSet = statement.executeQuery(sql);
					while(resultSet.next())
					{
						rto=new RtoDTO();
						rto.setU_id(resultSet.getString("u_id"));
						rto.setU_name(resultSet.getString("u_name"));
						rto.setU_email(resultSet.getString("u_email"));
						rto.setPhone(resultSet.getString("phone"));
						rto.setAddress(resultSet.getString("address"));
//						rto.setUsername(resultSet.getString("uname"));
//						rto.setPassword(resultSet.getString("password"));
						rto.setRole (resultSet.getInt("role"));
						
						rtos.add(rto);
						}
					resultSet.close();
					statement.close();
					con.close();
					
					
				}
				
				catch(Exception e)
				{
					System.out.print("**error**:RtoDL:getRtos"+e.getMessage());
				
			}
				return rtos;
			}
			public static RtoDTO getRto(String u_id)
			{
				Connection con=null;
				RtoDTO rto=null;
				Statement statement=null;
				ResultSet resultSet=null;
				try
				{
					con=DBHelper.getConnection();
					statement = con.createStatement();
					String sql="select * from tb_rto where u_id='"+u_id+"'";
					resultSet = statement.executeQuery(sql);
					if(resultSet.next())
					{
						rto=new RtoDTO();
						rto.setU_id(resultSet.getString("u_id"));
						rto.setU_name(resultSet.getString("u_name"));
						rto.setU_email(resultSet.getString("u_email"));
						rto.setPhone(resultSet.getString("phone"));
						rto.setAddress(resultSet.getString("address"));
						//rto.setUsername(resultSet.getString("rtoname"));
						//rto.setPassword(resultSet.getString("password"));
						rto.setRole(resultSet.getInt("role"));
						con.close();
						
						
						}
					
				}
				catch(Exception e)
				{
					System.out.print("**error**:RtoDl:getRto"+e.getMessage());
					
				}
				return rto;
			}
			
			public static String RTOIdGenerator()
			{
				Connection con=null;
				int result=0;
				Statement statement=null;
				ResultSet resultSet=null;
				String dealer_id=new String();
				try
				{
					con=DBHelper.getConnection();
					statement = con.createStatement();
					String sql="select u_id from tb_rto order by u_id desc";
					resultSet = statement.executeQuery(sql);
					if(resultSet.next())
					{
						dealer_id=resultSet.getString(1);
					}
					else
					{
						dealer_id=null;
						
						
				    }
					con.close();
				}
				catch(Exception e)
				{
					System.out.print("**error**:RtoDL:RTOIdGenerator"+e.getMessage());
					
				}
				return dealer_id;
			}
	}