<%@ page import="java.util.*,com.MainApp.Entity.Customer" %>
<%@ page language="java" %>
<html>
<head>
<title>View Customers</title>
<link rel="stylesheet"
 href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="container mt-4">
	<%@ include file="navbar.jsp" %>

<h2>All Customers</h2>

<table class="table table-bordered table-striped">
<tr>
<th>ID</th><th>Name</th><th>Mobile</th><th>Actions</th>
</tr>

<%
List<Customer> list = (List<Customer>)request.getAttribute("list");
for(Customer c : list){
%>
<tr>
<td><%=c.getId()%></td>
<td><%=c.getName()%></td>
<td><%=c.getMobile()%></td>
<td>
    <a href="editCustomer/<%=c.getId()%>" class="btn btn-warning btn-sm">Edit</a>
    <a href="deleteCustomer/<%=c.getId()%>" class="btn btn-danger btn-sm">Delete</a>
</td>
</tr>
<% } %>
</table>

<!-- Existing -->
<a href="addCustomer" class="btn btn-primary">Add New Customer</a>

<!-- 🔽 NEW BUTTON -->
<a href="book" class="btn btn-success ms-2">
    Go To Booking
</a>


</body>
</html>
