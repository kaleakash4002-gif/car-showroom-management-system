<%@ page import="com.MainApp.Entity.Car" %>
<%@ page language="java" %>
<html>
<head>
<title>Edit Car</title>
<link rel="stylesheet"
 href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="container mt-4">
	<%@ include file="navbar.jsp" %>

<h2>Edit Car</h2>

<form action="${pageContext.request.contextPath}/updateCar" method="post">

    ID:
    <input type="text" name="id" class="form-control" value="<%= ((Car)request.getAttribute("car")).getId() %>" readonly>

    Brand:
    <input type="text" name="brand" class="form-control" value="<%= ((Car)request.getAttribute("car")).getBrand() %>" required>

    Model:
    <input type="text" name="model" class="form-control" value="<%= ((Car)request.getAttribute("car")).getModel() %>" required>

    Price:
    <input type="number" step="0.01" name="price" class="form-control" value="<%= ((Car)request.getAttribute("car")).getPrice() %>" required>

    <br>
    <button class="btn btn-success">Update</button>
    <a href="viewCars" class="btn btn-secondary">Back</a>

</form>

</body>
</html>
