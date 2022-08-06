<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Products</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" 
crossorigin="anonymous">
<link rel="stylesheet" href="./css/productsStyle.css">
</head>
<body>
<%@include file="homenav.jsp" %>
<div class="container card-columns">
<div class="row">
<core:forEach items="${requestScope.list }" var="p">

<div class="card" style="width: 18rem;">
  <img src="${p.url }" class="card-img-top" alt="..." >
  <div class="card-body">
    <h5 class="card-title">${p.p_name }</h5>
    
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">R ${p.price }</li>
    <li class="list-group-item">${p.category }</li>
    
  </ul>
  <div class="card-body">
    <a href="buyProduct?pid=${p.p_id }" class="btn btn-outline-primary">Buy Product</a>
    
  </div>
</div>

</core:forEach>

</div>

</div>

</body>
</html>