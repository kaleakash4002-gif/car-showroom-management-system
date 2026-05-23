<%@ page language="java" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="navbar.jsp" %>

<html>
<head>
    <title>Add Car</title>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="bg-light">

<div class="container">
    <div class="card p-4 shadow mx-auto" style="max-width: 500px; margin-top: 50px;">
        <h2 class="text-center mb-3">Add Car</h2>
        <form action="saveCar" method="post">
            <div class="mb-3">
                <label for="brand" class="form-label">Brand:</label>
                <input type="text" id="brand" name="brand" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="model" class="form-label">Model:</label>
                <input type="text" id="model" name="model" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="price" class="form-label">Price:</label>
                <input type="number" id="price" name="price" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-primary w-100 mb-2">Save</button>
            <a href="viewCars" class="btn btn-success w-100">View Cars</a>
        </form>
    </div>
</div>

</body>
</html>
