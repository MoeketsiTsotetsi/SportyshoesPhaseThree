<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" 
crossorigin="anonymous">
<link rel="stylesheet" href="./css/adminStyle.css">
</head>
<body>
<%@include file="adminnav.jsp" %>

<div class="container text-center">
<h2> Enter Product Details here</h2>

<form action="addProduct" method="post" class="text-center">
 <div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Product Name</label>
  <input type="text" class="form-control " id="p_name"  name="p_name">
</div>

<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Price</label>
  <input type="number" class="form-control" id="price" name="price">
  
</div>
<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Quantity</label>
  <input type="number" class="form-control" id="quantity" name="quantity">
  
</div>
<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">URL</label>
  <input type="text" class="form-control" id="url" name="url">
  
</div>
<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Category</label>
  <input type="text" class="form-control" id="category" name="category">
  
</div>

  
  
  
  <div class="col-12">
    <button type="submit" class="btn btn-primary">Add Product</button> 
  </div>
  
  <label for="exampleFormControlInput1" class="form-label">${msg}</label>
</form>



</div>

</body>
</html>