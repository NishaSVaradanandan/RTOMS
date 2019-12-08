<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="rto.*,rto.bl.*,rto.dto.*"%>
<%!	String application_no,cus_name,cus_email,cus_address,cus_adhar,chassis_no,engine_no,ownership,v_type,v_class,fuel,
	color,company_name;
	String purchase_date;
	long cus_phone;
	int seating;
	double sale_amount;
	int result=0;
	TempDTO temp=null;
	%>
	<% 
	try
	{
		application_no=request.getParameter("application_no");
	result=TempBL.deleteTempRequest(application_no);
		if(result>0)
		{
			%>
			<script type="text/javascript">
			 alert('Requesting details deleted successfully!!! ');
			 window.location="view_all_temprequest.jsp";
			 </script>
			 <%
		}
		else
		{
			%>
			<script type="text/javascript">
			 alert(' Request Not deleted, Please try again!!! ');
			 window.location="view_all_temprequest.jsp";
			 </script>
			 <%
		
		}
		
	}
	catch(Exception e)
	{
		System.out.println("**Error**: Temporary:delete_temp_request.jsp:"+e.getMessage());
		%>
		<script type="text/javascript">
		 alert(' Request Not deleted, Please try again!!! ');
		 window.location="view_all_temprequest.jsp";
		 </script>
		 <%
	}
	
	%>