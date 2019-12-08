<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="rto.bl.*,rto.dl.*,rto.dto.*"%>
   
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
String query;
Connection con=null;
ResultSet result;


try
{
  
  
    con=DBHelper.getConnection();
	query="SELECT * FROM  tb_dealer  WHERE company_id=?";
	ps=con.prepareStatement(query);
	
	ps.setString(1,company_id);
	result=ps.executeQuery();
  
  
  while(result.next())
  {%>
  <form action="update3.jsp?company_id=<%=company_id %>" method="post">
   <table>
   <tr>
<td>Company ID: </td>
<td><%=result.getString(2) %></td>

</tr>
<tr>
<td>Enter Company Name</td>
<td><input type="text" name="company_name" value=<%=result.getString(3) %> required></td>
</tr>

<tr>
<td>Enter Company Email</td>
<td><input type="text" name="company_email" value=<%=result.getString(4) %> required></td>
</tr>

<tr>
<td>Enter Company Address</td>
<td><input type="text" name="company_address" value=<%=result.getString(5) %> required></td>
</tr>

<tr>
<td>Enter Company Phone Number</td>
<td><input type="text" name="company_phone" value=<%=result.getString(6) %> required></td>
</tr>

<tr>
<td><button type="submit" value="Submit"  onclick="return confirm('Sure to Update?')">Submit</button></td>
</tr>

</table>
</form>
 <%}
  
} 
catch (Exception e) 
{
 e.printStackTrace();
 
}
finally
{
	con.close();
}
%>

</body>
</html>