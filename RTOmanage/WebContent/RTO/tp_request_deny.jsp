<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="rto.bl.*,rto.dl.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!String application_no=null;
int result=0;
%>
<%application_no=request.getParameter("application_no");
result=TempDL.deleteTp(application_no);

 if(result>0)
 {
	 %>
	 <script type="text/javascript">
	 alert('Temporary Number Request Denied!!! ');
	 window.location="temp_request_view.jsp";
	 </script>
	 <%
  }
  else
  {
	     %>
		 <script type="text/javascript">
		 alert('Please try again later!!! ');
		 window.location="temp_request_view.jsp";
		 </script>
		 <%            			      	
   }
         %>
</body>
</html>