<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,rto.bl.*,rto.dto.*,rto.dl.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap Table with Search Column Feature</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../css1/view_request.css">
<style>
  .badge
   {
  border-radius: 50%;
  background-color: green;
  color: white;
   }
  </style>
</head>
<body>

<% if(session.getAttribute("temp_no")==null)
		{
		response.sendRedirect("../index.jsp");
		}
%>
<%--nav bar --%>
<%@ include file="../includes/CusHomeNav.jsp" %>

<%--Table of contents --%>
<div class="container">
        <div class="table-wrapper">			
            <div class="table-title">
                <div class="row">
					<div class="col-sm-6">
						<h2>Permanent Number Alloted <b>Details</b></h2>
					</div>
                    
                </div>
            </div>
             <%
					  ArrayList<PmRequestDTO> pms=PmRequestBL.getPMRequests();
					  if(pms!=null && (pms.size()>0))
					  {
					  %>
            <table class="table table-striped table-hover " >
                <thead>
                    <tr>
                    	<th style="width: 28%;">Customer Name</th>
                        <th style="width: 22%;">Application No</th>
                        <th style="width: 28%;">Temporary Number</th>
                         <th style="width: 22%;">Chassis Number</th>
                        <th style="width: 32%;">PM Alloted Date</th>
                    </tr>
                    <%
					          for(PmRequestDTO pm : pms)
					          {
					          %>
                </thead>
                <tbody>
                    <tr>
                         
					          <td><%=pm.getCus_name()%></td>
					          <td height="30"><%=pm.getApplication_no() %></td>
					          
					          <td><%=pm.getTemp_no() %></td>
					          <td><%=pm.getChassis_no() %></td>
					          <td><%=pm.getTp_allot_date() %></td>
					    
                    </tr>
                     <%
					          }
					  }
					  else
					  {
						  %>
						  <tr>
						  <td colspan="7">No Permanent Request Found!!</td>
						  </tr>
						 <%  
					  }
					  %>         
                </tbody>
            </table>
        </div>
    </div>   
    
    
    
    
      
</body>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div style="background-color:black;color:white">
<footer class="container-fluid text-center">
<p>Designed & Developed By:Devusv</p>
</footer>
</div>
</html>       