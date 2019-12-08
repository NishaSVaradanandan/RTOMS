<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
session.removeAttribute("username");
session.removeAttribute("user_id");
session.removeAttribute("message");
session.removeAttribute("temp_no");
session.removeAttribute("RTO_username");
session.removeAttribute("RTOuser_id");
session.removeAttribute("Dealer_username");
session.removeAttribute("Dealer_user_id");
//System.out.println(session.getAttribute("temp_no"));
session.removeAttribute("application_no");
session.invalidate();
//response.setHeader("refresh", "1;url=CusLogin.jsp");
response.sendRedirect("../index.jsp");
%>

</body>
</html>