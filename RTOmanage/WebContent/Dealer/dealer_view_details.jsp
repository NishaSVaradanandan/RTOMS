<%@page import="javafx.scene.layout.Background"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,rto.bl.*,rto.dto.*"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>DEAL VIEW DETAILS</title>
</head>

<body>
<% if(session.getAttribute("Dealer_user_id")==null)
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
            <td height="138" align="center" valign="middle"   bgcolor="#6CBCE5";><h1 style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif; font-size: xx-large;"><font color="white">DEALER DETAILS</h1></font></td>
            
          </tr>
          <tr>
            <td height="530" align="center" valign="top"><table width="100%" border="0">
              <tbody>
                <tr>
                  <td height="33" align="center" valign="middle" >
                 
                
                  </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle"></td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle" bgcolor="#6CBCE5" style="font-family: Cambria, 'Hoefler Text', 'Liberation Serif', Times, 'Times New Roman', serif; font-weight: bold; font-size: large;"><font color = white>Dealer Details</font> </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle" style="color: #6CBCE5">
                 </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle">
					  <form id="form1" name="form1" method="post">
					  <%
					  	ArrayList<DealerDTO> dealers=DealerBL.getDealers();
					  			  if(dealers!=null &&(dealers.size()>0))
					  			  {
					  %>
					    <table width="80%" border="1" align="center"  bgcolor="#ffffff" bordercolor="#E7BF09" border>
					      <tbody style="">
					        <tr>
					          <td width="11%" height="33" align="center" valign="middle" bgcolor="#6CBCE5" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Company ID</td>
					          <td width="16%" align="center" valign="middle" bgcolor="#6CBCE5"><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Company Name</span></td>
					          <td width="12%" align="center" valign="middle" bgcolor="#6CBCE5"><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Company Email</span></td>
					          <td width="12%" align="center" valign="middle" bgcolor="#6CBCE5" ><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Company Address</span></td>
					          <td width="12%" align="center" valign="middle" bgcolor="#6CBCE5" ><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Company Phone</span></td>
					          <td width="20%" align="center" valign="middle" bgcolor="#6CBCE5"><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Edit</span></td>
					          <td width="18%" align="center" valign="middle" bgcolor="#6CBCE5"><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Delete</span></td>
					          </tr>
					          <%for(DealerDTO dealer:dealers)
					        	  {%>
					        <tr>
					         <td height="30"><%= dealer.getCompany_id() %>&nbsp;</td>
					          <td><%= dealer.getCompany_name() %>&nbsp;</td>
					          <td><%=dealer.getCompany_email()%>&nbsp;</td>
					           <td><%=dealer.getCompany_address()%>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">&nbsp;<%=dealer.getCompany_phone() %></td>
					          
					         
					          <td align="left" valign="middle"><a href="dealer_edit.jsp?company_id=<%=dealer.getCompany_id()%>">Update</a>&nbsp;</td>
					          <td align="left" valign="middle"><a href="dealer_delete.jsp?company_id=<%= dealer.getCompany_id()%>" onclick="return confirm('Are you sure?')">Delete</a>&nbsp;</td>
					          
					          </tr>
					          <%}
					          }
					          else
					          {%>
					          <tr>
					          <td colspan="7">no records found</td>
					          </tr>
					          <%} %>
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
                  <td align="center" valign="middle" bgcolor="#6CBCE5">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center" valign="middle" bgcolor="#6CBCE5">RTOMS &copy;2019</td>
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
