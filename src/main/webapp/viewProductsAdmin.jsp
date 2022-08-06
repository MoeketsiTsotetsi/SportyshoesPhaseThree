<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Products</title>
</head>
<body>
<%@include file="adminnav.jsp" %>
<div class="container">
<h2 class="text-center">All The Products</h2>
<table class="table table-striped">
<tr>
<th>P ID</th>
<th>Name</th>
<th>Price</th>
<th>Quantity</th>
<th>Category</th>


</tr>
<core:forEach items="${list }" var="product">
<tr>
<td><core:out value="${product.p_id }"></core:out></td>
<td><core:out value="${product.p_name }"></core:out></td>
<td><core:out value="${product.price }"></core:out></td>

<td><core:out value="${product.qty }"></core:out></td>
<td><core:out value="${product.category }"></core:out></td>

</tr>

</core:forEach>

</table>


</div>
</body>
</html>