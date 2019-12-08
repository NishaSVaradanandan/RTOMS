<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,rto.bl.*,rto.dto.*,rto.dl.*,java.sql.*"%>

    <%!
    String application_no,temp_no;
    String message;
    PmRequestDTO pmRequest=null;
    %>
    <%
    	pmRequest= new  PmRequestDTO();	
    	application_no=request.getParameter("application_no");
    	temp_no=request.getParameter("temp_no");
     	ResultSet rs=PmRequestDL.validPMRequest(application_no,temp_no);
     	if(rs.next())
     	{ 
     	session.setAttribute("application_no", application_no);
     	session.setAttribute("temp_no", temp_no);
        response.sendRedirect("pm_request_registerForm.jsp");
     	}
     	else
     	{
     		System.out.println("**errorr** pm_rq_insert::Invalid application No or temporary No");
     	}
       %>
