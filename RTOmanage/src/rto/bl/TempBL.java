package rto.bl;
import java.util.*;

import rto.dl.*;
import rto.dto.*;
public class TempBL {
	public static int addTempoRequest(TempDTO temp)
	{
		int result=0;
		try
		{
			result=TempDL.addTempoRequest(temp);
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("**Error**: RtoBL:addTempoRequest:"+e.getMessage());
		}
		return result;
	}
	public static ArrayList<TempDTO> getTempRequests()
	{
		ArrayList<TempDTO> temps=null;
		
		
		try
		{
			temps=TempDL.getTempRequests();
			
		}
		catch(Exception e)
		{
			System.out.println("**Error**: RtoBL:getTempRequests():"+e.getMessage());
		}
		return temps;
	}
	public static int deleteTempRequest(String application_no)
	{
		int result=0;
		try
		{
			result=TempDL.deleteTempRequest(application_no);
		}
		catch(Exception e)
		{
			System.out.println("**Error**: TempBL:deleteTempRequest:"+e.getMessage());
		}
		return result;
	}
	public static TempDTO getTempRequest(String application_no)
	{
		TempDTO temp=null;
		
		
		try
		{
			temp=TempDL.getTempRequest(application_no);
			
		}
		catch(Exception e)
		{
			System.out.println("**Error**: TempBL:getTempRequest:"+e.getMessage());
		}
		return temp;
	}
	public static int getCount()
	{
		int count_tp_request=0;
		try
		{
			count_tp_request=TempDL.getCount();	
		}
		catch(Exception e)
		{
			System.out.println("**Error**: TempBL:getCount:"+e.getMessage());
		}
		return count_tp_request;
	}
	public static int updateTempRequest(TempDTO temp)
	{
		int result=0;
		try
		{
			result=TempDL.updateTempRequest(temp);
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("**Error**: TempBL:updateTempRequest"+e.getMessage());
		}
		return result;
	}
	

}
