<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SmartTech Bank</title>
<style>
body {
  background-image:url('images/backbank1.jpg');
 background-size: cover;
 background-repeat: no-repeat;
background-attachment: fixed;
}
.navbar-brand img {
  margin-right: 10px;
}
.navbar-dark .navbar-brand {
  font-size: 1.5rem;
  font-weight: bold;
  color: #fff;
}
.navbar-dark .nav-link {
  color: white; 
  font-size: 1rem;
  margin-right: 15px;
}
.navbar-dark .nav-link:hover {
  background-color: #007bff;
  text-decoration: underline;
}
.container h2 {
  font-size: 2rem;
  font-weight: bold;
  color: #007bff; 
  text-align: center;
  margin-bottom: 20px;
}
.container p {
  font-size: 1.2rem;
  color: #495057; 
  text-align: center;
  line-height: 1.6;
  border: 2px solid #007bff; 
  padding: 15px;
  border-radius: 8px; 
  background-color: #e9ecef; 
  display: inline-block;
  margin: 20px auto;
}
button {
  display: block;
  margin: 20px auto; 
  padding: 12px 24px;
  background-color: #007bff; 
  color: #fff; 
  font-size: 1rem;
  font-weight: bold;
  border: none;
  border-radius: 8px;
  cursor: pointer;
  transition: background-color 0.3s ease, transform 0.2s ease;
}
button:hover {
  background-color: #007bff; 
  transform: scale(1.05); 
}
button:active {
  background-color: #007bff; 
  transform: scale(1); 
}
marquee {
  font-size: 1.2rem;
  color: #007bff; 
  font-weight: bold;
  margin-top: 20px;
}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
      <img src="images/bankicon.png" width="40" height="40" alt="Bank Icon">
      SmartTech Bank
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="aboutUs.jsp">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="createAccount.jsp">Saving Account</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="dashboard.jsp">DashBoard</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="loanInformation.jsp">Apply loans</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="fdDetails.jsp">Fixed Deposits</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="contact.jsp">Contact Us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Logout.jsp">Logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<div class="container mt-4">
  <h2>Welcome to SmartTech Bank</h2>
  <p>
    Congratulations on successfully logging into your account. We are committed to providing you with a seamless and secure banking experience tailored to meet all your financial needs.
  </p>
  <marquee behavior="scroll" direction="left">
    Welcome to SmartTech Bank! Your trusted partner for secure and innovative banking solutions.
  </marquee>
  <button onclick="window.location.href='createAccount.jsp'">Create New Account</button>
</div>
</body>
</html>
