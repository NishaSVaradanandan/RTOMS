<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="rto.bl.*,rto.dl.*,rto.dto.*"%>
    <%!
    int role;
	String u_name,u_email,phone,address,rtoname,password, u_id;
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
	    password=request.getParameter("password");
     
	     rto.setU_id( u_id);
	     rto.setU_name(u_name);
	     rto.setRole(role);
	     rto.setU_email(u_email);
	     rto.setPhone(phone);
	     rto.setAddress(address);
	     rto.setUsername(rtoname);
	     rto.setPassword(password);
         result=RtoBL.addRto(rto);
		     if(result>0){
		    	 %>
		    	 <script type="text/javascript">
				 alert('RTO Registered Successfully!!');
				 window.location="../index.jsp";
		         </script>
		    	<% 
		     }
		     else{
		    	 
		    	 %>
		    	   <script type="text/javascript">
		    	   alert('Error occur in registering!!! ');
		    	   window.location="../index.jsp";
		    	   </script>
		    	   <%
		    	 
		     }
	}

    catch(Exception e)
    {
    	System.out.println("**errorr** RTO: Register_process.jsp:"+e.getMessage());
    	 %>
  	   <script type="text/javascript">
  	   alert('Error occur in registering!!! ');
  	   window.location="../Rto_Register1.jsp";
  	   </script>
  	   <%
    }
%>