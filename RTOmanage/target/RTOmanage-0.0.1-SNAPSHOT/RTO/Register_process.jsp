<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,rto.dl.*,rto.dto.*,rto.bl.*"%>
    <%!
    int role;
	String u_name,u_email,phone,address,rtoname,password,u_id;
    int result=0;
    
   RtoDTO rto=null;
    %>
    <%
   rto= new RtoDTO();
    try
    {
	 role=Integer.parseInt(request.getParameter("txt_role"));
	 u_id=request.getParameter("txt_RtoId");
	 u_name=request.getParameter("txt_RtoName");
	 u_email=request.getParameter("txt_RtoEmail");
     phone=request.getParameter("txt_RtoPhone");
     address=request.getParameter("txt_RtoAddress");
	 rtoname=request.getParameter("txt_username");
     password=request.getParameter("txt_password");
     
	 rto.setU_id( u_id);
     rto.setU_name(u_name);
     rto.setRole(role);
     rto.setU_email(u_name);
     rto.setPhone(phone);
     rto.setAddress(address);
     rto.setUsername(rtoname);
     rto.setPassword(password);
     result=RtoBL.addRto(rto);
     if(result>0){
    	 session.setAttribute("message","RTO deatails added");
    	 
     }
     else{
    	 
    	 session.setAttribute("message", "enter valid data");
    	 
    	 
     }
    
response.sendRedirect("../index.jsp");
}

    catch(Exception e)
    {
    	System.out.println("**errorr** RTO: Register_process.jsp:"+e.getMessage());
    	session.setAttribute("message", "please enter a valid number");
    	response.sendRedirect("Rto_register.jsp");
    }
%>