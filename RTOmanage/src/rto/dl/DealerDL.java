package rto.dl;
import java.sql.*;
import java.util.ArrayList;
import rto.dl.DBHelper;
import rto.dto.DealerDTO;
import rto.dto.DealerDTO;

	public class DealerDL {
			public static int addDealer(DealerDTO dealer)
			{
				int result=0;
				String query,query1;
				PreparedStatement ps=null;
				Connection con;
				try
				{
					con=DBHelper.getConnection();
					query="INSERT INTO tb_dealer(company_id,role,company_name,company_email,company_address,company_phone) VALUES(?,?,?,?,?,?)";
					ps=con.prepareStatement(query);
					ps.setString(1,dealer.getCompany_id());
					ps.setString(2, dealer.getRole());
					ps.setString(3, dealer.getCompany_name());
					ps.setString(4, dealer.getCompany_email());
					ps.setString(5,dealer.getCompany_address());
					ps.setLong(6, dealer.getCompany_phone());
					result=ps.executeUpdate();
					
					query1="INSERT INTO tbl_login(user_id,username,password,category,email) VALUES(?,?,?,?,?)";
					ps=con.prepareStatement(query1);
					ps.setString(1,dealer.getUsername());
					ps.setString(2,dealer.getUsername());
					ps.setString(3, dealer.getPassword());
					ps.setString(4,dealer.getRole());
					ps.setString(5,dealer.getCompany_email());
					result=ps.executeUpdate();
					con.close();
					
				}
				catch(Exception e)
				{
					result = -1;
					System.out.print("**error**:DealerDL::adddealer"+e.getMessage());
					
				}
				return result;
			}
			public static ArrayList<DealerDTO> getDealers()
			{
				Connection con=null;
				ArrayList <DealerDTO> dealers=null;
				
				try
				{
					dealers=new ArrayList<DealerDTO>();
					con=DBHelper.getConnection();
					Statement statement=null;
					statement = con.createStatement();
					ResultSet resultSet=null;
					DealerDTO dealer=null;
					
					String sql="select * from tb_dealer order by company_id DESC";
					resultSet = statement.executeQuery(sql);
					while(resultSet.next())
					{
						dealer=new DealerDTO();
						dealer.setCompany_id(resultSet.getString("company_id"));
						dealer.setCompany_name(resultSet.getString("company_name"));
						dealer.setCompany_email(resultSet.getString("company_email"));
						dealer.setCompany_phone(resultSet.getLong("company_phone"));
						dealer.setCompany_address(resultSet.getString("company_address"));
					
						dealers.add(dealer);
						}
					resultSet.close();
					statement.close();
					con.close();
					
					
				}
				catch(Exception e)
				{
					System.out.print("**error**:dealerDL:getdealers"+e.getMessage());
				
			}
				return dealers;
			}
			public static DealerDTO getDealer(String company_id)
			{
				Connection con=null;
				DealerDTO dealer=null;
				Statement statement=null;
				ResultSet resultSet=null;
				try
				{
					con=DBHelper.getConnection();
					statement = con.createStatement();
					String sql="select * from tb_dealer where company_id=?";
					resultSet = statement.executeQuery(sql);
					if(resultSet.next())
					{
						dealer=new DealerDTO();
						dealer=new DealerDTO();
						dealer.setCompany_id(resultSet.getString("company_id"));
						dealer.setCompany_name(resultSet.getString("company_name"));
						dealer.setCompany_email(resultSet.getString("company_email"));
						dealer.setCompany_phone(resultSet.getLong("company_phone"));
						dealer.setCompany_address(resultSet.getString("company_address"));
						con.close();
						
						
						
						}
					return dealer;
				}
				catch(Exception e)
				{
					System.out.print("**error**:DealerDl:addDealert"+e.getMessage());
					
				}
				return dealer;
			}
			
			public static String DealerIdGenerator()
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
					String sql="select company_id from tb_dealer order by company_id desc";
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
					System.out.print("**error**:DealerDl:addDealert"+e.getMessage());
					
				}
				return dealer_id;
			}
			
			
			public static int updateDealer(DealerDTO dealer)
			{
				int result=0;
			
				String query;
				PreparedStatement ps=null;
				Connection con;
				try
				{
					con=DBHelper.getConnection();
					query="Update tb_dealer Set company_name=?,company_email=?,company_address=?,company_phone=?WHERE company_id=?";
					ps=con.prepareStatement(query);
					
					ps.setString(1, dealer.getCompany_name());
					ps.setString(2, dealer.getCompany_email());
					ps.setString(3, dealer.getCompany_address());
					ps.setLong(4, dealer.getCompany_phone());
					ps.setString(5,dealer.getCompany_id());
				
					result=ps.executeUpdate();
					
					
					con.close();	
				}
				
				catch(Exception e)
				{
					System.out.print("**error**:DealerDl:updateDealer"+e.getMessage());
					
				}
				return result;
			}
			public static int deleteDealer(String company_id)
			{
				int result=0;
				
				String query;
				PreparedStatement ps=null;
				Connection con;
				
				

				try
				{
					con=DBHelper.getConnection();
					query="DELETE FROM  tb_dealer  WHERE company_id=?";
					ps=con.prepareStatement(query);
					
					ps.setString(1,company_id);
					result=ps.executeUpdate();
					ps.close();
					con.close();
				}
				catch(Exception e)
				{
					System.out.print("**error**:DealerDL:deleteDealer"+e.getMessage());
					
				}
				return result;
			}
			
			public static ResultSet viewDealer(String company_id)
			{
				
				ResultSet result=null;
				String query;
				PreparedStatement ps=null;
				Connection con;
				
				

				try
				{
					con=DBHelper.getConnection();
					query="SELECT * FROM  tb_dealer  WHERE company_id=?";
					ps=con.prepareStatement(query);
					
					ps.setString(1,company_id);
					result=ps.executeQuery();
					
					ps.close();
					con.close();
					
				}
				catch(Exception e)
				{
					System.out.print("**error**:DealerDL:viewDealer"+e.getMessage());
					
				}
				return result;
				
			}
			
	}