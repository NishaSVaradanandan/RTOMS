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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  
<title>Insert title here</title>
 <style>
  .badge
   {
  border-radius: 50%;
  background-color: green;
  color: white;
   }
  </style>
  <link rel="stylesheet" href="../css/rtohome.css">
</head>
<body>
<%!int count_tp_request=0;%>
<% count_tp_request=TempBL.getCount(); %>
<nav class="navbar navbar-inverse  bg-info navbar-dark">
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
        <a href="temp_request_view.jsp" class="notification"><span>TP Request</span>
  		<span class="badge"><%=count_tp_request%></span>
  		</a></li>
        <li><a href="#" class="notification"><span>PM Request</span>
        <span class="badge">3</span>
        </a></li> 
        <li><a href="logout.jsp">Logout</a></li> 
      </ul>
		
      
    </div>
  </div>
</nav>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="../images/lib11.jpg" alt="Image">
        <div class="carousel-caption">
          <h1> The Voracious Reader</h1>
          <h5>A reader lives a thousand lives before he dies...</h5>
        </div>      
      </div>

      <div class="item">
        <img src="images/lib11.jpg" alt="Image">
        <div class="carousel-caption">
           <h1> The Voracious Reader</h1>
          <h5>A reader lives a thousand lives before he dies...</h5>
        </div>      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
  
<div class="container text-center">    
  <h3>What We Do</h3><br>
  <div class="row">
    <div class="col-sm-4">
      <img src="../images/book3.jpg" class="img-responsive" style="width:100%" alt="Image">
      <br>
      <div class="well">
       	<img src="../images/book3.jpg" class="img-responsive" style="width:100%" alt="Image">
      </div>
    </div>
    <div class="col-sm-4"> 
      <img src="../images/book3.jpeg" class="img-responsive" style="width:100%" alt="Image">
      <br>
      <div class="well">
       	<img src="../images/book3.jpg" class="img-responsive" style="width:100%" alt="Image">
      </div>   
    </div>
    <div class="col-sm-4">
      <div class="well">
       <p>There is nothing more luxurious than
        eating while you read unless it be
        reading while you eat... </p>
      </div>
      <div class="well">
       <p>It is a great thing to start life with
        a small number of really good books
         which are your very own...</p>
      </div>
      <div class="well">
       <p>No entertainment is so cheap as reading,
        nor any pleasure so lasting.
        Keep this word in your mind..</p>
      </div>
      <div class="well">
       <p>To acquire the habit of reading is to construct
        for yourself a refuge from almost
         all the miseries of life...</p>
      </div>
    </div>
  </div>
</div><br>


<div class="detail" style="height:200;background-color:grey;">
<br><br>
<div class="col-sm-4" style="background-color:grey;">
    <h1 style="color:red">BOOK</h1>
    As a physical object, a book is a <br>
    stack of usually rectangular pages<br>
    (made of papyrus, parchment, vellum,<br>
    or paper) oriented with one edge tied,<br>
    sewn, or otherwise fixed together and<br>
    then bound to the flexible spine of <br>
    a protective cover of heavier,<br>
    relatively inflexible material<br><br>
<button style="color:red"><a href="#" >Read More</a></button>
<br><br>
</div>
<div class="col-sm-4" style="background-color:grey;">
    <h1 style="color:red">AUTHOR</h1>
    An author is the creator or originator<br>
    of any written work such as a book or<br>
    play, and is also considered a writer.<br>
    More broadly defined, an author is <br>
    "the person who originated or gave<br>
    existence to anything" and whose<br>
    authorship determines responsibility <br>
    for what was created<br><br>
   <button style="color:red"><a href="#" >Read More</a></button>
   <br><br>
</div>
<div class="col-sm-4" style="background-color:grey;">
    <h1 style="color:red">PUBLISHER</h1>
    Publisher is included in higher-end<br>
    editions of Microsoft Office,<br>
    reflecting Microsoft's emphasis on <br>
    the application as an easy-to-use <br>
    and less expensive alternative to the<br>
    "heavyweights" with a focus on the<br>
    small-business market, where firms do<br>
    not have dedicated design professionals<br><br>
    <button style="color:red"><a href="#" >Read More</a></button>
    <br><br>
</div>

</div>

<div style="background-color:pink;">
<footer class="container-fluid text-center">
  <p>Designed & Developed By:Devusv</p>
</footer>
</div>
</body>
</html>