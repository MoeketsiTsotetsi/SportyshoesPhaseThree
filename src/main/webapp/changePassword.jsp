<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change your password</title>
</head>
<body>
<%@include file="adminnav.jsp" %>
<div class="container text-center">
<h2> Enter New Password</h2>

<form action="changePassword" method="post" class="text-center">
 <div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Email</label>
  <input type="email" class="form-control " id="emailid"  name="emailid">
</div>
 <div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">New Password</label>
  <input type="password" class="form-control " id="password"  name="password">
</div>





  
  
  
  <div class="col-12">
    <button type="submit" class="btn btn-primary">Change Password</button> 
  </div>
  
  <label for="exampleFormControlInput1" class="form-label">${msg}</label>
</form>



</div>
</body>
</html>