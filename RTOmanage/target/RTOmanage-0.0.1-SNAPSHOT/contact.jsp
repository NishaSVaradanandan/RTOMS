<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Mosh - Creative Business Template | Contact</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link href="style.css" rel="stylesheet">

    <!-- Responsive CSS -->
    <link href="css/responsive.css" rel="stylesheet">

</head>

<body>
    <!-- ***** Preloader Start ***** -->
    <div id="preloader">
        <div class="mosh-preloader"></div>
    </div>

    <!-- ***** Header Area Start ***** -->
   <header class="header_area clearfix">
        <div class="container-fluid h-100">
            <div class="row h-100">
                <!-- Menu Area Start -->
                <div class="col-12 h-100">
                    <div class="menu_area h-100">
                        <nav class="navbar h-100 navbar-expand-lg align-items-center">
                            <!-- Logo -->
                            <a class="navbar-brand" href="index.jsp"><h1 style="color: white">RTOMS</h1></a>

                            <!-- Menu Area -->
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mosh-navbar" aria-controls="mosh-navbar" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>

                            <div class="collapse navbar-collapse justify-content-end" id="mosh-navbar">
                                <ul class="navbar-nav animated" id="nav">
                                    <li class="nav-item active"><a class="nav-link" href="index.jsp">Home</a></li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="moshDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Pages</a>
                                        <div class="dropdown-menu" aria-labelledby="moshDropdown">
                                            <a class="dropdown-item" href="index.jsp">Home</a>
                                            <a class="dropdown-item" href="about.jsp">About Us</a>
                                            <a class="dropdown-item" href="services.jsp">Services</a>
                                            
                                            <a class="dropdown-item" href="contact.jsp">Contact</a>
                                           
                                        </div>
                                    </li>
                                    <li class="nav-item"><a class="nav-link" href="about.jsp">About Us</a></li>
                                    <li class="nav-item"><a class="nav-link" href="services.jsp">Services</a></li>
                                    <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
                                    <li class="nav-item"><a class="nav-link" href="contact.jsp">Register</a></li>
                                </ul>
                                <!-- Search Form Area Start -->
                                <div class="search-form-area animated">
                                    <form action="#" method="post">
                                        <input type="search" name="search" id="search" placeholder="Type keywords &amp; hit enter">
                                        <button type="submit" class="d-none"><img src="img/core-img/search-icon.png" alt="Search"></button>
                                    </form>
                                </div>
                                <!-- Search btn -->
                               
                                <div class="login-register-btn">
                                <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="moshDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Login</a>
                                        <div class="dropdown-menu" aria-labelledby="moshDropdown">
                                            <a class="dropdown-item" href="Authentication/login.jsp">customer</a>
                                            <a class="dropdown-item" href="Authentication/login.jsp">Dealer</a>
                                            <a class="dropdown-item" href="Authentication/login.jsp">RTO</a>
                                        </div>    
                                <!-- Login/Register btn -->
                               
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->

    <!-- ***** Breadcumb Area Start ***** -->
    <div class="mosh-breadcumb-area" style="background-image: url(img/core-img/breadcumb.png);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="bradcumbContent">
                        <h2>Contact</h2>
                        <nav aria-label="breadcrumb">
                           
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Breadcumb Area End ***** -->

    <!-- ***** Contact Area Start ***** -->
    <section class="contact-area section_padding_100">
        <div class="container">
            <div class="row">
                <!-- Contact Form Area -->
                <div class="col-12 col-md-8">
                    <div class="contact-form-area">
                        <h2>Get in touch</h2>
                        <form action="#">
                            <div class="row">
                                <div class="col-12 col-md-6">
                                    <input type="text" class="form-control" id="name" placeholder="Name">
                                </div>
                                <div class="col-12 col-md-6">
                                    <input type="email" class="form-control" id="email" placeholder="E-mail">
                                </div>
                                <div class="col-12">
                                    <input type="text" class="form-control" id="subject" placeholder="Subject">
                                </div>
                                <div class="col-12">
                                    <textarea name="message" class="form-control" id="message" cols="30" rows="10" placeholder="Message"></textarea>
                                </div>
                                <button class="btn mosh-btn mt-50" type="submit">Send Message</button>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- Contact Information -->
                <div class="col-12 col-md-4">
                    <div class="contact-information">
                        <h2>Contact</h2>
                        <div class="single-contact-info d-flex">
                            <div class="contact-icon mr-15">
                                <img src="img/core-img/map.png" alt="">
                            </div>
                            <p>1st Floor, Transport Bhavan, East Fort,<br> Thiruvananthapuram Fort,<br> pincode- 695023</p>
                        </div>
                        <div class="single-contact-info d-flex">
                            <div class="contact-icon mr-15">
                                <img src="img/core-img/call.png" alt="">
                            </div>
                            <p>Main:8547639001 <br> Office: 0471-2339223 </p>
                        </div>
                        <div class="single-contact-info d-flex">
                            <div class="contact-icon mr-15">
                                <img src="img/core-img/message.png" alt="">
                            </div>
                            <p> kl01.mvd@kerala.gov.in</p>
                        </div>
                       
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Contact Area End ***** -->

    <!-- Google Maps -->
    

    <!-- ***** Footer Area Start ***** -->
    <footer class="footer-area clearfix">
        <!-- Top Fotter Area -->
        <div class="top-footer-area section_padding_100_0">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-footer-widget mb-100">
                            <a href="#" class="mb-50 d-block"><h1 style="color: white;">RTOMS</h1></a>
                            <p>The vehicle registration in a local RTO office providing temporary id to user, issuing permanent number after validating the application and print monthly report of vehicle registration.</p>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-footer-widget mb-100">
                            
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-footer-widget mb-100">
                            <h5>Fast links</h5>
                            <ul>
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Testimonials</a></li>
                                <li><a href="#">Services &amp; Features</a></li>
                                <li><a href="#">Accordions and tabs</a></li>
                                <li><a href="#">Menu ideas</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-footer-widget mb-100">
                            <h5>Contact Info</h5>
                            <div class="footer-single-contact-info d-flex">
                                <div class="contact-icon">
                                    <img src="img/core-img/map.png" alt="">
                                </div>
                                <p>1st Floor,Transport Bhavan,<br> Thiruvananthapuram Fort,<br> pincode- 695023</p>
                            </div>
                            <div class="footer-single-contact-info d-flex">
                                <div class="contact-icon">
                                    <img src="img/core-img/call.png" alt="">
                                </div>
                                <p>Mob:8547639001 <br> Office: 0471-2339223 </p>
                            </div>
                            <div class="footer-single-contact-info d-flex">
                                <div class="contact-icon">
                                    <img src="img/core-img/message.png" alt="">
                                </div>
                                <p>kl01.mvd@kerala.gov.in</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Fotter Bottom Area -->
        <div class="footer-bottom-area">
            <div class="container h-100">
                <div class="row h-100">
                    <div class="col-12 h-100">
                        <div class="footer-bottom-content h-100 d-md-flex justify-content-between align-items-center">
                            <div class="copyright-text">
                                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved 
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
</p>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ***** Footer Area End ***** -->

    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
    <!-- Google Maps -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAwuyLRa1uKNtbgx6xAJVmWy-zADgegA2s"></script>
    <script src="js/map-active.js"></script>

</body>

</html>