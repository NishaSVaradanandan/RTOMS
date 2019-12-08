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
<% if(session.getAttribute("RTOuser_id")==null)
					{
					response.sendRedirect("../index.jsp");
					}
%>
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
                  <td height="33" align="center" valign="middle"><%@include file="../includes/menu.jsp" %> </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle" style="font-family: Cambria, 'Hoefler Text', 'Liberation Serif', Times, 'Times New Roman', serif; font-weight: bold; font-size: large;">RTO REGISTRATION DETAILS</td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle" style="color: #F70509"> 
                  <%!String message="";
                 	String u_id;
                  RtoDTO rto=null;
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
					 u_id=request.getParameter("slUID");
					rto=RtoBL.getRto(u_id);
					 if(rto!=null)
					 {
					%>
					    <table width="100%" border="0">
					      <tbody>
					        <tr>
					          <td width="11%" height="30">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          <td width="17%" align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">RTO REGISTRATION ID</td>
					          <td width="1%">&nbsp;</td>
					          <td width="16%" align="left" valign="middle">
					   <%=rto.getU_id() %></td>
					          <td width="11%">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">RTO Name					          </td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><%=rto.getU_name() %>
					          </td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">RTO EMAIL				          </td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><%=rto.getU_email() %></td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">RTO PHONE</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><%=rto.getPhone() %></td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">RTO ADDRESS</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><%=rto.getAddress() %></td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					         <tr></tr>
					         <tr></tr>
					          <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td> 
					          
					          <a href="rto_edit.jsp?u_id=<%=rto.getU_id()%>">
					          <input type="button" class="btn btn-success" Value="Edit">
					          </a>
					           &nbsp;&nbsp;&nbsp;&nbsp;
							  <a href="Rto_delete.jsp?u_id=<%=rto.getU_id()%>">
							  <input type="button" class="btn btn-danger" value="Delete"></a></td><td></td>
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
            <tr><td>theris no such student</td></tr>
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
