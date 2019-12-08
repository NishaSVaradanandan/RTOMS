<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="rto.bl.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dealer Delete page</title>
</head>
<body>
<% if(session.getAttribute("Dealer_user_id")==null)
					{
					response.sendRedirect("../index.jsp");
					}
%>
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
			
			%>
			<script type="text/javascript">
			 alert('Dealer details deleted successfully!!! ');
			 window.location="dealer_view_details.jsp";
			 </script>
			 <%
		}
		else
		{
			%>
			<script type="text/javascript">
			 alert('Please try again later!! ');
			 window.location="dealer_view_details.jsp";
			 </script>
			 <%
		}
		
	}
	catch(Exception e)
	{
		System.out.println("**Error**: Dealer: Register_process"+e.getMessage());
		%>
		<script type="text/javascript">
		 alert('Please try again later!! ');
		 window.location="dealer_view_details.jsp";
		 </script>
		 <%
	}


%>

</body>
</html>