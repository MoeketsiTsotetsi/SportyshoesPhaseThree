<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" 
crossorigin="anonymous">
<link rel="stylesheet" href="./css/homeStyle.css">
</head>
<body>
<ul class="nav justify-content-center bg-dark">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="home.jsp">Home</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="getProducts">Products</a>
  </li>
  
  <li class="nav-item">
    <a class="nav-link" href="viewOrders.jsp">Order History</a>
  </li>
  <li class="nav-item">
    <label class="txtUsername nav-link">User:${uname }</label>
  </li>
  
  <li class="nav-item">
    <a class="nav-link" href="index.jsp">Logout</a>
  </li>
  
 
 
  
</ul>

</body>
</html>