<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" import="rto.bl.*,rto.dl.*,rto.dto.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String company_id=request.getParameter("company_id");
PreparedStatement ps=null;
String query=null;
Connection con=null;
ResultSet result;

String company_name=request.getParameter("company_name");
String company_email=request.getParameter("company_email");
String company_address=request.getParameter("company_address");
String company_phone=request.getParameter("company_phone");



try
{
  
   String sql="update tb_dealer set company_name=?,company_email=?,company_address=?,company_phone=? where company_id=?";
   con=DBHelper.getConnection();
 
 	ps=con.prepareStatement(sql);
 	
 
   
  
  ps.setString(1, company_name);
  ps.setString(2, company_email);
  ps.setString(3, company_address);
  ps.setString(4, company_phone);
  ps.setString(5, company_id);
  
  
  int rs= ps.executeUpdate();
    if(rs==1)
	   {  %>
	   <script>
	   alert('Successfully Updated');
	   window.location = "DealerHome1.jsp";
	   
	   </script>
	   <%   }
  
} catch (Exception e) {
 e.printStackTrace();
 
}
finally
{
	con.close();
}
%>

</body>
</html>