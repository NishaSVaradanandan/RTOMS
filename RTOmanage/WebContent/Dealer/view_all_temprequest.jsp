<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,rto.bl.*,rto.dto.*,rto.dl.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap Table with Search Column Feature</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link rel="stylesheet" href="../css1/view_request.css">
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

                 <%! String message=""; %>
                 <%
                  if(session.getAttribute("message")!=null)
                  {
                  message=(String)session.getAttribute("message") ;
                  session.removeAttribute("message");
                  }
                  %>
                  
                 

<div class="container">
        <div class="table-wrapper">			
            <div class="table-title">
                <div class="row">
					<div class="col-sm-6">
						<h2>Temporary Request <b>Details</b></h2> <span><%=message %></span>
					</div>
                    
                </div>
            </div>
             <%
					  ArrayList<TempDTO> temps=TempBL.getTempRequests();
					  if(temps!=null && (temps.size()>0))
					  {
					  %>
            <table class="table table-striped table-hover " >
                <thead>
                    <tr>
                        <th style="width: 22%;">Application No</th>
                        <th style="width: 22%;">Customer Name</th>
                        <th style="width: 22%;">Customer Email</th>
                         <th style="width: 22%;">Phone No</th>
                        <th style="width: 22%;">Customer Address</th>
                        <th style="width: 22%;">Customer Adhar</th>
                        <th style="width: 22%;">Actions</th>
                       <th></th>
                        
                    </tr>
                    <%
					          for(TempDTO temp : temps)
					          {
					          %>
                </thead>
                <tbody>
                    <tr>
                         <td height="30"><%=temp.getApplication_no() %></td>
					          <td><%=temp.getCus_name() %></td>
					          <td><%=temp.getCus_email() %></td>
					          <td><%=temp.getCus_phone() %></td>
					          <td><%=temp.getCus_address() %></td>
					          <td><%=temp.getCus_adhar() %></td>
					          <td>
                            <a href="temp_request_edit.jsp?application_no=<%=temp.getApplication_no()%>" onclick="return confirm('Are you sure Edit?')" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                            <a href="delete_temp_request.jsp?application_no=<%=temp.getApplication_no()%>" onclick="return confirm('Are you sure delete?')" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
                        </td>
					          <td><button class="btn btn-primary" name="submit" id="submit">
							<a href="view_more_tprequest.jsp?application_no=<%=temp.getApplication_no()%>">View More</a> 
						</button></td>
                    </tr>
                     <%
					          }
					  }
					  else
					  {
						  %>
						  <tr>
						  <td colspan="7">No Temporary Request Found!!</td>
						  </tr>
						 <%  
					  }
					  %>         
                </tbody>
            </table>
        </div>
    </div>   
    
    
    
    
      
</body>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div style="background-color:black;width:2000px;color:white">
<footer class="container-fluid text-center">
  <p>Designed & Developed By:Devusv</p>
</footer>
</div>
</html>       