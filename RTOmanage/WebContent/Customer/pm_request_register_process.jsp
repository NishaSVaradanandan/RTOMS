<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="rto.dto.*,rto.dl.*,rto.bl.*"%>
    <%!
    String application_no,Temp_no,cus_name,chassis_no,tp_allot_date,tp_expire_date;
    int result=0,count_pm_request;
    
   PmRequestDTO pmRequest=null;
    %>
    <%
    pmRequest= new  PmRequestDTO();
    try
    {
    	
    	application_no=request.getParameter("appNo");
    	Temp_no=request.getParameter("temp_no");
    	cus_name=request.getParameter("cus_name");
    	chassis_no=request.getParameter("chassis_no");
    	tp_allot_date=request.getParameter("tp_allot_date");
    	tp_expire_date=request.getParameter("tp_expire_date");
     	count_pm_request=Integer.parseInt(request.getParameter("txtStatus"));
    	pmRequest.setApplication_no(application_no);
    	pmRequest.setTemp_no(Temp_no);
    	pmRequest.setCus_name(cus_name);
    	pmRequest. setChassis_no(chassis_no);
    	pmRequest.setTp_allot_date(tp_allot_date);
    	pmRequest.setCount(count_pm_request);
    	pmRequest.setExpiry_date(tp_expire_date);
        result=PmRequestBL.addPmRequest(pmRequest);
     if(result>0)
     {
    	 session.setAttribute("message","Permanent Number request passed to RTO");
    	 
     }
     else
     {
    	 
    	 session.setAttribute("message", "enter valid data");
    	 
    	 
     }
    
response.sendRedirect("CusHome.jsp");
}

    catch(Exception e)
    {
    	System.out.println("**errorr** Customer: pm_register_process.jsp:"+e.getMessage());
    	session.setAttribute("message", "please enter a valid number");
    	response.sendRedirect("Rto_register.jsp");
    }
%>