<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All Orders</title>
</head>
<body>
<%@include file="adminnav.jsp" %>
<div class="container">
<h2 class="text-center">All Orders</h2>
<table class="table table-striped">
<tr>
<th>Order ID</th>
<th>Quantity</th>
<th>Order Date</th>
<th>Status</th>
<th>Product ID</th>
<th>Email ID</th>


</tr>
<core:forEach items="${orders }" var="o">
<tr>
<td><core:out value="${o.order_Id }"></core:out></td>
<td><core:out value="${o.quantity }"></core:out></td>
<td><core:out value="${o.date }"></core:out></td>

<td><core:out value="${o.status }"></core:out></td>
<td><core:out value="${o.pro_id }"></core:out></td>
<td><core:out value="${o.eid }"></core:out></td>

</tr>

</core:forEach>

</table>


</div>
</body>
</html>