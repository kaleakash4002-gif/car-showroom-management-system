<%@ page import="java.util.*,com.MainApp.Entity.Car" %>
<%@ page language="java" %>
<html>
<head>
<title>View Cars</title>
<link rel="stylesheet"
 href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="container mt-4">
	<%@ include file="navbar.jsp" %>

<h2>All Cars</h2>

<table class="table table-bordered table-striped">
<tr>
<th>ID</th><th>Brand</th><th>Model</th><th>Price</th><th>Actions</th>
</tr>

<%
List<Car> list = (List<Car>)request.getAttribute("list");
for(Car c : list){
%>
<tr>
<td><%=c.getId()%></td>
<td><%=c.getBrand()%></td>
<td><%=c.getModel()%></td>
<td><%=c.getPrice()%></td>
<td>
    <a href="editCar/<%=c.getId()%>" class="btn btn-warning btn-sm">Edit</a>
    <a href="deleteCar/<%=c.getId()%>" class="btn btn-danger btn-sm">Delete</a>
</td>
</tr>
<% } %>
</table>

<!-- Existing -->
<a href="/" class="btn btn-primary">Add New Car</a>



</body>
</html>
