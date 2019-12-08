package rto.bl;
public class AutoGenerate {
public static String generate(String str1) {
		
		
		String str = new String("cus101");
		String newstr = new String();
		String prefix;
		int isuffix;
		prefix=str.substring(0,3);
		isuffix=Integer.parseInt(str.substring(3));
		isuffix++;
		newstr=prefix+isuffix;
		return newstr;
	}


}
