<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,rto.dl.*,rto.dto.*,rto.bl.*"
    %>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Untitled Document</title>

<script src="../includes/validation.js">
</script>
</head>

<body>
<% if(session.getAttribute("temp_no")==null)
		{
		response.sendRedirect("../index.jsp");
		}
%>
<%--Details as table--%>

<table width="100%" height="688" border="0">
  <tbody>
    <tr>
      <td height="684" align="center" valign="top"><table width="100%" border="0">
        <tbody>
          <tr>
            <td height="138" align="center" valign="middle" bgcolor="lightblue"><h1 style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif; font-size: xx-large;">RTO MANAGEMENT SYSTEM</h1></td>
          </tr>
          <tr>
            <td height="530" align="center" valign="top"><table width="100%" border="0">
              <tbody>
                <tr>
                  <td height="33" align="center" valign="middle"><%@include file="../includes/CusHomeNav.jsp" %> </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle" style="font-family: Cambria, 'Hoefler Text', 'Liberation Serif', Times, 'Times New Roman', serif; font-weight: bold; font-size: large;">PERMANENT NUMBER ALLOTED</td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle" style="color: #F70509"> 
                  <%!String message="";
                 	String temp_no;
                  PmRequestDTO pm=null;
                  %>
                  <%if(session.getAttribute("message")!=null)
                  {
                  out.println((String)session.getAttribute("message"));
                  session.removeAttribute("message");
                  }
                  %></td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle">
					 <form>
					 <%
					temp_no=request.getParameter("temp_no"); 
					/* temp_no=(String)session.getAttribute("temp_no"); */
					System.out.println(temp_no);
					pm=PmRequestDL.getPmAllotedTable(temp_no);
					
					 if(pm!=null)
					 {
					%>
					    <table width="100%" border="0">
					      <tbody>
					        <tr>
					          <td width="11%" height="30">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          <td width="17%" align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Customer Name</td>
					          <td width="1%">&nbsp;</td>
					          <td width="16%" align="left" valign="middle">
					   		  <%=pm.getCus_name()%></td>
					          <td width="11%">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Chassis Number</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><%=pm.getChassis_no()%>
					          </td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Temporary Number</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><%=pm.getTemp_no()%></td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Permanent Number</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><%=pm.getPermanent_no()%></td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        
					        
					        </tbody>
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
                  <td align="center" valign="middle" bgcolor="#0000">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center" valign="middle" bgcolor="lightBlue">RTOMS &copy;2019</td>
                </tr>
              </tbody>
            </table>
            <%
            }
            else
            {
            %>
            <table width="100%" border="0">
            <tbody>
            <tr><td>Permanent Number Not Alloted</td></tr>
            </tbody>
            </table>
            <%
            }
            %>
            </td>
          </tr>
        </tbody>
      </table></td>
    </tr>
  </tbody>
</table>


</body>
</html>
