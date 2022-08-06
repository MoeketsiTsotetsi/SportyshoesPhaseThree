<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Users</title>
</head>
<body>
<%@include file="adminnav.jsp" %>
<div class="container">
<h2 class="text-center">All Users</h2>
<table class="table table-striped">
<tr>

<th>Email</th>
<th>Name</th>

<th>Password</th>
<th>Usertype</th>



</tr>
<core:forEach items="${users }" var="u">
<tr>
<td><core:out value="${u.email_Id }"></core:out></td>
<td><core:out value="${u.name }"></core:out></td>
<td><core:out value="${u.password }"></core:out></td>
<td><core:out value="${u.user_Type }"></core:out></td>




</tr>

</core:forEach>

</table>


</div>
</body>
</html>