<%@ page import="com.MainApp.Entity.Customer" %>
<%@ page language="java" %>
<html>
<head>
<title>Edit Customer</title>
<link rel="stylesheet"
 href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="container mt-4">
	<%@ include file="navbar.jsp" %>

<h2>Edit Customer</h2>

<form action="${pageContext.request.contextPath}/updateCustomer" method="post">

    ID:
    <input type="text" name="id" class="form-control" value="<%= ((Customer)request.getAttribute("customer")).getId() %>" readonly>

    Name:
    <input type="text" name="name" class="form-control" value="<%= ((Customer)request.getAttribute("customer")).getName() %>" required>

    Mobile:
    <input type="text" name="mobile" class="form-control" value="<%= ((Customer)request.getAttribute("customer")).getMobile() %>" required>

    <br>
    <button class="btn btn-success">Update</button>
    <a href="viewCustomers" class="btn btn-secondary">Back</a>

</form>
</body>
</html>
