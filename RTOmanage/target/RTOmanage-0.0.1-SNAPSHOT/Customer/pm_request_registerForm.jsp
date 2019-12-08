<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css1/pm_request.css" >
</head>
<body>

 <tr>
            <td height="138" align="center" valign="middle" bgcolor="#E7BF09"><h1 style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif; font-size: xx-large;">RTO MANAGEMENT SYSTEM </h1></td>
          </tr>
<td height="33" align="center" valign="middle"><%@include file="../includes/CusHomeNav.jsp" %> </td>
    <div class="container">
      <h1>Permenant number request form</h1>
      <p>Please fill in this form to submit your application for permanent number</p>
      <hr>
      <form action="pm_request_register_process.jsp">
      <label for="appNo"><b>Application number</b></label>
      <input type="text" placeholder="Enter your Application numberl" name="appNo" required>

      <label for="temp_no"><b>Temporary number</b></label>
      <input type="text" placeholder="Enter your Temporary number" name="temp_no" required>

      <label for="cus_name"><b>customer name</b></label>
      <input type="text" placeholder="Enter your name" name="cus_name" required>
      
      <label for="tp_allot_date"><b>Temporary number allot date &nbsp;&nbsp;</b></label></br>
      <input type="date" name="tp_allot_date" required></br>
      
      <label for="chassis_no"><b>chassis number</b></label>
      <input type="text" placeholder="Enter your name" name="chassis_no" required>
       
	  <input type="hidden" name="txtStatus" id="txtStatus" value="0">
				
      
      
      
        <button type="submit" class="signupbtn">Submit</button>
      </div>
      </form>
    </div>
  </form>
</div>
</body>
</html>
