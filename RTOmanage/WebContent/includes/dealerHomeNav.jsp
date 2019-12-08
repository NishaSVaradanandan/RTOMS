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
   
   
   
   /* Dropdown Button */
.dropbtn {
  background-color: black;
  color: yellow;
  padding: 16px;
  font-size: 26px;
  border: none;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
  position: relative;
  display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
  color: white;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: white;}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {display: block;}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {background-color: black;}
  </style>
</head>
<body>
<%!int count_tp_alloted=0,count_pm_alloted=0;%>
<% count_tp_alloted=TempDL.getCountTPAlloted();
count_pm_alloted=PmRequestDL.getCountPMAlloted();
%>
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
      <li >
	   <a  href="../Dealer/DealerHome1.jsp">Home</a>
		</li>
	    <li class="nav-item">
            <a  href="../Dealer/view_tp_alloted.jsp">TP Notification
            <span class="badge"><%=count_tp_alloted%></span></a>
          </li>
          <li class="nav-item">
            <a  href="../Dealer/temporary_request_form.jsp">TP Request</a>
          </li>
          <li class="nav-item">
            <a href="../Dealer/view_all_temprequest.jsp">View TP Request
            </a>
          </li>
         <li class="nav-item">
            <a href="../Authentication/logout.jsp">Logout</a>
          </li>
      </ul>
		
      
    </div>
  </div>
</nav>
</body>
</html>