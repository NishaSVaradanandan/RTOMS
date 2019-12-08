<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="rto.dl.*,rto.bl.*,rto.dto.*,rto.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! String application_no,temp_no1,temp_no;
%>
<%
 TempDTO temp=null;
 temp_no=request.getParameter("temp_no");
 temp=TempDL.getTPAlloted(temp_no);
 application_no=temp.getApplication_no();
 temp_no1=temp.getTemp_no();
 System.out.println(application_no);
 System.out.println(temp_no1);
 newEmail email=null;
 try
 {
	 email.generateAndSendEmail(application_no,temp_no1);
	 %>
	 <script type="text/javascript">
	 alert('Mail is send to the customer! ');
	 window.location="view_tp_alloted.jsp";
	 </script>
<% 	 
 }
 catch(Exception e)
 {
	 System.out.println("Error***::SendEmail.jsp"+e.getMessage());
 }
 
%>
</body>
</html>