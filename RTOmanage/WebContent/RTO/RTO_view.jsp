

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
                  <td height="33" align="center" valign="middle"><%@include file="../includes/menu.jsp" %> </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle" style="font-family: Cambria, 'Hoefler Text', 'Liberation Serif', Times, 'Times New Roman', serif; font-weight: bold; font-size: large;">View your profile</td>
                </tr>
                
                <tr>
                  <td height="33" align="center" valign="middle" style="color: #F70509">
                  <%!
                RtoDTO rto=null;
                  ArrayList<RtoDTO> rtos=null;
 
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
 <form id="form1" name="form1" method="get" action="RTO_detail_page.jsp" onsubmit="return validate();">
   <table width="70%" border="0">
     <tbody>
       <tr>
         <td width="11%" height="30">&nbsp;</td>
         
         
         <td width="10%" align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">RTO REGISTRATION ID</td>
         <td width="10%" align="left" valign="middle">
         
         		<%
                  	rtos=RtoBL.getRtos();
                           if(rtos!=null)
                           {
                  %>
         
         
			<select id = "slUID" name="slUID">          
			<%
			   for(RtoDTO rto: rtos)
			   {      
			%>
			<option value='<%=rto.getU_id() %>'><%=rto.getU_id() %>
			</option>
			<%
			   }

 }
 else
 {
 %>
       <tr><td>There is no such user</td></tr>
       </tbody>
       </table>
 <%
 }
 %>
             
</select>
           
       <td  width="10%" align="left" valign="middle" ><button>Go</button></td>
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