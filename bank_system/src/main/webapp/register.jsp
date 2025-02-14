<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<style>
body {
  background-image: url('images/registerbank1.jpg');
  background-size: cover;
  background-position: center;
  font-family: 'Arial', sans-serif;
  margin: 0;
  padding: 0;
  color: #333;
}

.navbar {
  padding: 1rem;
}

.navbar-brand {
  font-size: 1.8rem;
  font-weight: bold;
  color: #ffffff;
  display: flex;
  align-items: center;
}

.navbar-brand img {
  margin-right: 10px;
  border-radius: 50%;
  border: 2px solid #fff;
}

.container {
  margin-top: 5%;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
}

form {
  background: #ffffff;
  padding: 30px;
  border: 1px solid #dee2e6;
  border-radius: 10px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
  width:400px;
  height:450px;
  right:500px;
  position:relative;
}

h2 {
  color: #333;
  font-size: 1.8rem;
  text-align: center;
  margin-bottom: 20px;
  right:520px;
  position:relative;
}

input.form-control {
  border-radius: 8px;
  border: 1px solid #ced4da;
  padding: 10px;
  font-size: 1rem;
  transition: border-color 0.3s ease, box-shadow 0.3s ease;
}

input.form-control:focus {
  border-color: #007bff;
  box-shadow: 0 0 8px rgba(0, 123, 255, 0.5);
  outline: none;
}

button.btn-primary {
  background-color: #007bff;
  border: none;
  padding: 12px;
  font-size: 1rem;
  font-weight: bold;
  border-radius: 8px;
  transition: background-color 0.3s ease, transform 0.2s ease;
}

button.btn-primary:hover {
  background-color: #0056b3;
  transform: scale(1.05);
}

a {
  color: #007bff;
  text-decoration: none;
  font-size: 0.9rem;
  display: block;
  margin-top: 10px;
  text-align: center;
  
  }

a:hover {
  text-decoration: underline;
}

.text-danger {
  font-weight: bold;
  font-size: 0.9rem;
  color: #dc3545;
  text-align: center;
  margin-top: 10px;
}

</style>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="border">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
      <img src="images/bankicon.png" alt="logo"width="40" height="40">
      SmartTechBank
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
      </ul>
    </div>
  </div>
</nav> 

<div class="container mt-5">
  <div class="row justify-content-center">
    <div class="col-md-6">
      <h2 class="text-center mb-4">Register</h2>
      <form action="RegisterServlet" method="post" class="bg-light p-4 rounded shadow">
        <div class="mb-3">
          <label for="username" class="form-label">UserName</label>
          <input type="text" id="username" name="username" class="form-control" required>
        </div>
        <div class="mb-3">
          <label for="password" class="form-label">Password</label>
          <input type="password" id="password" name="password" class="form-control" required>
        </div>
        <div class="mb-3">
          <label for="email" class="form-label">Email</label>
          <input type="email" id="email" name="email" class="form-control" required>
        </div>
        <button type="submit" class="btn btn-primary w-100">Register</button>
        <p><a href="login.jsp">Login</a></p>
      </form>
      
      <% 
          String error = request.getParameter("error");
          if (error != null) {
      %>
      <p class="text-danger text-center mt-3"><%= error %></p>
      <% } %>
    </div>
  </div>
</div>
</div>
</body>
</html>