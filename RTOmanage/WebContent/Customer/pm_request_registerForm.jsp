<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,rto.dl.*,rto.dto.*,rto.bl.*,java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css1/pm_request.css" >
</head>
<body>
<% if(session.getAttribute("temp_no")==null)
		{
		response.sendRedirect("../index.jsp");
		}
%>
<%-- Header section --%>
 	<tr>
    <td height="138" align="center" valign="middle" bgcolor="lightBlue"><h1 style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif; font-size: xx-large;">RTO MANAGEMENT SYSTEM </h1></td>
    </tr>
     <td height="33" align="center" valign="middle"><%@include file="../includes/CusHomeNav.jsp" %> </td>
     
<%--Body --%>

<div class="container">
      <h1>Permenant number request form</h1>
      <p>Please fill in this form to submit your application for permanent number</p>
      <hr>
      <tr><td><%=message %></td></tr>
      
<%-- Form --%>    
   <form action="pm_request_register_process.jsp">
   <%!
   String message;
   String application_no;
   String temp_no;
   TempDTO temp=null;
   SimpleDateFormat formattedDate;
   String alloted_date,expired_date;
   %>
   <% 
    application_no=(String)session.getAttribute("application_no");
    temp_no=(String)session.getAttribute("temp_no");
    temp=TempDL.getTPAlloted(temp_no); 
     if(temp!=null)
 	 {
    	 /* String allot_date=temp.getTp_allot_date();
    	 formattedDate=new SimpleDateFormat("dd/MM/yy");
    	 alloted_date=formattedDate.format(allot_date);
    	 
    	 String expire_date=temp.getExpiry_date();
    	 expired_date=formattedDate.format(expire_date); */
     %>
                   
      <label for="appNo"><b>Application number</b></label>
      <input type="text" placeholder="Enter your Application numberl" value="<%=temp.getApplication_no()%>" name="appNo" required>

      <label for="temp_no"><b>Temporary number</b></label>
      <input type="text" placeholder="Enter your Temporary number" name="temp_no" value="<%=temp.getTemp_no()%>" required>

      <label for="cus_name"><b>customer name</b></label>
      <input type="text" placeholder="Enter your name" name="cus_name" value="<%=temp.getCus_name()%>" required>
      
      <label for="tp_allot_date"><b>Temporary number allot date &nbsp;&nbsp;</b></label></br>
      <input type="date" name="tp_allot_date" value="<%=temp.getTp_allot_date()%>" required></br>
      
      <label for="tp_allot_date"><b>Temporary number Expiary date &nbsp;&nbsp;</b></label></br>
      <input type="date" name="tp_expire_date" value="<%=temp.getExpiry_date()%>" required></br>
      
      <label for="chassis_no"><b>chassis number</b></label>
      <input type="text" placeholder="Enter your name" name="chassis_no" value="<%=temp.getChassis_no()%>" required>
       
	  <input type="hidden" name="txtStatus" id="txtStatus" value="0">
        <button type="submit" class="signupbtn">Submit</button>
      
   </form>
   <%
   }
   else
   {
   %>
	<h3>No Temporary Details Found!!</h3>
	<% 
	}
   %> 
 </div>
</body>
</html>
