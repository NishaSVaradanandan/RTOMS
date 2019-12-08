<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,rto.dl.*,rto.dto.*,rto.util.*,rto.bl.*,java.util.Calendar,java.util.TimeZone"
    %>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Untitled Document</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="../includes/validation.js">
</script>
</head>

<body>
<%!int y;double x,max=9999,min=0001;%>
<%
	x=Math.floor(Math.random() * (max - min) + min); 
	y=(int)x;
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
                  <td height="33" align="center" valign="middle" style="font-family: Cambria, 'Hoefler Text', 'Liberation Serif', Times, 'Times New Roman', serif; font-weight: bold; font-size: large;">ALLOUT PERMANENT NUMBER</td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle" style="color: #F70509"> 
                  <%!String message="";
                 	String temp_no;
                 	Utility utility=null;
                 	Calendar cal = Calendar.getInstance();
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
			<form action="pm_alloted_process.jsp">
					 <%
					temp_no=request.getParameter("temp_no");
					pm=PmRequestBL.getPmAllot(temp_no);
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
							  <input type="text"  name="cus_name" value="<%=pm.getCus_name() %>">
							  </td>
					          <td width="11%">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Application Number</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle">
					          <input type="text" readonly="true" name="application_no" value="<%=pm.getApplication_no() %>">
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
					          <td align="left" valign="middle">
					          <input type="text" readonly="true" name="temp_no" value="<%=pm.getTemp_no()%>">
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
					          <td align="left" valign="middle">
					          <input type="text" readonly="true" name="chassis_no" value="<%=pm.getChassis_no()%>">
					          </td>
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
					           <td><input type="text" readonly="true" name="permanent_no" value="KL 01 A<%=y%>"></td>
					          
					          <td align="left" valign="middle"></td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          
					          </tr>
					          <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">PM Alloted Date</td>
					          <td>&nbsp;</td>
					           <td><input type="text" readonly="true" name="pm_alloted_date" value="<%=utility.getCurrentdate(cal)%>"></td>
					          
					          <td align="left" valign="middle"></td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          
					          </tr>
					          <tr><input type="number" hidden="true" value="<%=utility.getMonth(cal)%>" name="pm_alloted_month"></tr>
					        <tr>
					         <tr>
					         <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					         <td><button class="btn btn-success" name="submit" id="submit">
							<a>Provide</a> 
							</button></td>
					         </tr>
					          <td></td>
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
            <tr><td>There is no such permanent Details</td></tr>
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
