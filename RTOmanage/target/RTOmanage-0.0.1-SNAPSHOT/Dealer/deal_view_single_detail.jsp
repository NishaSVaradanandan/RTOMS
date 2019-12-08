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

 String company_id=request.getParameter("Company_id");
String query;
PreparedStatement ps=null;
Connection con;
ResultSet result;
try
{
	con=DBHelper.getConnection();
	query="SELECT * FROM  tb_dealer  WHERE company_id=?";
	ps=con.prepareStatement(query);
	
	ps.setString(1,company_id);
	result=ps.executeQuery();
	if(result.next())
	{%>
	<table>
	<tr>
	<td><%=result.getString(2) %></td>
	<td><%=result.getString(3) %></td>
	<td><%=result.getString(4) %></td>
	<td><%=result.getString(5) %></td>
	<td><%=result.getLong(6) %></td>
	<td align="left" valign="middle"><a href="dealer_edit.jsp?company_id=<%=company_id%>">Update</a></td>
					    <td align="left" valign="middle"><a href="dealer_delete.jsp?company_id=<%= company_id%>">Delete</a></td>
					          </td>
	</tr>
	</table>
	
		
		
	<% }
	
	ps.close();con.close();
	
}
catch(Exception e)
{
	System.out.print("**error**:DealerDL:viewDealer"+e.getMessage());
	
}
%>
</body>
</html>