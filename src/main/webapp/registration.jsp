<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" 
crossorigin="anonymous">
<link rel="stylesheet" href="./css/loginStyle.css" >
</head>
<body>
<div class="container text-center">
<h2>Please Enter Your Details here</h2>

<form action="signUp" method="post" class="text-center">
 <div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Email address</label>
  <input type="email" class="form-control " id="email" placeholder="name@example.com" name="emailid">
</div>
<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Name</label>
  <input type="text" class="form-control" id="name" name="name">
  
</div>
<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Password</label>
  <input type="password" class="form-control" id="password" name="password">
  
</div>

  
  
  
  <div class="col-12">
    <button type="submit" class="btn btn-primary">Register</button> &nbsp;
    <a href="index.jsp" class="btn btn-primary">Login</a>
  </div>
  
  <label for="exampleFormControlInput1" class="form-label">${msg}</label>
</form>



</div>
</body>
</html>