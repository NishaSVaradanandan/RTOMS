<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="rto.bl.*,rto.dl.*,rto.dto.*"%>
    <%!
	long company_phone;
	String company_name,company_email,company_address,username,password,role,company_id;
    
    int result=0;
    
   DealerDTO dealer=null;
    %>
    <%
   dealer= new DealerDTO();
    try
    {
    	
   company_id=request.getParameter("company_id");
    	
  	role=request.getParameter("role"); 	
   company_name=request.getParameter("company_name");
   company_email=request.getParameter("company_email");
   company_phone=Long.parseLong(request.getParameter("company_phone"));
   company_address=request.getParameter("company_address");
   
   username=request.getParameter("username");
   password=request.getParameter("password");
     
     dealer.setCompany_id(company_id);
     dealer.setRole(role);
     dealer.setCompany_name(company_name);
     dealer.setCompany_email(company_email);
     dealer.setCompany_phone(company_phone);
     dealer.setCompany_address(company_address);
     dealer.setUsername(username);
     
     dealer.setPassword(password);
     
  
 

     result=DealerBL.addDealer(dealer);
     if(result>0)
     {
    	
    	 %>
    	 <script type="text/javascript">
		 alert('Dealer Registered Successfully!!');
		 window.location="../index.jsp";
         </script>
        <%
     }
     else{
    	 %>
    	 
    	 <script type="text/javascript">
		 alert('Error in Dealer Registered!!');
		 window.location="../index.jsp";
         </script>
         <%
     }
    

}

    catch(Exception e)
    {
    	System.out.println("**errorr** Dealer: Register_process.jsp:"+e.getMessage());
    	session.setAttribute("message", "please enter a valid number");
    	response.sendRedirect("Dealer_Register.jsp");
    }
%>