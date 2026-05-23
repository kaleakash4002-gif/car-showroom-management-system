<%@ page import="java.util.*,com.MainApp.Entity.Booking" %>
<%@ page language="java" %>
<html>
<head>
<title>View Bookings</title>
<link rel="stylesheet"
 href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="container mt-4">
	<%@ include file="navbar.jsp" %>

<h2>All Bookings</h2>

<table class="table table-bordered table-striped">
<tr>
<th>ID</th><th>Car</th><th>Customer</th><th>Actions</th>
</tr>

<%
List<Booking> list = (List<Booking>)request.getAttribute("list");
for(Booking b : list){
%>
<tr>
<td><%=b.getId()%></td>
<td><%=b.getCar().getBrand() + " - " + b.getCar().getModel()%></td>
<td><%=b.getCustomer().getName()%></td>
<td>
    <a href="editBooking/<%=b.getId()%>" class="btn btn-warning btn-sm">Edit</a>
    <a href="deleteBooking/<%=b.getId()%>" class="btn btn-danger btn-sm">Delete</a>
</td>
</tr>
<% } %>
</table>

<a href="book" class="btn btn-primary">Add New Booking</a>

</body>
</html>
