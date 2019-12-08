<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="rto.bl.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dealer Delete page</title>
</head>
<body>
<%!
int result=0;
String company_id;

%>
<%
	try
	{
		company_id = request.getParameter("company_id");
		result = DealerBL.deleteDealer(company_id);
		if(result>0)
		{
			session.setAttribute("message","Dealer details deleted successfully");
		}
		else
		{
			session.setAttribute("message","Please try again later");
		}
		response.sendRedirect("dealer_view_details.jsp");
	}
	catch(Exception e)
	{
		System.out.println("**Error**: Dealer: Register_process"+e.getMessage());
		session.setAttribute("message", "Please enter a valid mark!!!");
		response.sendRedirect("Register.jsp");
	}


%>

</body>
</html>