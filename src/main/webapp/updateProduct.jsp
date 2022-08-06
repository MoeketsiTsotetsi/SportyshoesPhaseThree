<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Product</title>
</head>
<body>
<%@include file="adminnav.jsp" %>

<div class="container text-center">
<h2> Enter New Product Details here</h2>

<form action="updateProduct" method="post" class="text-center">
 <div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Product ID</label>
  <input type="text" class="form-control " id="p_id"  name="p_id">
</div>

<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Price</label>
  <input type="number" class="form-control" id="price" name="price">
  
</div>


  
  
  
  <div class="col-12">
    <button type="submit" class="btn btn-primary">Update Product</button> 
  </div>
  
  <label for="exampleFormControlInput1" class="form-label">${msg}</label>
</form>



</div>
</body>
</html>