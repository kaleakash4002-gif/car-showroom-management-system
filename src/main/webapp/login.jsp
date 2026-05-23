<%@ page language="java" %>
<html>
<head>
<title>Login</title>
<link rel="stylesheet"
 href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>

<body class="container mt-5">

<div class="card p-4 col-md-4 mx-auto shadow">
<h3 class="text-center mb-3">Login</h3>

<form action="doLogin" method="post">

<label>Username</label>
<input type="text" name="username" class="form-control mb-3" required>

<label>Password</label>
<input type="password" name="password" class="form-control mb-3" required>

<button type="submit" class="btn btn-primary w-100">Login</button>

</form>

<p class="text-danger text-center mt-2">
${error}
</p>

</div>

</body>
</html>
