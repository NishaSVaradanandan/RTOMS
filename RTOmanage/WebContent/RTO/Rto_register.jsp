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
        <script src="form.js">
        </script>
    </head>
    
    <body >
    <% if(session.getAttribute("RTOuser_id")==null)
					{
					response.sendRedirect("../index.jsp");
					}
    %>
    <div class="register">
        <div class="container">
            <div class="imagebg"></div>
            <div class="container">
            <div></div>
                <div class="form-container z-depth-5" >
         	<form action="Register_process.jsp">
	            <div class="table-wrapper">
	            <div class="table-title">
	                <div class="row">
	                    <h2 >RTO REGISTRATION</h2> 
	                </div>
	             </div>
	             </div>      
                    
                        <div class="row">
                                <div class="input-field col s12">
                                    <input id="id" type="hidden" value="1" name="txt_role" required class="validate">
                                    
                                </div>
                            </div>
                             <div class="row">
                                <div class="input-field col s12">
                                    <input id="id" type="text" name="txt_RtoId" required class="validate">
                                    <label for="u_id">RTO Registration Id</label>
                                </div>
                            </div>
                             <div class="row">
                                <div class="input-field col s12">
                                    <input id="name" type="text" name="txt_RtoName" required class="validate">
                                    <label for="u_name">RTO_name</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="email" type="text" name="txt_RtoEmail" required class="validate">
                                    <label for="u_email">Email</label>
                                </div>
                            </div>
                             <div class="row">
                                <div class="input-field col s12">
                                    <input id="phone" type="tel" name="txt_RtoPhone" required class="validate">
                                    <label for="phone">Phone No:</label>
                                </div>
                             </div>
                            <div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="address" type="text" name="txt_RtoAddress" required class="validate">
                                    <label for="address">Address</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="username" type="text" name="txt_username" required class="validate">
                                    <label for="username">UserName</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="psw" type="password" name="txt_password" required class="validate">
                                    <label for="password">Password</label>
                                </div>
                            </div>
                                <button class="waves-effect waves-light btn submitbtn" type="submit">Register</button>
                            </div>
                        </form>
                        
                    </div>
                </div>
            </div>
  </div>        
            <!--Import jQuery before materialize.js-->
            <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/js/materialize.min.js"></script>
        
    </body>
</html>