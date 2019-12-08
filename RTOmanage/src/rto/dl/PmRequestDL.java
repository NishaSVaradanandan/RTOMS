package rto.dl;
import java.sql.*;
import java.util.ArrayList;

import rto.dl.DBHelper;
import rto.dto.PmRequestDTO;
import rto.dto.RtoDTO;
import rto.dto.TempDTO;
import rto.dto.User;

public class PmRequestDL {

	public static ResultSet validPMRequest(String application_no,String temp_no)
	{
		PmRequestDTO pmRequest1=null;
		Connection con=null;
		ResultSet rs=null;
		
		try
		{
		String sql="select  * from tb_tp_alloted where (application_no=? and Temp_no=?)";
			con=DBHelper.getConnection();
			PreparedStatement ps=null;
			ps=con.prepareStatement(sql);
			ps.setString(1,application_no );
			ps.setString(2, temp_no);
			rs=ps.executeQuery();
			con.close();
		}
		catch(Exception e)
		{
			System.out.println("**Error**: PmRequestDL:validPMRequest:"+e.getMessage());
		}
		return rs;
	}

			public static int addPmRequest(PmRequestDTO pmRequest)
			{
				int result=0;
				String query;
				PreparedStatement ps=null;
				Connection con;
				try
				{
					con=DBHelper.getConnection();
					query="INSERT INTO tb_pm_request(application_no,Temp_no,cus_name,chassis_no,tp_allot_date,status,tp_expire_date) VALUES(?,?,?,?,?,?,?)";
					ps=con.prepareStatement(query);
					ps.setString(1,pmRequest.getApplication_no());
					ps.setString(2, pmRequest.getTemp_no());
					ps.setString(3, pmRequest.getCus_name());
					ps.setString(4, pmRequest.getChassis_no());
					ps.setString(5,pmRequest.getTp_allot_date());
					ps.setInt(6,pmRequest.getCount());
					ps.setString(7,pmRequest.getExpiry_date());
                    result=ps.executeUpdate();	
                    con.close();
				}
				catch(Exception e)
				{
					result = -1;
					System.out.print("**error**:addpmRequest"+e.getMessage());
					
				}
				return result;
			}
			public static int allotedPM(PmRequestDTO pmRequest)
			{
				int result=0;
				String query;
				PreparedStatement ps=null;
				Connection con;
				try
				{
					con=DBHelper.getConnection();
					query="INSERT INTO tb_pm_alloted(application_no,chassis_no,cus_name,temp_no,permanent_no,pm_alloted_date,pm_alloted_month) VALUES(?,?,?,?,?,?,?)";
					ps=con.prepareStatement(query);
					ps.setString(1,pmRequest.getApplication_no());
					ps.setString(2, pmRequest.getChassis_no());
					ps.setString(3, pmRequest.getCus_name());
					ps.setString(4, pmRequest.getTemp_no());
					ps.setString(5, pmRequest.getPermanent_no());
					ps.setString(6, pmRequest.getPm_alloted_date());
					ps.setInt(7, pmRequest.getPm_alloted_month());
                    result=ps.executeUpdate();
                    con.close();	
				}
				catch(Exception e)
				{
					result = -1;
					System.out.print("**error**:PmRequestDL::allotedPM"+e.getMessage());
					
				}
				return result;
			}
			public static int getCount()
			{
				Connection con=null;
				Statement statement=null;
				ResultSet resultSet=null;
				int count_pm_request=0;
				PmRequestDTO pm=null;
				try
				{
					String sql="select count(*) as total from tb_pm_request where status=0 ";
					con=DBHelper.getConnection();
					statement=con.createStatement();
					resultSet=statement.executeQuery(sql);
					if(resultSet.next())
					{
						count_pm_request=resultSet.getInt("total");
					}
					con.close();
				}
				catch(Exception e)
				{
					System.out.println("**Error**: PmRequestDL:getCount:"+e.getMessage());
				}
				return count_pm_request;
			}
			
			public static ArrayList<PmRequestDTO> getPMRequests()
			{
				ArrayList<PmRequestDTO> pms=null;
				Connection con=null;
				Statement statement=null;
				ResultSet resultSet=null;
				PmRequestDTO pm=null;
				try
				{
					pms=new ArrayList<PmRequestDTO>();
					con=DBHelper.getConnection();
					statement=con.createStatement();
					String sql="select * from tb_pm_request where status=0";
					resultSet=statement.executeQuery(sql);
					while(resultSet.next())
					{
						pm=new PmRequestDTO();
						pm.setApplication_no(resultSet.getString("application_no"));
						pm.setTemp_no(resultSet.getString("Temp_no"));
						pm.setCus_name(resultSet.getString("cus_name"));
						pm.setChassis_no(resultSet.getString("chassis_no"));
						pm.setTp_allot_date(resultSet.getString("tp_allot_date"));
						pm.setExpiry_date(resultSet.getString("tp_expire_date"));
						pms.add(pm);
					}
					resultSet.close();
					statement.close();
					con.close();
				}
				catch(Exception e)
				{
				
					System.out.println("**Error**: PmRequestDL:getPmRequests():"+e.getMessage());
				}
				return pms;
			}
			public static ArrayList<PmRequestDTO> getPMAlloted(int monthly)
			{
				ArrayList<PmRequestDTO> pms=null;
				Connection con=null;
				Statement statement=null;
				ResultSet resultSet=null;
				PmRequestDTO pm=null;
				try
				{
					pms=new ArrayList<PmRequestDTO>();
					con=DBHelper.getConnection();
					statement=con.createStatement();
					String sql="select * from tb_pm_alloted where pm_alloted_month='"+monthly+"'";
					resultSet=statement.executeQuery(sql);
					while(resultSet.next())
					{
						pm=new PmRequestDTO();
						pm.setApplication_no(resultSet.getString("application_no"));
						pm.setTemp_no(resultSet.getString("Temp_no"));
						pm.setCus_name(resultSet.getString("cus_name"));
						pm.setChassis_no(resultSet.getString("chassis_no"));
						pm.setPermanent_no(resultSet.getString("permanent_no"));
						pm.setPm_alloted_date(resultSet.getString("pm_alloted_date"));
						pms.add(pm);
					}
					resultSet.close();
					statement.close();
					con.close();
				}
				catch(Exception e)
				{
				
					System.out.println("**Error**: PmRequestDL:getPMAlloted():"+e.getMessage());
				}
				return pms;
			}
			
			public static PmRequestDTO getPmAllot( String temp_no)
			{
				Connection con=null;
				PmRequestDTO pm=null;
				Statement statement=null;
				ResultSet resultSet=null;
				try
				{
					con=DBHelper.getConnection();
					statement = con.createStatement();
					String sql="select * from tb_pm_request where temp_no='"+temp_no+"'";
					resultSet = statement.executeQuery(sql);
					if(resultSet.next())
					{
						pm=new PmRequestDTO();
						pm=new PmRequestDTO();
						pm.setApplication_no(resultSet.getString("application_no"));
						pm.setTemp_no(resultSet.getString("Temp_no"));
						pm.setCus_name(resultSet.getString("cus_name"));
						pm.setChassis_no(resultSet.getString("chassis_no"));
						pm.setTp_allot_date(resultSet.getString("tp_allot_date"));
					
						}
					con.close();
				}
				catch(Exception e)
				{
					System.out.print("**error**:RtoDl:getRto"+e.getMessage());
					
				}
				return pm;
			}
			public static int UpdateStatus(PmRequestDTO pmRequest)
			{
				int result2=0;
				int r=1;
				String query;
				PreparedStatement ps=null;
				Connection con;
				
				try
				{
					con=DBHelper.getConnection();
					query="Update tb_pm_request Set status=? WHERE application_no=?";
					ps=con.prepareStatement(query);
					ps.setInt(1,pmRequest.getStatus());
					ps.setString(2,pmRequest.getApplication_no());
					
					result2=ps.executeUpdate();
					con.close();
				}
				
				catch(Exception e)
				{
					System.out.print("**error**:PmRequestDL::UpdateStatus"+e.getMessage());
					
				}
				return result2;
			}
			
			public static int deletePM(String temp_no)
			{
				int result=0;
				String query;
				PreparedStatement ps=null;
				Connection con;
				try
				{
					con=DBHelper.getConnection();
					query="DELETE FROM  tb_pm_request  WHERE temp_no=?";
					ps=con.prepareStatement(query);
					ps.setString(1,temp_no);
					ps.executeUpdate();
					ps.close();
					con.close();
				}
				catch(Exception e)
				{
					System.out.print("**error**:PmRequestDL:deletePm"+e.getMessage());
					
				}
				return result;
			}
			
			public static int getCountPMAlloted()
			{
				Connection con=null;
				Statement statement=null;
				ResultSet resultSet=null;
				int count_pm_alloted=0;
				TempDTO temp=null;
				try
				{
					String sql="select count(*) as total from tb_pm_request where status=1";
					con=DBHelper.getConnection();
					statement=con.createStatement();
					resultSet=statement.executeQuery(sql);
					if(resultSet.next())
					{
						count_pm_alloted=resultSet.getInt("total");
					}
					con.close();
				}
				catch(Exception e)
				{
					System.out.println("**Error**: PmRequestDL:getCountPMAlloted:"+e.getMessage());
				}
				return count_pm_alloted;
			}
			
			
			public static ArrayList<PmRequestDTO> getPMAlloted()
			{
				ArrayList<PmRequestDTO> pms=null;
				Connection con=null;
				Statement statement=null;
				ResultSet resultSet=null;
				PmRequestDTO pm=null;
				try
				{
					pms=new ArrayList<PmRequestDTO>();
					con=DBHelper.getConnection();
					statement=con.createStatement();
					String sql="select * from tb_pm_alloted";
					resultSet=statement.executeQuery(sql);
					while(resultSet.next())
					{
						pm=new PmRequestDTO();
						pm.setApplication_no(resultSet.getString("application_no"));
						pm.setTemp_no(resultSet.getString("Temp_no"));
						pm.setCus_name(resultSet.getString("cus_name"));
						pm.setChassis_no(resultSet.getString("chassis_no"));
						pm.setPermanent_no(resultSet.getString("permanent_no"));
						pm.setPm_alloted_date(resultSet.getString("pm_alloted_date"));
						pms.add(pm);
					}
					resultSet.close();
					statement.close();
					con.close();
				}
				catch(Exception e)
				{
				
					System.out.println("**Error**: PmRequestDL:;ArryaList:getPMAlloted():"+e.getMessage());
				}
				return pms;
			}
			
			public static PmRequestDTO getPmAlloted( String temp_no)
			{
				Connection con=null;
				PmRequestDTO pm=null;
				Statement statement=null;
				ResultSet resultSet=null;
				try
				{
					con=DBHelper.getConnection();
					statement = con.createStatement();
					String sql="select * from tb_pm_request where temp_no='"+temp_no+"'";
					resultSet = statement.executeQuery(sql);
					if(resultSet.next())
					{
						pm=new PmRequestDTO();
						pm=new PmRequestDTO();
						pm.setApplication_no(resultSet.getString("application_no"));
						pm.setTemp_no(resultSet.getString("Temp_no"));
						pm.setCus_name(resultSet.getString("cus_name"));
						pm.setChassis_no(resultSet.getString("chassis_no"));
						pm.setTp_allot_date(resultSet.getString("tp_allot_date"));
					
				   }
					con.close();
					
				}
				catch(Exception e)
				{
					System.out.print("**error**:PmRequestDL:getPMAlloted(temp_no)"+e.getMessage());
					
				}
				return pm;
			}
			
			public static PmRequestDTO getPmAllotedTable( String temp_no)
			{
				Connection con=null;
				PmRequestDTO pm=null;
				Statement statement=null;
				ResultSet resultSet=null;
				try
				{
					con=DBHelper.getConnection();
					statement = con.createStatement();
					String sql="select * from tb_pm_alloted where temp_no='"+temp_no+"'";
					resultSet = statement.executeQuery(sql);
					if(resultSet.next())
					{
						pm=new PmRequestDTO();
						pm=new PmRequestDTO();
						pm.setApplication_no(resultSet.getString("application_no"));
						pm.setTemp_no(resultSet.getString("Temp_no"));
						pm.setCus_name(resultSet.getString("cus_name"));
						pm.setChassis_no(resultSet.getString("chassis_no"));
					    pm.setPermanent_no(resultSet.getString("PERMANENT_NO"));
						}
					con.close();
				}
				catch(Exception e)
				{
					System.out.print("**error**:PmRequestDL:getPMAllotedTable(temp_no)"+e.getMessage());
					
				}
				return pm;
			}
}