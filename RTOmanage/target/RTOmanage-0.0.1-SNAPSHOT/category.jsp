<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Form-v4 by Colorlib</title>
	<!-- Mobile Specific Metas -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!-- Font-->
	<link rel="stylesheet" type="text/css" href="css/opensans-font.css">
	<link rel="stylesheet" type="text/css" href="fonts/line-awesome/css/line-awesome.min.css">
	<!-- Jquery -->
	<link rel="stylesheet" href="https://jqueryvalidation.org/files/demo/site-demos.css">
	<!-- Main Style Css -->
    <link rel="stylesheet" href="css1/style.css"/>
</head>

<body class="form-v4">
<%@ include file="includes/HomeNav.jsp" %>
	<div class="page-content">
		<div class="form-v4-content">
			<div class="form-left">
				<h2>KERALA RTO</h2>
				<p class="text-1">Kerala RTO was established for the purpose of carrying into effect the provisions made under the Motor Vehicles Act 1988, considering the development and changes in the Road Transport Technology,</p>
				<p class="text-2">The Kerala RTO has 18 district RTO office which also comes under Motor Vehicles Department of Kerala and is headed by the Transport Commissioner..</p>
				<div class="form-left-last">
					<input type="submit" name="account" class="account" value="Have An Account" onclick="document.location.href='login.jsp'">
				</div>
			</div>
			<form style="width:80%;background-color:black;color:white;" action="#" method="post" id="myform" >
			<br>
				<div ><h2 align="center">REGISTER FORM</h2></div>
				
					
					&nbsp;&nbsp;&nbsp;Select Category:<br>
					<br>
					&nbsp;&nbsp;&nbsp;	<input class="input-radio100" type="radio" name="role" onclick="document.location.href='RTO/Rto_register.jsp'">&nbsp;&nbsp;RTO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input class="input-radio100" type="radio" name="role"  onclick="document.location.href='Dealer/Register.jsp'">&nbsp;&nbsp;Dealer
				<br/><br/>		
						
					</div>
					
			</form>
		</div>
	</div>
	
	
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>