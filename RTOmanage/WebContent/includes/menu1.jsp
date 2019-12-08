<!DOCTYPE html>
<html>
<head>
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color:blue;
  
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: red;
}

.active {
  background-color: #E7BF09;
  #4CAF50
}
</style>
</head>
<body>

<ul>
  <li><a class="active" href="student_view_all.jsp">Home</a></li>
  <li><a href="student_insert.jsp">New Student</a></li>
  <li><a href="student_view.jsp">View Student</a></li>
  <li><a href="../authentication/logout.jsp">Logout</a></li>
</ul>

</body>
</html>