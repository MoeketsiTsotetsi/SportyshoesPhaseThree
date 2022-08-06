<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Here</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" 
crossorigin="anonymous">
<link rel="stylesheet" href="./css/loginStyle.css" >
</head>
<body>

<div class="container text-center">
<h2>Login Here</h2>

<form action="signIn" method="post" class="text-center">
 <div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Email address</label>
  <input type="email" class="form-control " id="email" placeholder="name@example.com" name="emailid">
</div>
<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Password</label>
  <input type="password" class="form-control" id="password" name="password">
  
</div>
  
  
  
  <div class="col-12">
    <button type="submit" class="btn btn-primary">Sign in</button> &nbsp;
    <a href="registration.jsp" class="btn btn-primary">Register</a>
  </div>
  
  <label for="exampleFormControlInput1" class="form-label">${msg}</label>
</form>



</div>

</body>
</html>