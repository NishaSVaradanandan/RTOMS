
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,rto.bl.*,rto.dto.*,rto.dl.*,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%!String user_ID,password,message;
    int role;%>
        <%
       
       user_ID=request.getParameter("txt_user_id");
 	   password=request.getParameter("txt_password");
 	   ResultSet rs=UserDL.validateUser1(user_ID,password);  
 	   
           if(rs.next())
           {
        	   User user2=new User();
        	   user2.setUsername(rs.getString("username"));;
        	   user2.setUser_ID(rs.getString("user_id"));
               int role=rs.getInt("category");
               
              if(role==1)
              {
            	   session.setAttribute("RTO_username", user2.getUsername());
        		   session.setAttribute("RTOuser_id", user2.getUser_ID());
                   response.sendRedirect("../RTO/RTOHome.jsp");
              }
              else if(role==2)
              {
            	  session.setAttribute("Dealer_username", user2.getUsername());
       		      session.setAttribute("Dealer_user_id", user2.getUser_ID());
                  response.sendRedirect("../Dealer/DealerHome1.jsp");
              } 
             
              
           }
           else
           {
       	    session.setAttribute("message","Wrong user id or password");
   	        response.sendRedirect("login.jsp"); 
         
           
        }
        
           
        %>
         
         
    </body>
</html>
