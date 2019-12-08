<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="rto.util.*,rto.dl.*,rto.dto.*"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
       
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/css/materialize.min.css">
        <link rel="stylesheet" href="../css1/form.css" >
          <script src="../validation/validate.js"></script>
        <script src="form.js">
        </script>
    </head>
    <%@include file="../includes/dealerHomeNav.jsp" %>
    <body >
    <%
    String dealer_id="";
    dealer_id=AutoIdGenerator.IdGenerate();
    %>
        <div class="container">
            <div class="imagebg"></div>
            <div class="container">
            <div></div>
                <div class="form-container z-depth-5" >
                <form action="Register_process.jsp" onsubmit="return validate()"name="f1">
               
                <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <h2 >DEALER REGISTRATION</h2> 
                    </div>
                    </div>
                   
                    <div class="row">
                        <div class="row">
                                <div class="input-field col s12">
                                   <input id="id" type="hidden" value="1" name="user_type_id" required class="validate">
                                 <%--    <%if(session.getAttribute("message")!=null)
                  {
                	  out.println((String)session.getAttribute("message"));
                	  session.removeAttribute("message");
                  }--%> 
                 
                                </div>
                            </div>
                             <div class="row">
                                <div class="input-field col s12">
                                    <input id="id" type="hidden" value="2" name="role" required class="validate">
                                    
                                </div>
                            </div>
                            </div>
                             <div class="row">
                                <div class="input-field col s12">
                                    <input id="company_id" type="text" name="company_id" value='<%=dealer_id%>' readonly="true">
                                    <label for="company_id">Company Registration Id</label>
                                </div>
                            </div>
                             <div class="row">
                                <div class="input-field col s12">
                                    <input id="company_name" type="text" name="company_name" required class="validate">
                                    <label for="company_name">Showroom Name</label>
                                </div>
                            </div>
                             
                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="company_email" type="email" name="company_email" pattern="[A-Za-z0-9._%+-]{3,}@[a-zA-Z]{3,}([.]{1}[a-zA-Z]{2,}|[.]{1}[a-zA-Z]{2,}[.]{1}[a-zA-Z]{2,})" title="Eg: xyz@gmail.com" class="validate">
                                    <label for="company_email">Company Email ID</label>
                                </div>
                            </div>
                             <div class="row">
                                <div class="input-field col s12">
                                    <input id="company_phone" type="text" name="company_phone" pattern="[7-9]{1}[0-9]{9}" title="Phone number with 7-9 and remaing 9 digit with 0-9" class="validate">
                                    <label for="company_phone">Mobile Number</label>
                                </div>
                 
                            <div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="company_address" type="text" name="company_address" required class="validate">
                                    <label for="company_address">Address</label>
                                </div>
                             <div class="row">
                                <div class="input-field col s12">
                                    <input id="username" type="text" name="username">
                                    <label for="username">Username</label>
                                </div>
                               </div>
                           
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="password" type="password" name="password" required class="validate">
                                    <label for="password">Password</label>
                                </div>
                            </div>
                                <button class="waves-effect waves-light btn submitbtn" type="submit">Register</button>
                            </div>
                        </form>
                        
                    </div>
                </div>
            </div>
          
            <!--Import jQuery before materialize.js-->
            <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/js/materialize.min.js"></script>
        </div>
    </body>
</html>