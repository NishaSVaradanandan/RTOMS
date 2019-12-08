package rto.util;

import rto.dl.*;

public class AutoIdGenerator {

	public static String IdGenerate(){
		
		
		String str = new String();
		String newstr = new String();
		String prefix,suffix;
		int isuffix;
		str=DealerDL.DealerIdGenerator();
		
		if(str==null)
		{
			newstr="CMP001";
		}
		else
		{
			prefix=str.substring(0,3);
			isuffix=Integer.parseInt(str.substring(3));
			isuffix++;
			newstr=prefix+isuffix;
		}
		
		return newstr;
	}
public static String RTOGenerate(){
		
		
		String str = new String();
		String newstr = new String();
		String prefix,suffix;
		int isuffix;
		str=RtoDL.RTOIdGenerator();
		
		if(str==null)
		{
			newstr="RTO001";
		}
		else
		{
			prefix=str.substring(0,3);
			isuffix=Integer.parseInt(str.substring(3));
			isuffix++;
			newstr=prefix+isuffix;
		}
		
		return newstr;
	}






}
