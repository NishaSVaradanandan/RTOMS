package rto.util;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
public class newEmail {
 
	static Properties mailServerProperties;
	static Session getMailSession;
	static MimeMessage generateMailMessage;
 
	public static void main(String args[]) throws AddressException, MessagingException {
		//generateAndSendEmail(application_no,temp_no1);
		System.out.println("\n\n ===> Your Java Program has just sent an Email successfully. Check your email..");
	}
 
	public static void generateAndSendEmail(String application_no,String temp_no1) {
		try
		{
			
		
		// Step1
		System.out.println("\n 1st ===> setup Mail Server Properties..");
		mailServerProperties = System.getProperties();
		mailServerProperties.put("mail.smtp.port", "587");
		mailServerProperties.put("mail.smtp.auth", "true");
		mailServerProperties.put("mail.smtp.starttls.enable", "true");
		System.out.println("Mail Server Properties have been setup successfully..");
 
		// Step2
		System.out.println("\n\n 2nd ===> get Mail Session..");
		getMailSession = Session.getDefaultInstance(mailServerProperties, null);
		generateMailMessage = new MimeMessage(getMailSession);
		generateMailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress("mohamedaslam113@gmail.com"));
		//generateMailMessage.addRecipient(Message.RecipientType.CC, new InternetAddress("rahuldraj1993@gmail.com"));
		generateMailMessage.setSubject("Application Number and Temporary Number");
		String emailBody = "Application No::"+application_no+""+"Temporary Number::"+temp_no1;
		//String emailBody="hii";
		System.out.println("HII HLO  >>>>");
		generateMailMessage.setContent(emailBody, "text/html");
		System.out.println("Mail Session has been created successfully..");
 
		// Step3
		System.out.println("\n\n 3rd ===> Get Session and Send mail");
		Transport transport = getMailSession.getTransport("smtp");
 
		// Enter your correct gmail UserID and Password
		// if you have 2FA enabled then provide App Specific Password
		transport.connect("smtp.gmail.com", "nishasvaradanandan582@gmail.com", "devusv33");
		transport.sendMessage(generateMailMessage, generateMailMessage.getAllRecipients());
		transport.close();
		}
		catch(AddressException a)
		{
			System.out.println("ERROOR******::AddressException::"+a.getMessage());
			
		}
		catch(MessagingException m)
		{
			System.out.println("ERROOR******::MessagingException::"+m.getMessage());
			
		}
		catch(Exception e)
		{
			System.out.println("ERROOR******"+e.getMessage());
			
		}
	}
}