<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,rto.dl.*,rto.dto.*,rto.bl.*,rto.util.*,java.util.Calendar,java.util.TimeZone"
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
                 	String application_no;
                  TempDTO temp=null;
                  Utility utility=null;
                  Calendar cal = Calendar.getInstance();
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
					 <form action="tp_approve_process.jsp">
					 <%
					 application_no=request.getParameter("application_no");
					temp=TempBL.getTempRequest(application_no);
					 if(temp!=null)
					 {
					%>
					    <table width="100%" border="0">
					      <tbody>
					        <tr>
					          <td width="11%" height="30">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          <td width="17%" align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Application Number</td>
					          <td width="1%">&nbsp;</td>
					          <td width="16%" align="left" valign="middle">
					          <input type="text" value="<%=temp.getApplication_no() %>" name="application_no"></td>
					          <td width="11%">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Customer Name</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" value="<%=temp.getCus_name() %>" name="cus_name">
					          </td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Chassis Number</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" value="<%=temp.getChassis_no()%>" name="chassis_no"></td>
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
					          <td align="left" valign="middle"><input type="text" name="temp_no" value="<%=utility.getTempNum()%>"></td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Temporary Alloted Date</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" value="<%=utility.getCurrentdate(cal) %>" name="TempAllotDate"></td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					         <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Temporary Expire Date</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" value="<%=utility.getExpiredate(cal) %>" name="ExpireDate"></td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					          <tr>
					         <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					         <td><button class="btn btn-success" name="submit" id="submit" style="color:yellow">
							<a>Provide</a> 
							</button></td>
					         </tr>
							  </td><td></td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					        
					        
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
            <tr><td>theris no such temporary request</td></tr>
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
