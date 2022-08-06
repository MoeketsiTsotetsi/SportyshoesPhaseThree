<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" 
crossorigin="anonymous">
<link rel="stylesheet" href="./css/orderStyle.css">
</head>
<body>
<%@include file="homenav.jsp" %>

<div class="container text-center">

<div class="card" style="width: 18rem;">
  <img src="${product.url }" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">${product.p_name }</h5>
    <h5 class="card-title">Product: No:${product.p_id }</h5>
    
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">R ${product.price }</li>
    <li class="list-group-item"> ${product.qty } items left</li>
    
  </ul>
  
</div>
<form action="saveOrder" method="post">


<label>Product No</label> <br>
<input type="text" name="pid"> <br> <br>
<label>Quantity</label> <br>
<input type="text" name="quantity"> <br> <br>
<label>Email</label> <br>
<input type="text" name="email"> <br> <br>

<input class="btn btn-outline-primary" type="submit" value="Order Item(s)"> <br>
<label>${msg }</label>
</form>

</div>

</body>
</html>