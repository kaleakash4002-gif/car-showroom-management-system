<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp" %>

<html>
<head>
    <title>Add Customer</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="bg-light">

<div class="container">
    <div class="card p-4 shadow mt-5 mx-auto" style="max-width: 400px;">
        <h3 class="text-center mb-4">Add Customer</h3>
        <form action="${pageContext.request.contextPath}/saveCustomer" method="post">
            
            <div class="mb-3">
                <label for="name" class="form-label">Name:</label>
                <input type="text" name="name" id="name" class="form-control" required>
            </div>
            
            <div class="mb-3">
                <label for="mobile" class="form-label">Mobile:</label>
                <input type="text" name="mobile" id="mobile" class="form-control" required>
            </div>
            
            <button type="submit" class="btn btn-primary w-100 mb-2">Save</button>
            <a href="viewCustomers" class="btn btn-success w-100">View Customers</a>
        </form>
    </div>
</div>

</body>
</html>
