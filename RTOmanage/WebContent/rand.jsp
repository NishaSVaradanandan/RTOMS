<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>  
  
  function PMGenerate(max, min)
  {
	  int y;
	  double x;
	  x=Math.floor(Math.random() * (max - min) + min); 
	  y=(int)x;
	  return y;
  }
	  
</script>    
</head>
<body>
<%!int y;double x,max=9999,min=0001;%>
<%
	x=Math.floor(Math.random() * (max - min) + min); 
	y=(int)x;
%>
 application no: <input type="text" value="KL 01 A<%=y%>">
 name:<input id="pm" type="text" value=""><button onclick="PMGenerate(9999,0001);">Generate</button>

</body>
</html>
