
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="rto.util.*,rto.dl.*,rto.dto.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
  <script src="../validation/validate.js"></script>
        <script src="form.js">
        </script>
    <!-- Title Page-->
    <title>Dealer registrtion form</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="../css/main.css" rel="stylesheet" media="all">
</head>

<body>
<%--Navbar --%>
 <%@include file="../includes/dealerHomeNav.jsp" %>
 
    <%
    String dealer_id="";
    dealer_id=AutoIdGenerator.IdGenerate();
    %>
<div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">DEALER REGISTRATION</h2>
                </div>
                <div class="card-body">
                
                    <%--Form Section --%>
                    <form method="POST" action="Register_process.jsp" onsubmit="return validate()" name="f1">
                       <div class="row">
                                <div >
                                     <input id="id" type="hidden" value="2" name="role" required class="validate">
                                    
                                </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Company Id</div>
                            <div class="value">
                             
                                <div class="input-group">
                                   <input class="input--style-5" readonly="true" type="text" name="company_id" value='<%=dealer_id%>' class="validate" >
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="name">Showroom Name</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="company_name" required>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Email ID</br></div>
                            <br/>
                            <div class="value">
                                <div class="input-group">
                                    <input id="company_email" type="email" name="company_email" pattern="[A-Za-z0-9._%+-]{3,}@[a-zA-Z]{3,}([.]{1}[a-zA-Z]{2,}|[.]{1}[a-zA-Z]{2,}[.]{1}[a-zA-Z]{2,})" title="Eg: xyz@gmail.com" class="input--style-5">
                                </div>
                            </div>
                        </div>
                        <div class="form-row m-b-55">
                            <div class="name">Mobile Number</div>
                            <div class="value">
 									<div class="input-group">
                                            <input id="company_phone" type="text" required name="company_phone" pattern="[7-9]{1}[0-9]{9}" title="Phone number with 7-9 and remaing 9 digit with 0-9" class="input--style-5 validate">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row m-b-55">
                            <div class="name">Address</div>
                            <div class="value">
 								<div class="input-group">
                                           <input id="company_address" type="text" name="company_address" required class="input--style-5">
                                        </div>
                                    </div>
                                </div>
                           <div class="form-row m-b-55">
                            <div class="name">Username</div>
                            <div class="value">
 								<div class="input-group">
                                           <input id="username" type="text" name="username" class="input--style-5" required>
                                        </div>
                                    </div>
                                </div>
                           <div class="form-row m-b-55">
                            <div class="name">Password</div>
                            <div class="value">
 									<div class="input-group">
                                            <input id="password" type="password" name="password"  oninput="setPasswordConfirmValidity();" required class="input--style-5">
                                        </div>
                                    </div>
                          </div>
                           <div class="form-row m-b-55">
                            <div class="name">Confirm Password</div>
                            <div class="value">
 									<div class="input-group">
                                            <input id="confirmpassword" type="password" name="confirmpassword"  oninput="setPasswordConfirmValidity();" required class="input--style-5">
                                        </div>
                                    </div>
                          </div>
                       <div>
                            <button class="btn btn--radius-2 btn--red" type="submit">Register</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <%-- script for confirm password --%>
    <script >
								function setPasswordConfirmValidity(str) {
    							const password = document.getElementById('password');
   							    const confirmpassword = document.getElementById('confirmpassword');

    							if (password.value === confirmpassword.value) {
         						confirmpassword.setCustomValidity('');
    							} else {
        						confirmpassword.setCustomValidity('Passwords must match');
    							}
   								 console.log('confirmpassword customError ', document.getElementById('confirmpassword').validity.customError);
    							console.log('confirmpassword validationMessage ', document.getElementById('confirmpassword').validationMessage);
								}
   
    
	</script>
    
    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->