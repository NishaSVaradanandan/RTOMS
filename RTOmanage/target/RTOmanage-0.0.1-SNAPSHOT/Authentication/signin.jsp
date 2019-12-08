
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
               int role=rs.getInt("category");
               
              if(role==1)
              {
                  response.sendRedirect("../RTO/RTOHome.jsp");
              }
              else if(role==2)
              {
                  response.sendRedirect("../Dealer/DealerHome.jsp");
              } 
              else if(role==3)
              {
                  response.sendRedirect("../Customer/CustomerHome.jsp");
              } 
              else
              {
            	  message="wrong user id or password";
              }
           }
        %>
         
         
    </body>
</html>
