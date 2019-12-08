<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,rto.dl.*,rto.dto.*,rto.bl.*"%>
    <%!
	String application_no,cus_name,temp_no,chassis_no,permanent_no,pm_alloted_date;
    int result=0,result2=0,status=1,pm_alloted_month;
    
   PmRequestDTO pm=null;
    %>
    <%
   pm= new PmRequestDTO();
    try
    {
    application_no=request.getParameter("application_no");
    cus_name=request.getParameter("cus_name");
    temp_no=request.getParameter("temp_no");
    chassis_no=request.getParameter("chassis_no");
    permanent_no=request.getParameter("permanent_no");
    pm_alloted_date=request.getParameter("pm_alloted_date");
    pm_alloted_month=Integer.parseInt(request.getParameter("pm_alloted_month"));;
    
    
	 pm.setApplication_no(application_no)  ;                                                                   
     pm.setCus_name(cus_name);
     pm.setTemp_no(temp_no);
     pm.setChassis_no(chassis_no);
     pm.setPermanent_no(permanent_no); 
     pm.setPm_alloted_date(pm_alloted_date);
     pm.setPm_alloted_month(pm_alloted_month);
     
     result=PmRequestDL.allotedPM(pm);
     
     pm.setStatus(status);                                                                                                             
     result2=PmRequestDL.UpdateStatus(pm);
     
     if(result>0){
    	 
    	 %>
			<script type="text/javascript">
			 alert('Permanent Number Alloted!! ');
			 window.location="view_pm_request.jsp";
			 </script>
			 <%
    	 
     }
     else{
    	 
    	 %>
			<script type="text/javascript">
			 alert('Permanent Number Not Alloted!! ');
			 window.location="view_pm_request.jsp";
			 </script>
			 <%
    	 
     }
    

}

    catch(Exception e)
    {
    	System.out.println("**errorr** RTO: pm_alloted_process.jsp:"+e.getMessage());
    	%>
		<script type="text/javascript">
		 alert('Permanent Number Not Alloted!! ');
		 window.location="view_pm_request.jsp";
		 </script>
		 <%
	 
    }
%>