package rto.bl;


//import java.sql.*;
import java.util.ArrayList;




import rto.dto.*;
import rto.dl.*;
public class DealerBL {
public static int addDealer(DealerDTO dealer)
	{
		int result=0;
		
		
		try
		{
		
			result=DealerDL.addDealer(dealer);
			
		}
		catch(Exception e)
		{
			System.out.print("**error**:addDealer"+e.getMessage());
			
		}
		return result;
	}
public static ArrayList<DealerDTO> getDealers()
{
	ArrayList <DealerDTO> dealers=null;
	try
	{
		dealers=DealerDL.getDealers();
	}
	catch(Exception e)
	{
		System.out.println("**Errorr**:DealerBL:getDealers:"+e.getMessage());
	}
	return dealers;
}

public static int deleteDealer(String company_id)
{
	int result=0;
	
	try
	{
		result=DealerDL.deleteDealer(company_id);
	}
	catch(Exception e)
	{
		System.out.print("**error**:DealerBL:deleteDealer"+e.getMessage());
		
	}
	return result;
}
public static int updateDealer(DealerDTO dealer)
{
	int result=0;

	
	try
	{
		
		

	result=DealerDL.updateDealer(dealer);	
		
	}
	
	catch(Exception e)
	{
		System.out.print("**error**:DealerBL:updateDealer"+e.getMessage());
		
	}
	return result;
}

}
