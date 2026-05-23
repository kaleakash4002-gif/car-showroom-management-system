<%@ page import="java.util.*,com.MainApp.Entity.Car,com.MainApp.Entity.Customer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book a Car</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="bg-light">

<div class="container">
    <div class="card shadow mt-5 mx-auto" style="max-width: 500px;">
        <div class="card-body">
            <h3 class="card-title text-center mb-4">Book a Car</h3>
            <form action="${pageContext.request.contextPath}/saveBooking" method="post">
                
                <div class="mb-3">
                    <label for="carId" class="form-label">Car</label>
                    <select name="carId" id="carId" class="form-control" required>
                        <%
                            List<Car> cars = (List<Car>) request.getAttribute("cars");
                            for (Car c : cars) {
                        %>
                        <option value="<%=c.getId()%>"><%=c.getBrand()%> - <%=c.getModel()%></option>
                        <% } %>
                    </select>
                </div>
                
                <div class="mb-3">
                    <label for="customerId" class="form-label">Customer</label>
                    <select name="customerId" id="customerId" class="form-control" required>
                        <%
                            List<Customer> customers = (List<Customer>) request.getAttribute("customers");
                            for (Customer cu : customers) {
                        %>
                        <option value="<%=cu.getId()%>"><%=cu.getName()%></option>
                        <% } %>
                    </select>
                </div>
                
                <button type="submit" class="btn btn-primary w-100 mb-2">Book</button>
                <a href="viewBookings" class="btn btn-success w-100">View Bookings</a>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
