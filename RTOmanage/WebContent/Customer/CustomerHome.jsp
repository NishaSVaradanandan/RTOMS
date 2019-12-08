<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="rto.bl.*,rto.dl.*,rto.dto.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
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
<%!int count_tp_request=0;%>
<% count_tp_request=TempBL.getCount(); %>
<nav class="navbar navbar-inverse bg-light">
	  <div class="container-fluid">
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>                        
		      </button>
		      <a class="navbar-brand" href="#"></a>
		    </div>
		    <div class="collapse navbar-collapse" id="myNavbar">
		      <ul class="nav navbar-nav">
		        <li class="active"><a href="RTO_view.jsp">View</a></li>
		        <li>
		        <a href="temp_request_view.jsp" class="notification"><span>View PM</span>
		  		<span class="badge"><%=count_tp_request%></span>
		  		</a>
		  		</li>
		        <li><a href="#" class="notification"><span>PM Request</span>
		        <span class="badge">3</span>
		        </a></li> 
		        <li><a href="logout.jsp">Logout</a></li> 
		      </ul>
		   </div>
	 </div>
</nav>
</body>
</html>