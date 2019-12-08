

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
<%-- <% if(session.getAttribute("RTOuser_id")==null)
					{
					response.sendRedirect("../index.jsp");
					}
%>
 --%>
<table width="100%" height="688" border="0">
  <tbody>
    <tr>
      <td height="684" align="center" valign="top"><table width="100%" border="0">
        <tbody>
          <tr>
            <td height="138" align="center" valign="middle" bgcolor="lightBlue"><h1 style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif; font-size: xx-large;">RTO MANAGEMENT SYSTEM</h1></td>
          </tr>
          <tr>
            <td height="530" align="center" valign="top"><table width="100%" border="0">
              <tbody>
                 <tr>
                  <td height="33" align="center" valign="middle"><%@include file="../includes/menu.jsp" %> </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle" style="font-family: Cambria, 'Hoefler Text', 'Liberation Serif', Times, 'Times New Roman', serif; font-weight: bold; font-size: large;">Print Monthly Details</td>
                </tr>
                
                
                <tr>
                  <td height="33" align="center" valign="middle">
 <form id="form1" name="form1" method="get" action="print_process.jsp" onsubmit="return validate();">
   <table width="70%" border="0">
     
       <tr>
         <td width="11%" height="30">&nbsp;</td>
         <td width="11%" height="30">&nbsp;</td>
         <td width="11%" height="30">&nbsp;</td>
         <br>
         <td width="15%" align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Select Month</td>
         <td width="15%" align="left" valign="middle">
         
			<select id ="Monthly" name="Monthly">          
			 <option selected value='1'>Janaury</option>
		    <option value='2'>February</option>
		    <option value='3'>March</option>
		    <option value='4'>April</option>
		    <option value='5'>May</option>
		    <option value='6'>June</option>
		    <option value='7'>July</option>
		    <option value='8'>August</option>
		    <option value='9'>September</option>
		    <option value='10'>October</option>
		    <option value='11'>November</option>
		    <option value='12'>December</option>
			</select>
			<td><button class="btn btn-info"><a href="print_process.jsp" >Go</</button></td>
		 </td>
		 </tr>
     </table>
    </form></td>
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
                  <td align="center" valign="middle" bgcolor="#E7BF09">RTOMS &copy;2018</td>
                </tr>
              </tbody>
            </table></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
  </tbody>
</table>
</body>
</html>

dealer_view.txt
Displaying dealer_view.txt.