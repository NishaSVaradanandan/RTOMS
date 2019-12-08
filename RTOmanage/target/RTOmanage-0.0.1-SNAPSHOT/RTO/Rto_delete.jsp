<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="rto.bl.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!String u_id=null;
int result=0;
%>
<%u_id=request.getParameter("u_id");
result=RtoBL.deleteRto( u_id);

 if(result>0)
                 			    {
                 			    	session.setAttribute("message", "Rto details deleted successfully!");
                 			    }
                 			    else
                 			    {
                 			      	session.setAttribute("message", "Please try again later!");
                 			    }
 								response.sendRedirect("rto_list_page.jsp");
 %>


</body>
</html>