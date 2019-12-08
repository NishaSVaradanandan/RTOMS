<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,rto.dl.*,rto.dto.*,rto.bl.*"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>RTO Management System</title>



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
            <td height="138" align="center" valign="middle" bgcolor="lightBlue"><h1 style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif; font-size: xx-large;">RTO MANAGEMENT SYSTEM</h1></td>
          </tr>
          <tr>
            <td height="530" align="center" valign="top"><table width="100%" border="0">
              <tbody>
                <tr>
                  <td height="33" align="center" valign="middle">
 				<%@ include file="../includes/menu.jsp" %>
                  
                  
                  </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle" style="font-family: Cambria, 'Hoefler Text', 'Liberation Serif', Times, 'Times New Roman', serif; font-weight: bold; font-size: large;">RTO Details Edit</td>
                </tr>
                <tr>
                   <%!
                   int role;
                   String u_name, u_id,u_email,phone,address;
                 
                   String message="";
                 
                   RtoDTO rto=null;
                   int result=0;
                   %>
                   <%
                   if(session.getAttribute("message")!=null)
                   {
                   out.println( (String)session.getAttribute("message") );
                   session.removeAttribute("message");
                   }
                   %>
                   
                  <p> <%=message %></p>
                   
                     <form method="POST" class="register-form" id="register-form" action="Rto_update.jsp" onsubmit="return validate();" >
                     <%
 						 u_id=request.getParameter("u_id");
                     
              	   		rto=RtoBL.getRto(u_id);
 						 
 						
 						if(rto!=null)
 						 {
 						 
 						 %>
                   
                
                   
                   
                  <td height="33" align="center" valign="middle" style="color: #F70509">
                  <%=message %>
                  
                  </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle">
					  <form  method="post" onsubmit="return validate();" >
					    <table width="100%" border="0">
					      <tbody>
					        <tr>
					          <td width="11%" height="30">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          <td width="17%" align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">RTO REGISTRATION ID</td>
					          <td width="1%">&nbsp;</td>
					          <td width="16%" align="left" valign="middle">
					            <input type="text" name="txtuID" id="txtuID" value="<%=rto.getU_id() %>" readOnly="true"></td>
					         
					          <td width="2%">&nbsp;</td>
					          <td width="2%">&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">RTO Name</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" name="txtRTOName" id="txtRTOName" value='<%=rto.getU_name()%>'></td>
					          
					          </td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">RTO EMAIL				          </td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" name="txtUemail" value='<%=rto.getU_email()%>' id="txtUemail"></td>
					          
					          </td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">RTO ADDRESS</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" name="txtaddr" value='<%=rto.getAddress()%>' id="txtaddr"></td>
					          
					          </td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					           <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
	
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="hidden" name="txtrole" value='<%=rto.getRole()%>' id="txtrole"></td>
					          
					          </td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					         <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">RTO ADDRESS</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" name="txtphone" value='<%=rto.getPhone()%>' id="txtphone"></td>
					          
					          </td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					          
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="submit" name="submit" id="submit" value="UPDATE"></td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					   
					          <td>&nbsp;</td>
					          </tr>
					        </tbody>
					      </table>
						  
						  
                      </form></td>
                      
                </tr>
                <%
					          
					  }
					  else
					  {
						  %>
						 
						  <h3>No RTO Details Found!!</h3>
						  
						 <%  
					  }
					  %> 
                
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
                  <td align="center" valign="middle" bgcolor="lightBlue">RTOMS &copy;2019</td>
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
