<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="rto.bl.*,rto.dl.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!String temp_no=null;
int result=0;
%>
<%temp_no=request.getParameter("temp_no");
result=PmRequestDL.deletePM(temp_no);

 if(result>0)
   {
   %>
   <script type="text/javascript">
   alert('Permanent Number Request Denied!!! ');
   window.location="view_pm_request.jsp";
   </script>
   <%
   }
   else
   {
   %>
   <script type="text/javascript">
   alert('Permanent Number Request Denied!!! ');
   window.location="view_pm_request.jsp";
   </script>
   <%
   }
%>
</body>
</html>