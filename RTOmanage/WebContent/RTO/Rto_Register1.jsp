
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

    <!-- Title Page-->
    <title>Rto registrtion form</title>

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

<%@ include file="../includes/HomeNav.jsp" %>
<%
    String rto_id="";
    rto_id=AutoIdGenerator.RTOGenerate();
    %>
<div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
   

        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">RTO Registration Form</h2>
                </div>
                <div class="card-body">
                    <form method="POST" action="Register_process.jsp" onsubmit="return validate()" name="f1">
                       <div class="row">
                                <div >
                                    <input id="id" type="hidden" value="1" name="txt_role" required class="validate">
                                    
                                </div>
                        </div>
                        <div class="form-row">
                            <div class="name">RTO Registartion id</div>
                            <div class="value">
                             
                                <div class="input-group">
                                    <input class="input--style-5" value='<%=rto_id %>' readonly="true" type="text" name="txt_RtoId" class="validate" id="rto_id">
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="name">RTO name</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="txt_RtoName" required>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Email</br></div>
                            <br/>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" required name="txt_RtoEmail" pattern="[A-Za-z0-9._%+-]{3,}@[a-zA-Z]{3,}([.]{1}[a-zA-Z]{2,}|[.]{1}[a-zA-Z]{2,}[.]{1}[a-zA-Z]{2,})" title="Eg: xyz@gmail.com">
                                </div>
                            </div>
                        </div>
                        <div class="form-row m-b-55">
                            <div class="name">Phone</div>
                            <div class="value">
 									<div class="input-group">
                                            <input class="input--style-5" type="text" name="txt_RtoPhone" pattern="[7-9]{1}[0-9]{9}" title="Phone number with 7-9 and remaing 9 digit with 0-9" required>
                                           
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row m-b-55">
                            <div class="name">Address</div>
                            <div class="value">
 								<div class="input-group">
                                            <input class="input--style-5" type="textarea" name="txt_RtoAddress" required>
                                           
                                        </div>
                                    </div>
                                </div>
                           <div class="form-row m-b-55">
                            <div class="name">Username</div>
                            <div class="value">
 								<div class="input-group">
                                            <input class="input--style-5" type="text" name="txt_username" required>
                                           
                                        </div>
                                    </div>
                                </div>
                           <div class="form-row m-b-55">
                            <div class="name">Password</div>
                            <div class="value">
 									<div class="input-group">
                                            <input id="password" type="password" name="password" required oninput="setPasswordConfirmValidity();" required class="input--style-5">
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