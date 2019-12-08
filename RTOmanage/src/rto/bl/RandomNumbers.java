package rto.bl;
import java.util.Random;
public class RandomNumbers
{
//        public static void main(String[] args)
//        {
//        	Random objGenerator = new Random();
//            for (int iCount = 0001; iCount< 1000; iCount++)
//            {
//              int randomNumber = objGenerator.nextInt(10000);
//              System.out.println("KL 01TEMP " + randomNumber); 
//             }
//            
//            }
//        public static void main(String[] args) {
//
//            StringBuilder s = new StringBuilder();
//            for (int i = 0; i < 3; i++) {
//                char ch = (char) (Math.random() * 26 + 'A');
//                s.append(ch);
//            }
//            for (int i = 0001; i < 4; i++) {
//                char digit1 = (char) (Math.random() * 10 + '0');
//                s.append(digit1);
//            }
//            System.out.println("Random vehicle plate number: " + s);
//        }
	public static void main(String[] args) {
					//StringBuilder s = new StringBuilder();
		            String s ="KL 01TEMP";
		            String temp="";
		            for (int i = 0071; i < 1000; i++) {
	                char digit1 = (char) (Math.random() * 10 + '0');
	                temp=s+digit1;
		            }
		            System.out.println("Random vehicle plate number: " + temp);
		        }
	
	
	
	
	
}