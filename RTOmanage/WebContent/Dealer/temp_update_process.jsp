<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="rto.*,rto.bl.*,rto.dto.*"%>
<%!		String application_no,cus_name,cus_email,cus_address,cus_adhar,chassis_no,engine_no,ownership,v_type,v_class,fuel,
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
		application_no=request.getParameter("txtAppno");
		cus_name=request.getParameter("txtCname");
		cus_email=request.getParameter("txtCemail");
		cus_address=request.getParameter("txtCaddress");
		cus_adhar=request.getParameter("txtAdhar");
		chassis_no=request.getParameter("txtChassis");
		engine_no=request.getParameter("txtEngine");
		ownership=request.getParameter("txtOwner");
		v_type=request.getParameter("txtVtype");
		v_class=request.getParameter("txtVclass");
		fuel=request.getParameter("txtFuel");
		color=request.getParameter("txtColor");
		company_name=request.getParameter("txtCompany");
		cus_phone=Long.parseLong(request.getParameter("txtCphone"));
		seating=Integer.parseInt(request.getParameter("txtSeat"));
		sale_amount=Double.parseDouble(request.getParameter("txtAmount"));
		purchase_date=request.getParameter("txtPurdate");
		
		temp=new TempDTO();
		temp.setApplication_no(application_no);
		temp.setCus_name(cus_name);
		temp.setCus_email(cus_email);
		temp.setCus_address(cus_address);
		temp.setCus_adhar(cus_adhar);
		temp.setChassis_no(chassis_no);
		temp.setEngine_no(engine_no);
		temp.setOwnership(ownership);
		temp.setV_type(v_type);
		temp.setV_class(v_class);
		temp.setFuel(fuel);
		temp.setColor(color);
		temp.setCompany_name(company_name);
		temp.setCus_phone(cus_phone);
		temp.setSeating(seating);
		temp.setSale_amount(sale_amount);
		temp.setPuchase_date(purchase_date);
		
		result=TempBL.updateTempRequest(temp);
	
		if(result>0)
		{
			session.setAttribute("message","Customer and vehicle details updated successfully!!");
			%>
			<script type="text/javascript">
			 alert('Customer and vehicle details updated successfully!!"! ');
			 window.location="view_all_temprequest.jsp";
			 </script>
			 <%
		}
		else
		{
			%>
			<script type="text/javascript">
			 alert('Error occurs Please Try again!!! ');
			 window.location="view_all_temprequest.jsp";
			 </script>
			 <%
		}
		
	}
	catch(Exception e)
	{
		System.out.println("**Error**: :temp_update_process.jsp:"+e.getMessage());
		%>
		<script type="text/javascript">
		 alert('Error occurs Please Try again!!! ');
		 window.location="view_all_temprequest.jsp";
		 </script>
		 <%
	}
	
	%>