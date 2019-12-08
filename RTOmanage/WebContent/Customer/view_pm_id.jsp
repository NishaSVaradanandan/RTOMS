<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,rto.dl.*,rto.dto.*,rto.bl.*"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Untitled Document</title>

<script src="../includes/Validation1.js"></script>

</head>

<body>
<% if(session.getAttribute("temp_no")==null)
		{
		response.sendRedirect("../index.jsp");
		}
%>
<%--Select Temporary Number--%>
<table width="100%" height="688" border="0">
  <tbody>
    <tr>
      <td height="684" align="center" valign="top"><table width="100%" border="0">
        <tbody>
          <tr>
            <td height="138" align="center" valign="middle" bgcolor="lightBlue"><h1 style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif; font-size: xx-large;">RTO MANAGEMENT SYSTEM</h1></td>
          </tr>
          <tr>
            <td height="530" align="center" valign="top">
            <table width="100%" border="0">
              <tbody>
                 <tr>
                  <td height="33" align="center" valign="middle"><%@include file="../includes/CusHomeNav.jsp" %> </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle" style="font-family: Cambria, 'Hoefler Text', 'Liberation Serif', Times, 'Times New Roman', serif; font-weight: bold; font-size: large;">View Your PM Alloted</td>
                </tr>
                
                <tr>
                  <td height="33" align="center" valign="middle" style="color: #F70509">
                  <%!
                  PmRequestDTO pm=null;
                  ArrayList<PmRequestDTO> pms=null;
 
                  %>
                 <%
                  if(session.getAttribute("message")!=null)
                  {
                  out.println( (String)session.getAttribute("message") );
                  session.removeAttribute("message");
                  }
                  %>
                  </td>
                </tr>
                <tr>
                <td height="33" align="center" valign="middle">
                
<%-- Form --%>
 <form id="form1" name="form1" method="get" action="view_pm_detail.jsp">
   <table width="70%" border="0">
     <tbody>
       <tr>
         <td width="8%" height="30">&nbsp;</td>
         <td width="7%" align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">SELECT TEMPORARY NUMBER</td>
         <td width="3%" align="left" valign="middle">
         
         		           <%
                  	       pms=PmRequestDL.getPMAlloted();
                           if(pms!=null)
                           {
                           %>
                           <select id = "temp_no" name="temp_no">          
							<%
							   for(PmRequestDTO pm: pms)
							   {      
							%>
							<option value='<%=pm.getTemp_no() %>'><%=pm.getTemp_no() %></option>
							
							<%
							   }

	                          }
							 else
							 {
							 %>
							 		</select>
							       <tr><td>There is no such user</td></tr>
							       </tbody>
							       </table>
							       </form>
							 <%
							 }
							 %>
             

           
         <td  width="5%" align="left" valign="middle" ><button>Submit</button></td>
         </tr>
       </tbody>
     </table>
 </td>
</tr>
<tr>
<td height="33" align="center" valign="middle">&nbsp;</td>
</tr>
</tbody>
</table></td>
</tr>
<tr>
<td align="center" valign="top"><table width="100%" border="0">
<tbody>
<tr>
<td align="center" valign="middle" bgcolor="#000000">&nbsp;</td>
</tr>
<tr>
<td align="center" valign="middle" bgcolor="lightBlue">RTOMS &copy;2018</td>
</tr>
</tbody>
</table></td>
</tr>
</tbody>
</table>
</body>
</html>
