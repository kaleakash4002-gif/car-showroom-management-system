<%@ page import="java.util.*,com.MainApp.Entity.Booking,com.MainApp.Entity.Car,com.MainApp.Entity.Customer" %>
<%@ page language="java" %>
<html>
<head>
<title>Edit Booking</title>
<link rel="stylesheet"
 href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="container mt-4">
	<%@ include file="navbar.jsp" %>

<h2>Edit Booking</h2>

<form action="${pageContext.request.contextPath}/updateBooking" method="post">

<input type="hidden" name="id" value="<%=((Booking)request.getAttribute("booking")).getId()%>">

Car:
<select name="carId" class="form-control">
<%
List<Car> cars = (List<Car>)request.getAttribute("cars");
Booking b = (Booking)request.getAttribute("booking");
for(Car c : cars){
    String selected = (c.getId() == b.getCar().getId()) ? "selected" : "";
%>
<option value="<%=c.getId()%>" <%=selected%>><%=c.getBrand()%> - <%=c.getModel()%></option>
<% } %>
</select>

Customer:
<select name="customerId" class="form-control">
<%
List<Customer> customers = (List<Customer>)request.getAttribute("customers");
for(Customer cu : customers){
    String selected = (cu.getId() == b.getCustomer().getId()) ? "selected" : "";
%>
<option value="<%=cu.getId()%>" <%=selected%>><%=cu.getName()%></option>
<% } %>
</select>

<br>
<button class="btn btn-success">Update</button>
<a href="viewBookings" class="btn btn-secondary">Back</a>

</form>

</body>
</html>
