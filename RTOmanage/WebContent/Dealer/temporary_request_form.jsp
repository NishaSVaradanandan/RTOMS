<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="rto.bl.*,rto.dl.*,rto.dto.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Contact V5</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/noui/nouislider.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../css1/temp-util.css">
	<link rel="stylesheet" type="text/css" href="../css1/temp.css">
<!--===============================================================================================-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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
<% if(session.getAttribute("Dealer_user_id")==null)
					{
					response.sendRedirect("../index.jsp");
					}
%>
<%@ include file="../includes/dealerHomeNav.jsp" %>
<%!int y;double x,max=9999,min=0001;%>
<%
	x=Math.floor(Math.random() * (max - min) + min); 
	y=(int)x;
%>

	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" action="temp_request_process.jsp">
				<span class="contact100-form-title">
					Temporary Number Request Form
				</span>
				<div></div>
				<div style="width:920px;border:1;background-color:black;color:white;border-radius: 25px;font-family:Lucida;">
				<h3 align="center" >CUSTOMER DETAILS</h3></div>	
				<div class="wrap-input100"></div>
				<div class="wrap-input100 validate-input bg1" data-validate="Please Type Application No.">
					<span class="label-input100">APPLICATION NUMBER</span>
					<input class="input100" type="text" name="txtAppno" value="CUST<%=y%>" readonly="true" id="txtAppno" placeholder="Enter Application No.">
				</div>
				<div class="wrap-input100 validate-input bg1" data-validate="Please Type Customer Name">
					<span class="label-input100">CUSTOMER NAME </span>
					<input class="input100" type="text" name="txtCname" id="txtCname" required placeholder="Enter Customer Name">
				</div>

				<div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Enter Customer Email (e@a.x)">
					<span class="label-input100">Email </span>
					<input class="input100" type="text" name="txtCemail" id="txtCemail" placeholder="Enter Customer Email " 
					pattern="[A-Za-z0-9._%+-]{3,}@[a-zA-Z]{3,}([.]{1}[a-zA-Z]{2,}|[.]{1}[a-zA-Z]{2,}[.]{1}[a-zA-Z]{2,})" title="Eg: xyz@gmail.com" required>
				</div>

				<div class="wrap-input100 bg1 rs1-wrap-input100">
					<span class="label-input100">Phone</span>
					<input class="input100" type="text" name="txtCphone" id="txtCphone" placeholder="Enter Number Phone"
					pattern="[7-9]{1}[0-9]{9}" title="Phone number with 7-9 and remaing 9 digit with 0-9" required>
				</div>
				<div class="wrap-input100 validate-input bg0 rs1-alert-validate" data-validate = "Please Type Customer Address">
					<span class="label-input100">Address</span>
					<textarea class="input100" name="txtCaddress" id="txtCaddress" placeholder="Customer Address here..." required></textarea>
				</div>
				<div class="wrap-input100 validate-input bg1">
					<span class="label-input100">Customer Adhar Number</span>
					<input class="input100" type="text" name="txtAdhar" id="txtAdhar" placeholder="Enter Customer Adhar Number" 
					pattern="[0-9]{12}" title="Enter 12 digit valid Aadhar Number "  maxLength="12" required>
				</div>
				
				
				<br><br>
				<div style="border:1;width:920px;background-color:black;color:white;border-radius: 25px;font-family:Lucida;">
				<h3  align="center" >VEHICLE DETAILS</h3>
				</div><div class="wrap-input100"></div>
				
				<div class="wrap-input100 validate-input bg1">
					<span class="label-input100">Chassis Number</span>
					<input class="input100" type="text" name="txtChassis" id="txtChassis" placeholder="Enter Chassis Number" required>
				</div>
				
				<div class="wrap-input100 validate-input bg1">
					<span class="label-input100">Engine Number</span>
					<input class="input100" type="text" name="txtEngine" id="txtEngine" placeholder="Enter Engine Number" required>
				</div>
				
				<div class="wrap-input100 input100-select bg1 rs1-wrap-input100">
					<span class="label-input100">Ownership</span>
					<div>
						<select class="input101" name="txtOwner" id="txtOwner" required>
							<option>Individual</option>
							<option>Central government</option>
							<option>Corporation</option>
							<option>KSRTC</option>
							<option>Public Sector</option>
							<option>Others</option>
						</select>
						<div class="dropDownSelect2"></div>
					</div>
				</div>
				<div class="wrap-input100 input100-select bg1 rs1-wrap-input100">
					<span class="label-input100">Vehicle Type</span>
					<div>
						<select class="input101" name="txtVtype" id="txtVtype" required>
							<option>Transport</option>
							<option>Non Transport</option>
							
						</select>
						<div class="dropDownSelect2"></div>
					</div>
				</div>
				
				<div class="wrap-input100 input100-select bg1 rs1-wrap-input100">
					<span class="label-input100">Vehicle class</span>
					<div>
						<select class="input101" name="txtVclass" id="txtVclass" required>
							<option>BDOZET-BULDOZER</option>
							<option>CLASSIC CAR</option>
							<option>DOZPVT-DOZER</option>
							<option>DPERT-DUMBER</option>
							<option>FRKLTPV-FORK LIFT(PRIVATE)</option>
							<option>INCAR4-INVALID CRGE(4WHEELER)</option>
							<option>INSCR2-INVALID CRGE(2WHEELER)</option>
							<option>LMVCAR</option>
							<option>LMVIMP</option>
							<option>MOTOR CYCLE</option>
							<option>MCYCLE-MOP</option>
							<option>OMNI BUS</option>
							<option>VINTAGE</option>
						</select>
						<div class="dropDownSelect2"></div>
					</div>
				</div>
				
				<div class="wrap-input100 input100-select bg1 rs1-wrap-input100">
					<span class="label-input100">fUEL USED</span>
					<div>
						<select class="input101" name="txtFuel" id="txtFuel" required>
							<option>BATTERY</option>
							<option>BIO FUEL</option>
							<option>CNG DIESEL</option>
							<option>ELECTRIC</option>
							<option>LPG</option>				
							<option>NO FUEL</option>
							<option>PETROL</option>
							<option>SOLAR</option>
							
						</select>
						<div class="dropDownSelect2"></div>
					</div>
				</div>				

				<div class="wrap-input100 bg1 rs1-wrap-input100">
					<span class="label-input100">Seating Capacity</span>
					<input class="input100" type="number" name="txtSeat" id="txtSeat" placeholder="Enter Seating Capacity" required maxvalue="50">
				</div>

				<div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Enter Colour">
					<span class="label-input100">Colour </span>
					<input class="input100" type="text" name="txtColor" id="txtColor" placeholder="Enter Colour " required>
				</div>

				<div class="wrap-input100 bg1 rs1-wrap-input100">
					<span class="label-input100">Sale Amount</span>
					<input class="input100" type="number" name="txtAmount" id="txtAmount" placeholder="Enter Sale Amount" required>
				</div>
				
				<div class="wrap-input100 rs1-wrap-input100 bg1">
					<span class="label-input100">Company Name</span>
					<input class="input100" type="text" name="txtCompany" id="txtCompany" placeholder="Enter Company name(showroom)" required>
				</div>
				<div>
				<input type="hidden" name="txtStatus" id="txtStatus" value="0">
				</div>
				<div class="container-contact100-form-btn">
					<button class="contact100-form-btn">
						<span>
							Submit
							<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
						</span>
					</button>
				</div>
			</form>
		</div>
	</div>



<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});


			$(".js-select2").each(function(){
				$(this).on('select2:close', function (e){
					if($(this).val() == "Please chooses") {
						$('.js-show-service').slideUp();
					}
					else {
						$('.js-show-service').slideUp();
						$('.js-show-service').slideDown();
					}
				});
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="vendor/noui/nouislider.min.js"></script>
	<script>
	    var filterBar = document.getElementById('filter-bar');

	    noUiSlider.create(filterBar, {
	        start: [ 1500, 3900 ],
	        connect: true,
	        range: {
	            'min': 1500,
	            'max': 7500
	        }
	    });

	    var skipValues = [
	    document.getElementById('value-lower'),
	    document.getElementById('value-upper')
	    ];

	    filterBar.noUiSlider.on('update', function( values, handle ) {
	        skipValues[handle].innerHTML = Math.round(values[handle]);
	        $('.contact100-form-range-value input[name="from-value"]').val($('#value-lower').html());
	        $('.contact100-form-range-value input[name="to-value"]').val($('#value-upper').html());
	    });
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>

</body>
</html>
