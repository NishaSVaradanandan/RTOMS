package rto.bl;
import java.util.ArrayList;
import rto.dto.RtoDTO;
import rto.dl.RtoDL;
import rto.dto.*;
import rto.dl.*;

public class RtoBL {
public static int addRto(RtoDTO rto)
	{
		int result=0;
		
		
		try
		{
		
			result=RtoDL.addRto(rto);
			
		}
		catch(Exception e)
		{
			System.out.print("**error**:addrto"+e.getMessage());
			
		}
		return result;
	}
public static int deleteRto(String rto_id)
{
	int result=0;
	try
	{
		result=RtoDL.deleteRto(rto_id);
	}
	catch(Exception e)
	{
		System.out.print("**error**:RtoBL:deleteRto"+e.getMessage());
		
	}
	return result;
	
	}
public static ArrayList<RtoDTO> getRtos()
{
	ArrayList <RtoDTO> rtos=null;
	try
	{
		rtos=RtoDL.getRtos();
	}
	catch(Exception e)
	{
		System.out.println("**Errorr**:RtoBL:getrtos:"+e.getMessage());
	}
	return rtos;
}
public static RtoDTO getRto(String rto_id)
{
	RtoDTO rto=null;
	try
	{
		rto=RtoDL.getRto(rto_id);
	}
	catch(Exception e)
	{
		System.out.println("**Errorr**:RtoBL:geRto:"+e.getMessage());
	}
	return rto;
}
public static int updateRto(RtoDTO rto)
{
	int result=0;

	try
	{
	

	result=RtoDL.updateRto(rto);	
		
	}
	
	catch(Exception e)
	{
		System.out.print("**error**:RtoBL:updateRto"+e.getMessage());
		
	}
	return result;
}


}