<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,rto.dl.*,rto.dto.*,rto.bl.*,java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
  body {
        color: #566787;
background-image: url("./images/images8.jpg");
background-repeat: no-repeat;
background-size: cover;
font-family: 'Varela Round', sans-serif;
font-size: 13px; 
}
.table-wrapper {
        background: #fff;
        padding: 20px 25px;
        margin: 30px 0;
border-radius: 3px;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
.table-title {        
padding-bottom: 15px;
background: #435d7d;
color: #fff;
padding: 16px 30px;
margin: -20px -25px 10px;
border-radius: 3px 3px 0 0;
    }
    .table-title h2 {
margin: 5px 0 0;
font-size: 24px;
text-align: center;
}
.table-title .btn-group {
float: right;
padding: 2 10px;

}
.table-title .btn {
color: #fff;
float: right;
font-size: 13px;
border: none;
min-width: 50px;
border-radius: 2px;
border: none;
outline: none !important;
margin-left: 10px;
}
.table-title .btn i {
float: left;
font-size: 21px;
margin-right: 5px;
}
.table-title .btn span {
float: left;
margin-top: 2px;
}
    table.table tr th, table.table tr td {
        border-color: #e9e9e9;
padding: 12px 15px;
vertical-align: middle;
    }
table.table tr th:first-child {
width: 60px;
}
table.table tr th:last-child {
width: 100px;
}
    table.table-striped tbody tr:nth-of-type(odd) {
    background-color: #fcfcfc;
}
table.table-striped.table-hover tbody tr:hover {
background: #f5f5f5;
}
    table.table th i {
        font-size: 13px;
        margin: 0 5px;
        cursor: pointer;
    }
    table.table td:last-child i {
opacity: 0.9;
font-size: 22px;
        margin: 0 5px;
    }
table.table td a {
font-weight: bold;
color: #566787;
display: inline-block;
text-decoration: none;
outline: none !important;
}
table.table td a:hover {
color: #2196F3;
}
table.table td a.edit {
        color: #FFC107;
    }
    table.table td a.delete {
        color: #F44336;
    }
    table.table td i {
        font-size: 19px;
        width=50%;
    }
table.table .avatar {
border-radius: 50%;
vertical-align: middle;
margin-right: 10px;
}
    .pagination {
        float: right;
        margin: 0 0 5px;
    }
    .pagination li a {
        border: none;
        font-size: 13px;
        min-width: 30px;
        min-height: 30px;
        color: #999;
        margin: 0 2px;
        line-height: 30px;
        border-radius: 2px !important;
        text-align: center;
        padding: 0 6px;
    }
    .pagination li a:hover {
        color: #666;
    }
    .pagination li.active a, .pagination li.active a.page-link {
        background: #03A9F4;
    }
    .pagination li.active a:hover {        
        background: #0397d6;
    }
.pagination li.disabled i {
        color: #ccc;
    }
    .pagination li i {
        font-size: 16px;
        padding-top: 6px
    }
    .hint-text {
        float: left;
        margin-top: 10px;
        font-size: 13px;
    }    

/* Modal styles */
.modal .modal-dialog {
max-width: 400px;
}
.modal .modal-header, .modal .modal-body, .modal .modal-footer {
padding: 20px 30px;
}
.modal .modal-content {
border-radius: 3px;
}
.modal .modal-footer {
background: #ecf0f1;
border-radius: 0 0 3px 3px;
}
    .modal .modal-title {
        display: inline-block;
    }
.modal .form-control {
border-radius: 2px;
box-shadow: none;
border-color: #dddddd;
}
.modal textarea.form-control {
resize: vertical;
}
.modal .btn {
border-radius: 2px;
min-width: 100px;
}
.modal form label {
font-weight: normal;
}
</style>

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
      <td height="684" align="WebContent/Dealer_view.jsp" center valign="top"><table width="100%" border="0">
        <tbody>
          <tr>
            <td height="138" align="center" valign="middle" bgcolor="#566787"><h1 style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif; font-size: xx-large;color:white">RTO MANAGEMENT SYSTEM</h1></td>
          </tr>
          <tr>
                  <td height="33" align="center" valign="middle"><%@include file="../includes/dealerHomeNav.jsp" %> </td>
          </tr>
          <tr>
            <td height="530" align="center" valign="top"><table width="100%" border="0">
              <tbody>
                <tr>
                  <td height="33" align="center" valign="middle">
                
                  </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle" style="font-family: Cambria, 'Hoefler Text', 'Liberation Serif', Times, 'Times New Roman', serif; font-weight: bold; font-size: large;">View your profile</td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle" style="color: #F70509">
                  <%!
                DealerDTO dealer=null;
                  ArrayList<DealerDTO> dealers=null;
 
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
 <form id="form1" name="form1" method="post" action="dealer_view_single.jsp" onsubmit="return validate();">
   <table width="100%" border="0">
     <tbody>
       <tr>
         <td width="11%" height="30">&nbsp;</td>
         <td width="11%">&nbsp;</td>
         <td width="11%"></td>
         <td width="18%" align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">SHOWROOM REGISTRATION ID</td>
         <td width="10%" align="left" valign="middle">
         
         <%
                  	dealers=DealerBL.getDealers();
                           if(dealers!=null)
                           {
                  %>
         
         
<select id = "Company_id" name="Company_id">          
<%
   for(DealerDTO dealer: dealers)
   {      
%>
<option value='<%=dealer.getCompany_id() %>'><%=dealer.getCompany_id() %>
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
           
         <td><button>Go</button></td>
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
                  <td align="center" valign="middle" bgcolor="#566787">RTOMS &copy;2018</td>
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