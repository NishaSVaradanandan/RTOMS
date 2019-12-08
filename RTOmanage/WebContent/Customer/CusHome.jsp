<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="rto.bl.*,rto.dl.*,rto.dto.*"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="../css/bootstrap.min.js"></script>
  <title>Agency - Start Bootstrap Theme</title>

  <!-- Bootstrap core CSS -->
  <link href="../css/bootstrap.min.css" rel="stylesheet">

	
  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

  <!-- Custom styles for this template -->
  <link href="../css/agency.min.css" rel="stylesheet">

</head>

<body id="page-top">

<% 


if(session.getAttribute("temp_no")==null)
					{
					response.sendRedirect("../index.jsp");
					}
%>
  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav" style="font-size:15px;background-color:grey">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">RTOMS</a>
      
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav text-uppercase ml-auto">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="CusHome.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger notification" href="view_pm_id.jsp">View PM</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="pm_request_form.jsp">PM Request</a>
          </li>
         
         <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="../Authentication/logout.jsp">Logout</a>
          </li>
        </ul>
        

    </div>
 </div>
  </nav>

  <!-- Header -->
  <header class="masthead">
    <div class="container">
      <div class="intro-text">
        <div class="intro-lead-in">Welcome To RTO</div>
        <div class="intro-heading text-uppercase">Government Of Kerala</div>
        
      </div>
    </div>
  </header>

  <!-- Services -->
  <section class="page-section" id="services" style="font-size:15px;">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading text-uppercase">Services</h2>
          <h3 class="section-subheading text-muted">Registration of Motor Vehicles</h3>
        </div>
      </div>
      <div class="row text-center">
        <div class="col-md-4">
          <span class="fa-stack fa-4x">
            <i class="fas fa-circle fa-stack-2x text-primary"></i>
            <i class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i>
          </span>
          <h4 class="service-heading">Main Service</h4>
          <p class="text-muted">Issue of Certificate of Fitness to Transport Vehicles.
           Providing transport facilities to the public by granting regular and temporary permits to vehicles etc.</p>
        </div>
        <div class="col-md-4">
          <span class="fa-stack fa-4x">
            <i class="fas fa-circle fa-stack-2x text-primary"></i>
            <i class="fas fa-laptop fa-stack-1x fa-inverse"></i>
          </span>
          <h4 class="service-heading">Responsibilities</h4>
          <p class="text-muted">Collection of taxes and fees
          .Enforcement of the Motor Vehicles Act and Rules.
          Services like issuance of fitness certificate and issuance of permits</p>
        </div>
        <div class="col-md-4">
          <span class="fa-stack fa-4x">
            <i class="fas fa-circle fa-stack-2x text-primary"></i>
            <i class="fas fa-lock fa-stack-1x fa-inverse"></i>
          </span>
          <h4 class="service-heading">Our Duties</h4>
          <p class="text-muted">Collection of taxes and fees.

			Issue of Driving Licences.
			Issue of Conductors Licences quo.
			Department also keeps check on pollution 
			control of vehicles and measure for 
			safety on road </p>
	    </div>
      </div>
    </div>
  </section>

  <!-- About -->
  <section class="page-section" id="about">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading text-uppercase">About</h2>
          <h3 class="section-subheading text-muted">RTO Management System</h3>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <ul class="timeline">
            <li>
              <div class="timeline-image">
                <img class="rounded-circle img-fluid" src="../img/bg-img/about4.jpg" alt="">
              </div>
              <div class="timeline-panel">
                <div class="timeline-heading">
                  <h4>2009-2011</h4>
                  <h4 class="subheading">Our Humble Beginnings</h4>
                </div>
                <div class="timeline-body">
                  <p class="text-muted">Transport Department of the secretariat takes the administrative level
                   decisions of the line / Subordinate Departments. Its political head is the Minister and 
                   the administrative head is the Secretary to the Government..
                  </p>
                </div>
              </div>
            </li>
            <li class="timeline-inverted">
              <div class="timeline-image">
                <img class="rounded-circle img-fluid" src="../img/bg-img/about2.jpg" alt="">
              </div>
              <div class="timeline-panel">
                <div class="timeline-heading">
                  <h4>March 2011</h4>
                  <h4 class="subheading">An Agency is Born</h4>
                </div>
                <div class="timeline-body">
                  <p class="text-muted">Here we start our agency with success.
                  Our duties includes Vehicles registration within the state
					Collection of road tax.
					Issuance of licenses for public transit and cargo traffic.
					Conducting driving tests and issuing learners’ driving licenses, renewing of Driving Licenses
					Marinating the record of registered vehicles
					
					 </p>
                </div>
              </div>
            </li>
            <li>
              <div class="timeline-image">
                <img class="rounded-circle img-fluid" src="../img/bg-img/about3.jpg" alt="">
              </div>
              <div class="timeline-panel">
                <div class="timeline-heading">
                  <h4>December 2017</h4>
                  <h4 class="subheading">Transition to Full Service</h4>
                </div>
                <div class="timeline-body">
                  <p class="text-muted"> Includes another responsibilities such as
                  Vehicle transfer and registration of mortgage transactions
				Keep a constant check on the validity of vehicle insurances
				Inspection of vehicles damage in accidents
				Approving fitness certificate to transport vehicles
				Issuing international driving permits
				 </p>
		  </div>
              </div>
            </li>
            <li class="timeline-inverted">
              <div class="timeline-image">
                <img class="rounded-circle img-fluid" src="../img/bg-img/about5.png" alt="">
              </div>
              <div class="timeline-panel">
                <div class="timeline-heading">
                  <h4>November 2019</h4>
                  <h4 class="subheading">Website Creation</h4>
                </div>
                <div class="timeline-body">
                  <p class="text-muted">Now we are creating a website for automating the process of RTO Department
                   and also it will help the common users to applay temporary registration number and permanent number.
                   The payment also done through online so it will helpful for all !</p>
                </div>
              </div>
            </li>
            <li class="timeline-inverted">
              <div class="timeline-image">
                <h4>Be Part
                  <br>Of Our
                  <br>Story!</h4>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </section>


  <!-- Team -->
  <section class="bg-light page-section" id="team">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading text-uppercase">Our Guiders</h2>
          <h3 class="section-subheading text-muted">The peoples behind the success of Kerala RTO</h3>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-4">
          <div class="team-member">
            <img class="mx-auto rounded-circle" src="img/bg-img/b1.jpg" alt="">
            <h4>Pinarayi Vijayan</h4>
            <p class="text-muted">Hon'ble chief minister of kerala</p>
            <ul class="list-inline social-buttons">
              <li class="list-inline-item">
                <a href="#">
                  <i class="fab fa-twitter"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fab fa-facebook-f"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fab fa-facebook-f"></i>
                </a>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-sm-4">
          <div class="team-member">
            <img class="mx-auto rounded-circle" src="img/bg-img/b2.jpg" alt="">
            <h4>A K Saseendran</h4>
            <p class="text-muted">Hon'ble transport minister</p>
            <ul class="list-inline social-buttons">
              <li class="list-inline-item">
                <a href="#">
                  <i class="fab fa-twitter"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fab fa-facebook-f"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fab fa-facebook-f"></i>
                </a>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-sm-4">
          <div class="team-member">
            <img class="mx-auto rounded-circle" src="img/bg-img/b3.jpg" alt="">
            <h4>R Sreelekha IPS</h4>
            <p class="text-muted">Hon'ble Transport Commisioner</p>
            <ul class="list-inline social-buttons">
              <li class="list-inline-item">
                <a href="#">
                  <i class="fab fa-twitter"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fab fa-facebook-f"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fab fa-facebook-f"></i>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-8 mx-auto text-center">
          <p class="large text-muted">The Motor Vehicles Department is regulated by the Government of Kerala
           in terms of policy formulation and its implementation.
           The Department is administered by the Transport Commissioner who is the Head of Department.
           The Department has four functional levels:</p>
                           
        </div>
      </div>
    </div>
  </section>


  <!-- Footer -->
  <footer class="footer">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-4">
          <span class="copyright">Copyright &copy; Your Website 2019</span>
        </div>
        <div class="col-md-4">
          <ul class="list-inline social-buttons">
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-twitter"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-facebook-f"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                  <i class="fab fa-facebook-f"></i>
                </a>
            </li>
          </ul>
        </div>
        <div class="col-md-4">
          <ul class="list-inline quicklinks">
            <li class="list-inline-item">
              <a href="#">Privacy Policy</a>
            </li>
            <li class="list-inline-item">
              <a href="#">Terms of Use</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </footer>

  
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Contact form JavaScript -->
  <script src="js/jqBootstrapValidation.js"></script>
  <script src="js/contact_me.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/agency.min.js"></script>

</body>

</html>
