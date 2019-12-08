<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,rto.dl.*,rto.dto.*,rto.bl.*"%>
<%!	String u_id;
	String u_name,u_email,address, phone;
	int result=0,role;
	RtoDTO rto=null;
	%>
	<% 
	try
	{
	u_id=request.getParameter("txtuID");
	u_name=request.getParameter("txtRTOName");
	u_email=request.getParameter("txtUemail");
	address=request.getParameter("txtaddr");
	phone=request.getParameter("txtphone");
	role=Integer.parseInt(request.getParameter("txtrole"));
	
	
	rto=new RtoDTO();
	rto.setU_id(u_id);
	rto.setU_name(u_name);
	rto.setU_email(u_email);
	
	rto.setPhone(phone);
	rto.setAddress(address);
	rto.setRole(role);
	result=RtoBL.updateRto(rto);
	
	
		if(result>0)
		{
			session.setAttribute("message","RTO details updated successfully!!");
		}
		else
		{
			session.setAttribute("message","Please try again!!");
		}
		response.sendRedirect("rto_list_page.jsp?rto=rto");
	}
	catch(Exception e)
	{
		System.out.println("**Error**: Rto:rto_update.jsp:"+e.getMessage());
		session.setAttribute("message","Please enter valid detail!!");
		response.sendRedirect("rto_list_page.jsp");
	}
	
	%>