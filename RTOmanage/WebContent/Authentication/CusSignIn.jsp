
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,rto.bl.*,rto.dto.*,rto.dl.*,java.sql.*,
    rto.util.*,java.util.Date,java.text.SimpleDateFormat,java.text.ParseException,java.util.Calendar"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
   
    <%!String application_no,temp_no,message;
    Utility utility=null;
    TempDTO temp1=null;
    TempDTO temp2=null;
    int role;%>
    
        <%
        try
        {
       application_no=request.getParameter("application_no");
 	   temp_no=request.getParameter("temp_no");
 	   temp1=new TempDTO();
	   temp1.setApplication_no(application_no);
	   temp1.setTemp_no(temp_no);
	   
	   temp2=UserDL.validateCustomer(temp1);
	  
 	   String exp_date=temp2.getExpiry_date();
 	   SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
 	   Date date2 = new Date();
       Date date1 = sdf.parse(exp_date);
       Calendar cal1 = Calendar.getInstance();
       Calendar cal2 = Calendar.getInstance();
       cal1.setTime(date1);
       cal2.setTime(date2); 
	   System.out.println("Date1 ="+date1);
	   System.out.println("Date2 ="+date2);
	   System.out.println("Date1 is after Date2");
	   
        	   if(temp2!=null)
        	   {
        		   if (cal1.after(cal2))
        		   {
        		   session.setAttribute("application_no", temp2.getApplication_no());
            	   session.setAttribute("temp_no", temp2.getTemp_no());
            	   response.sendRedirect("../Customer/CusHome.jsp");
        		   }
        	   }
        	   
        }
        catch(Exception e)
        	   {
        	   session.setAttribute("message","Wrong user id or password");
     	       response.sendRedirect("CusLogin.jsp");
        	   } 
        	
        %>
         
         
    </body>
</html>
